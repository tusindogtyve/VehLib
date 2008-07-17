!
interface dialog_box create  &
   dialog_box_name = .SauerDanfoss.dboxes.dbox_flexbeam  &
   location = 944.0, 59.0  &
   height = 226.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_flexbeam"  &
   iconifiable = no  &
   start_commands = "int field set field=$_self.field_6 string=(eval(db_default( .system_defaults, \\\"model\\\")))"  &
   execution_commands = "! Two markers, one in each end of the beam, are created:",  &
                        "",  &
                        "marker cre marker= (ground//\".\"//\"Mkr_$'field_1'_Master\") &",  &
                        "    location=0.0, 0.0, 0.0 &",  &
                        "    orientation=180.0, 90.0, 180.0",  &
                        "",  &
                        "marker cre marker= (ground//\".\"//\"Mkr_$'field_1'_Slave\") &",  &
                        "    location = (LOC_RELATIVE_TO( {1,0,0} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0,0} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") ))",  &
                        "",  &
                        "marker mod marker= (ground//\".\"//\"Mkr_$'field_1'_Master\") &",  &
                        "    orientation = (ORI_ALONG_AXIS((ground//\".\"//\"Mkr_$'field_1'_Master\") , (\"$field_6\" //\".\"// \"ground\" //\".\"//\"Mkr_$'field_1'_Slave\") , \"x\"))",  &
                        "",  &
                        "",  &
                        "if condition=(db_exists(\"DV_$'field_1'_height\"))",  &
                        "var mod var = $field_6.DV_$'field_1'_length real = ((DM( eval(\"Mkr_$'field_1'_Master\"),eval(\"Mkr_$'field_1'_Slave\")))/$field_2)",  &
                        "var mod var = $field_6.DV_$'field_1'_height real = $field_3",  &
                        "var mod var = $field_6.DV_$'field_1'_width real = $field_4",  &
                        "var mod var = $field_6.DV_$'field_1'_thickness real = $field_5",  &
                        "",  &
                        "else",  &
                        "!The length of the beam is calculated:",  &
                        "var cre var = $field_6.DV_$'field_1'_length real = ((DM( eval(\"Mkr_$'field_1'_Master\"),eval(\"Mkr_$'field_1'_Slave\")))/$field_2)",  &
                        "var cre var = $field_6.DV_$'field_1'_height real = $field_3",  &
                        "var cre var = $field_6.DV_$'field_1'_width real = $field_4",  &
                        "var cre var = $field_6.DV_$'field_1'_thickness real = $field_5",  &
                        "end",  &
                        "",  &
                        "! Calculation of k_C",  &
                        "if condition = (\"$field_7\" != \"\")",  &
                        "var cre var = $field_6.DV_$'field_1'_kc real = ((207e9 * $field_7) / ($field_6.DV_$'field_1'_length))",  &
                        "else",  &
                        "var cre var = $field_6.DV_$'field_1'_kc real = (207e9 * (($field_6.DV_$'field_1'_width * ($field_6.DV_$'field_1'_height)^3 /12) - ( (($field_6.DV_$'field_1'_Width)-2*($field_6.DV_$'field_1'_Thickness)) * (($field_6.DV_$'field_1'_Height)-2*($field_6.DV_$'field_1'_Thickness))^3 /12) ) / ($field_6.DV_$'field_1'_Length) )",  &
                        "end",  &
                        "",  &
                        "! The damping is set",  &
                        "var cre var = $field_6.DV_$'field_1'_damping real = 0.00001",  &
                        "",  &
                        "for variable_name=tempreal start_value=1 end_value= $field_2",  &
                        "",  &
                        "part create rigid_body name_and_position part_name= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal))) ",  &
                        "part modify rigid_body mass_properties part_name= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal))) material=.materials.steel",  &
                        "",  &
                        "! First the outer box",  &
                        "marker create marker= (eval(\"$field_6\"//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Outer_Corner\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { (($field_6.DV_$'field_1'_length)*(eval(RTOI(tempreal)-1))), -($field_6.DV_$'field_1'_width)/2 , -($field_6.DV_$'field_1'_height)/2} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0,0} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_1\")) &",  &
                        "    diag_corner_coords=(DV_$'field_1'_length), (DV_$'field_1'_width), (DV_$'field_1'_height) &",  &
                        "    corner_marker=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Outer_Corner\"))",  &
                        "",  &
                        "! Second the inner box",  &
                        "marker create marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Inner_Corner\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval(RTOI(tempreal)-1))), (-DV_$'field_1'_width + 2*DV_$'field_1'_thickness)/2 , (-DV_$'field_1'_height + 2*DV_$'field_1'_thickness)/2} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0,0} , \"Mkr_$'field_1'_Master\" ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_2\")) &",  &
                        "    diag_corner_coords=(DV_$'field_1'_length), (DV_$'field_1'_width - 2*DV_$'field_1'_thickness), (DV_$'field_1'_height - 2*DV_$'field_1'_thickness) &",  &
                        "    corner_marker=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Inner_Corner\"))",  &
                        "group modify group=SELECT_LIST object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal)))",  &
                        "",  &
                        "! The two boxes are hollowed out",  &
                        "geometry create shape csg csg_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"CSG_\" // RTOI(tempreal))) &",  &
                        "    base_object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_1\")) &",  &
                        "    object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_2\")) &",  &
                        "    type=difference",  &
                        "group modify group=SELECT_LIST object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal))) ",  &
                        "",  &
                        "",  &
                        "if condition = (tempreal != 1)",  &
                        "! Creation of the revolute joints",  &
                        "marker create marker = (eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)-1) //\".\"// \"Mkr_Jt_1\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval(RTOI(tempreal))-1)), 0 , 0} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,90,0} , \"Mkr_$'field_1'_Master\" ))",  &
                        "marker create marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Jt_2\" )) &",  &
                        "    location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval(RTOI(tempreal))-1)), 0 , 0} , (\"$field_6\" //\".\"// \"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,90,0} , \"Mkr_$'field_1'_Master\" ))",  &
                        "constraint create joint Revolute &",  &
                        "    joint_name = (eval($field_6//\".\"// \"Jt_$'field_1'_\" // RTOI(tempreal)-1)) &",  &
                        "    i_marker_name = (eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)-1) //\".\"// \"Mkr_Jt_1\" )) &",  &
                        "    j_marker_name = (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Jt_2\" )) ",  &
                        "constraint attribute constraint_name= (eval($field_6//\".\"// \"Jt_$'field_1'_\" // RTOI(tempreal)-1)) name_vis=off",  &
                        "!group modify group=SELECT_LIST object=.$field_6.JOINT_1",  &
                        "",  &
                        "undo begin suppress=yes",  &
                        "   assembly create instance instance= (eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)) &",  &
                        "            definition=.mdi.forces.torsion_spring",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).i_marker obj=((eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)-1) //\".\"// \"Mkr_Jt_1\" )))",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).j_marker obj=((eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)) //\".\"// \"Mkr_Jt_2\" )))",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).stiffness_mode str=\"linear\"",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).stiffness_coefficient real= (DV_$'field_1'_kc (newton-meter/rad))",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).stiffness_spline obj=(none)",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).damping_mode str=\"linear\"",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).damping_coefficient real=($field_6.DV_$'field_1'_damping)",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).damping_spline obj=(none)",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).free_angle_mode str=\"design_angle\"",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).i_dynamic_visibility str=\"on\"",  &
                        "   variable modify variable = .(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1)).j_dynamic_visibility str=\"off\"",  &
                        "undo end",  &
                        "mdi torsion_spring modify instance= (eval($field_6 //\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1).sforce.parent)",  &
                        "group modify group=SELECT_LIST object=(eval($field_6//\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1))",  &
                        "undo end",  &
                        "mdi torsion_spring modify instance= (eval($field_6 //\".\"// \"Spring_$'field_1'_\" // RTOI(tempreal)-1).sforce.parent)",  &
                        "",  &
                        "end",  &
                        "",  &
                        "",  &
                        "",  &
                        "",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_flexbeam.button_1  &
   location = 208.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_flexbeam.button_2  &
   location = 130.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_flexbeam.button_3  &
   location = 52.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_1  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of beam"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_1  &
   location = 162.0, 31.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "Flexbeam"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_2  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Number of segments"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_2  &
   location = 162.0, 60.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_3  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Beam height"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_4  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Beam width"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_3  &
   location = 162.0, 87.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_4  &
   location = 162.0, 114.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_5  &
   location = 162.0, 141.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.01"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_5  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Beam thickness"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_6  &
   location = 162.0, 4.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_6  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Create in model"
!
interface separator create  &
   separator_name = .SauerDanfoss.dboxes.dbox_flexbeam.sep_1  &
   location = 4.0, 58.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_flexbeam.label_7  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Area moment of inertia"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_flexbeam.field_7  &
   location = 162.0, 168.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
