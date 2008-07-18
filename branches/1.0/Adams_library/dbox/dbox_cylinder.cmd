!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_cylinder  &
   location = 644.0, 137.0  &
   height = 333.0  &
   width = 290.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Cylinder import"  &
   iconifiable = no  &
   start_commands = "int field set field=.SDlib_plugin.dboxes.dbox_cylinder.field_1 string=(eval(db_default( .system_defaults, \\\"model\\\")))"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cylinder.button_1  &
   location = 210.0, 304.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Help"  &
   commands = "interface help SDlib_plugin.dboxes_name=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cylinder.button_2  &
   location = 132.0, 304.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cylinder.button_3  &
   location = 54.0, 304.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "! Importing the new cylinderfile",  &
              "file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/level2/$'option_1'.cmd\"))",  &
              "",  &
              "!!! Update variables",  &
              "variable modify variable=.$'option_1'.min_length real=$field_3",  &
              "variable modify variable=.$'option_1'.max_length real=$field_4",  &
              "variable modify variable=.$'option_1'.ini_length real=$field_5",  &
              "variable modify variable=.$'option_1'.rc real=$field_6",  &
              "variable modify variable=.$'option_1'.rp real=$field_7",  &
              "",  &
              "!!! Rename parts",  &
              "entity modify entity = .$'option_1'.PART_cyl new = .$'option_1'.PART_Cyl_$'field_2'_cyl",  &
              "entity modify entity = .$'option_1'.PART_pis new = .$'option_1'.PART_Cyl_$'field_2'_pis",  &
              "",  &
              "!!! Rename state variables",  &
              "entity modify entity = .$'option_1'.CylPos new = .$'option_1'.SV_Cyl_$'field_2'_P",  &
              "entity modify entity = .$'option_1'.CylVel new = .$'option_1'.SV_Cyl_$'field_2'_V",  &
              "entity modify entity = .$'option_1'.CylForce new = .$'option_1'.SV_Cyl_$'field_2'_F",  &
              "",  &
              "!!! Rename design variables",  &
              "entity modify entity = .$'option_1'.min_length new = .$'option_1'.DV_Cyl_$'field_2'_min_length",  &
              "entity modify entity = .$'option_1'.max_length new = .$'option_1'.DV_Cyl_$'field_2'_max_length",  &
              "entity modify entity = .$'option_1'.ini_length new = .$'option_1'.DV_Cyl_$'field_2'_ini_length",  &
              "entity modify entity = .$'option_1'.rc new = .$'option_1'.DV_Cyl_$'field_2'_rc",  &
              "entity modify entity = .$'option_1'.rp new = .$'option_1'.DV_Cyl_$'field_2'_rp",  &
              "",  &
              "!!! Rename force",  &
              "entity modify entity = .$'option_1'.endforce new = .$'option_1'.F_Cyl_$'field_2'_force",  &
              "",  &
              "!!! Rename joint",  &
              "entity modify entity = .$'option_1'.JOINT_2 new = .$'option_1'.JT_Cyl_$'field_2'_cyl_pis",  &
              "",  &
              "!!! Rename markers",  &
              "entity modify entity = .$'option_1'.PART_Cyl_$'field_2'_cyl.MKR_cyl_master new = .$'option_1'.PART_Cyl_$'field_2'_cyl.MKR_$'field_2'_cyl_master",  &
              "entity modify entity = .$'option_1'.PART_Cyl_$'field_2'_pis.cyl_MKR_3 new = .$'option_1'.PART_Cyl_$'field_2'_pis.MKR_$'field_2'_pis_slave",  &
              "",  &
              "model merge &",  &
              "    model_name = .$option_1 &",  &
              "    into_model_name = $field_1 &",  &
              "    &",  &
              "    rotation = 0.0, 0.0, 0.0  &",  &
              "    duplicate_parts = merge",  &
              "    model delete model = .$option_1",  &
              "",  &
              "",  &
              "",  &
              "if cond = ((STR_IS_SPACE(\"$field_8\"))==0 || (STR_IS_SPACE(\"$field_9\"))==0)",  &
              "!!! Place and orient the cylinder. ------------------------------------------",  &
              "marker modify &",  &
              "  marker_name = MKR_$'field_2'_cyl_master  &",  &
              "     location = (LOC_RELATIVE_TO( {0,0,0} , $'field_8' ))&",  &
              "  orientation = (ORI_ALONG_AXIS( $'field_8' , $'field_9' , \"z\" ))",  &
              "",  &
              "!!! Place and orient the cylinder. ------------------------------------------",  &
              "marker modify &",  &
              "  marker_name = MKR_$'field_2'_pis_slave  &",  &
              "     location = (LOC_RELATIVE_TO( {0,0,0} , $'field_9' ))",  &
              "end",  &
              "",  &
              "",  &
              "model display fit_to_view=yes",  &
              "",  &
              "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_1  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Minimum length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_2  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_3  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Maximum length"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_1  &
   location = 190.0, 31.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "no_model"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_2  &
   location = 190.0, 58.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "boom"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_3  &
   location = 190.0, 85.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_4  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of cylinder (Cyl_XXXX....)"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_4  &
   location = 190.0, 112.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cylinder.option_1  &
   location = 30.0, 4.0  &
   height = 25.0  &
   width = 250.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "Standard cylinder", "Cylinder mounted at midpoint"  &
   current_choice = "Standard cylinder"  &
   values = "cyl1", "cyl2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_5  &
   location = 4.0, 166.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of cylinder"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_5  &
   location = 190.0, 139.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_7  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Merge into model:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_8  &
   location = 4.0, 193.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of piston rod"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_7  &
   location = 190.0, 193.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.038"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_6  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Initial length"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_6  &
   location = 190.0, 166.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.08"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_9  &
   location = 4.0, 220.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder marker"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_8  &
   location = 190.0, 220.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = marker
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cylinder.label_10  &
   location = 4.0, 247.0  &
   height = 25.0  &
   width = 176.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston marker"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cylinder.field_9  &
   location = 190.0, 247.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = marker
