!
interface dialog_box create  &
   dialog_box_name = .gui.dbox_BHPlate1  &
   location = 996.0, 506.0  &
   height = 391.0  &
   width = 276.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_BHPlate1"  &
   iconifiable = no  &
   start_commands = "int field set field=.gui.dbox_BHPlate1.field_12 string=(eval(db_default( .system_defaults, \"model\")))"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .gui.dbox_BHPlate1.button_1  &
   location = 196.0, 362.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .gui.dbox_BHPlate1.button_2  &
   location = 118.0, 362.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "if condition=(db_exists (\"MKR_BHPlate_Master\"))",  &
              "else",  &
              "file command read file=\"level3/Backhoe/BHPlateCase\"",  &
              "model merge &",  &
              "   model_name = .BHPlateCase &",  &
              "   into_model_name = $field_12 &",  &
              "     &",  &
              "   rotation = 0.0, 0.0, 0.0  &",  &
              "   duplicate_parts = merge",  &
              "",  &
              "model delete model = .BHPlateCase",  &
              "",  &
              "model display fit_to_view=yes",  &
              "end",  &
              "",  &
              "",  &
              "! The x-distance from the master marker to the boom mount is set",  &
              "variable modify variable = DV_BHPlate1_Dist_x_Boom real = $field_1",  &
              "",  &
              "! The z-distance from the master marker to the boom mount is set",  &
              "variable modify variable = DV_BHPlate1_Dist_z_Boom real = $field_2",  &
              "",  &
              "! The x-distance from the master marker to the cylinders joint on the plate is set",  &
              "variable modify variable = DV_BHPlate1_Dist_x_CylJt real = $field_3",  &
              "",  &
              "! The z-distance from the master marker to the cylinders joint on the plate is set",  &
              "variable modify variable = DV_BHPlate1_Dist_z_CylJt real = $field_4",  &
              "",  &
              "! The x-distance To the chassis and cylinders mounting on the chassis",  &
              "variable modify variable = DV_BHPlate1_Dist_x_Cs real = $field_5",  &
              "",  &
              "! The y-distance between the mounting of the two cylinders on the chassis",  &
              "variable modify variable = DV_BHPlate1_Dist_y_Cylinders real = $field_6",  &
              "",  &
              "! The height of the plate, and hereby the z-distance between the two joints to the chassis",  &
              "variable modify variable = DV_BHPlate1_Height_Plate real = $field_7",  &
              "",  &
              "! The minimum length of the rotational cylinders is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_min_length real = $field_8",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_min_length real = $field_8",  &
              "",  &
              "! The maximum length of the rotational cylinders is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_max_length real = $field_9",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_max_length real = $field_9",  &
              "",  &
              "! The radius of the cylinder part is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_rc real = $field_10",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_rc real = $field_10",  &
              "",  &
              "! The radius of the piston part is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_rp real = $field_11",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_rp real = $field_11",  &
              "",  &
              "",  &
              "",  &
              "! The master marker of the backhoe plate is attached to the slave marker of the rear attachment of the chassis",  &
              "if condition=(db_exists (\"MKR_slave_RearImp\"))",  &
              "marker modify marker_name = MKR_BHPlate_Master &",  &
              "  location = (LOC_RELATIVE_TO( {0,0,0} , MKR_slave_RearImp )) &",  &
              "  orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_slave_RearImp ))",  &
              "",  &
              "! If a chassis and the backhoe plate exists, the plate and the chassis is merged",  &
              "if condition=(db_exists (\"Part_BHPlate1\"))",  &
              "part merge rigid_body part_name= Part_BHPlate1 into_part= PART_Cs",  &
              "end",  &
              "end",  &
              "",  &
              "",  &
              "if condition=(db_exists (\"MKR_BH_Slave\"))",  &
              "! If the Backhoe sub model is already included, the master marker of the Backhoe part is placed on the slave marker of the plate",  &
              "marker modify marker_name = MKR_BH_Master &",  &
              "  location = (LOC_RELATIVE_TO( {0,0,0} , MKR_BHPlate_Slave )) &",  &
              "  orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_BHPlate_Slave ))",  &
              "",  &
              "! If the Backhoe sub model is allready included, the plate is reshaped with respect to the cylinders mounting",  &
              "marker modify marker_name = MKR_BHPlate_Cylmount &",  &
              "  location = (LOC_RELATIVE_TO( {0,0,0} , MKR_BH_Slave )) &",  &
              "  orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_BH_Slave ))",  &
              "",  &
              "if condition=(db_exists (\"PART_BH_BHPlate\"))",  &
              "! If the Backhoe sub model is allready included, the plate is united with the small plate body of the backhoe sub model",  &
              "part merge rigid_body part_name= PART_BH_BHPlate into_part= Part_BHPlate_Plate",  &
              "end ",  &
              "end",  &
              "",  &
              "",  &
              "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .gui.dbox_BHPlate1.button_3  &
   location = 40.0, 362.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "if condition=(db_exists (\"MKR_BHPlate_Master\"))",  &
              "else",  &
              "file command read file=\"level3/Backhoe/BHPlateCase\"",  &
              "model merge &",  &
              "   model_name = .BHPlateCase &",  &
              "   into_model_name = $field_12 &",  &
              "     &",  &
              "   rotation = 0.0, 0.0, 0.0  &",  &
              "   duplicate_parts = merge",  &
              "",  &
              "model delete model = .BHPlateCase",  &
              "",  &
              "model display fit_to_view=yes",  &
              "end",  &
              "",  &
              "",  &
              "! The x-distance from the master marker to the boom mount is set",  &
              "variable modify variable = DV_BHPlate1_Dist_x_Boom real = $field_1",  &
              "",  &
              "! The z-distance from the master marker to the boom mount is set",  &
              "variable modify variable = DV_BHPlate1_Dist_z_Boom real = $field_2",  &
              "",  &
              "! The x-distance from the master marker to the cylinders joint on the plate is set",  &
              "variable modify variable = DV_BHPlate1_Dist_x_CylJt real = $field_3",  &
              "",  &
              "! The z-distance from the master marker to the cylinders joint on the plate is set",  &
              "variable modify variable = DV_BHPlate1_Dist_z_CylJt real = $field_4",  &
              "",  &
              "! The x-distance To the chassis and cylinders mounting on the chassis",  &
              "variable modify variable = DV_BHPlate1_Dist_x_Cs real = $field_5",  &
              "",  &
              "! The y-distance between the mounting of the two cylinders on the chassis",  &
              "variable modify variable = DV_BHPlate1_Dist_y_Cylinders real = $field_6",  &
              "",  &
              "! The height of the plate, and hereby the z-distance between the two joints to the chassis",  &
              "variable modify variable = DV_BHPlate1_Height_Plate real = $field_7",  &
              "",  &
              "! The minimum length of the rotational cylinders is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_min_length real = $field_8",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_min_length real = $field_8",  &
              "",  &
              "! The maximum length of the rotational cylinders is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_max_length real = $field_9",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_max_length real = $field_9",  &
              "",  &
              "! The radius of the cylinder part is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_rc real = $field_10",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_rc real = $field_10",  &
              "",  &
              "! The radius of the piston part is set",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_L_rp real = $field_11",  &
              "variable modify variable = DV_Cyl_BHPlate1_Plate_R_rp real = $field_11",  &
              "",  &
              "",  &
              "",  &
              "! The master marker of the backhoe plate is attached to the slave marker of the rear attachment of the chassis",  &
              "if condition=(db_exists (\"MKR_slave_RearImp\"))",  &
              "marker modify marker_name = MKR_BHPlate_Master &",  &
              "  location = (LOC_RELATIVE_TO( {0,0,0} , MKR_slave_RearImp )) &",  &
              "  orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_slave_RearImp ))",  &
              "",  &
              "! If a chassis and the backhoe plate exists, the plate and the chassis is merged",  &
              "if condition=(db_exists (\"Part_BHPlate1\"))",  &
              "part merge rigid_body part_name= Part_BHPlate1 into_part= PART_Cs",  &
              "end",  &
              "end",  &
              "",  &
              "",  &
              "if condition=(db_exists (\"MKR_BH_Slave\"))",  &
              "! If the Backhoe sub model is already included, the master marker of the Backhoe part is placed on the slave marker of the plate",  &
              "marker modify marker_name = MKR_BH_Master &",  &
              "  location = (LOC_RELATIVE_TO( {0,0,0} , MKR_BHPlate_Slave )) &",  &
              "  orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_BHPlate_Slave ))",  &
              "",  &
              "! If the Backhoe sub model is allready included, the plate is reshaped with respect to the cylinders mounting",  &
              "marker modify marker_name = MKR_BHPlate_Cylmount &",  &
              "  location = (LOC_RELATIVE_TO( {0,0,0} , MKR_BH_Slave )) &",  &
              "  orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_BH_Slave ))",  &
              "",  &
              "if condition=(db_exists (\"PART_BH_BHPlate\"))",  &
              "! If the Backhoe sub model is allready included, the plate is united with the small plate body of the backhoe sub model",  &
              "part merge rigid_body part_name= PART_BH_BHPlate into_part= Part_BHPlate_Plate",  &
              "end ",  &
              "end",  &
              "",  &
              "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_1  &
   location = 4.0, 33.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-dist to boom mount"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_2  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-dist to chassis"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_3  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-dist to cyl mount on plate"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_4  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-dist to cyl mount on plate"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_4_2  &
   location = 4.0, 195.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of plate"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_4_3  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-dist to boom mount"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_4_2_2  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-dist between cyl mount on Cs"
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_1  &
   location = 196.0, 33.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.4"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_2  &
   location = 196.0, 60.0  &
   height = 25.0  &
   width = 76.0  &
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
   field_name = .gui.dbox_BHPlate1.field_3  &
   location = 196.0, 87.0  &
   height = 25.0  &
   width = 76.0  &
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
   field_name = .gui.dbox_BHPlate1.field_4  &
   location = 196.0, 114.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_5  &
   location = 196.0, 141.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.15"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_6  &
   location = 196.0, 168.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.6"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_7  &
   location = 196.0, 195.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.6"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_5  &
   location = 4.0, 224.0  &
   height = 25.0  &
   width = 268.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Data for the plate rotational cylinders"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_6  &
   location = 4.0, 251.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. Length"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_7  &
   location = 4.0, 278.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. Length"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_8  &
   location = 4.0, 305.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_9  &
   location = 4.0, 332.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius"
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_8  &
   location = 196.0, 251.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .gui.dbox_BHPlate1.sep_2  &
   location = 4.0, 222.0  &
   width = 268.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_9  &
   location = 196.0, 278.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_10  &
   location = 196.0, 305.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.03"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_11  &
   location = 196.0, 332.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.018"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_BHPlate1.label_10  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 190.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Merge into model"
!
interface field create  &
   field_name = .gui.dbox_BHPlate1.field_12  &
   location = 196.0, 4.0  &
   height = 25.0  &
   width = 76.0  &
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
interface separator create  &
   separator_name = .gui.dbox_BHPlate1.sep_3  &
   location = 4.0, 31.0  &
   width = 268.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
