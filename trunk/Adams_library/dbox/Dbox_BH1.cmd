!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.Dbox_BH1  &
   location = 877.0, 115.0  &
   height = 528.0  &
   width = 395.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Backhoe 1"  &
   iconifiable = no  &
   start_commands = "int field set field=.SDlib_plugin.dboxes.dbox_BH1.field_20 string=(eval(db_default( .system_defaults, \"model\")))",  &
                    "",  &
                    "! These variables holds the names of the models.",  &
                    "var cre var = $_self.NewModelName string_value = \"\"",  &
                    "var cre var = $_self.OldModelName string_value = \"\"",  &
                    "",  &
                    "! Find the name of the main model.",  &
                    "if cond = (db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\") != (none))",  &
                    "  var cre var = $_self.MainModelName string_value = (eval(db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\")))",  &
                    "else",  &
                    "  var cre var = $_self.MainModelName string_value = (eval(db_default( .system_defaults, \"model\")))",  &
                    "end",  &
                    "",  &
                    "int field set field= $_self.field_20 string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  int field set field = $_self.field_21 string = (dv_model_to_change[1])",  &
                    "",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_22 string = $field_21",  &
                    "",  &
                    "",  &
                    "else",  &
                    "  int field set field = $_self.field_21 string = \"\"",  &
                    "  int field set field = $_self.field_22 string = \"\"",  &
                    "  int field set field = $_self.field_24 string = \"\"",  &
                    "end"  &
   finish_commands = "if condition = (db_exists(\"$_self.NewModelName\"))",  &
                     "  var del var = $_self.NewModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"$_self.OldModelName\"))",  &
                     "  var del var = $_self.OldModelName",  &
                     "end",  &
                     "",  &
                     "default model model=(eval($_self.MainModelName))",  &
                     "model display fit_to_view=no",  &
                     "if condition = (db_exists(\"$_self.MainModelName\"))",  &
                     "  var del var = $_self.MainModelName",  &
                     "end"  &
   execution_commands = "! Get the new name of the sub model",  &
                        "var mod var = $_self.NewModelName string_value = $field_22",  &
                        "",  &
                        "! If there is an old sub model put the name in a variable",  &
                        "if cond = ((STR_IS_SPACE(\"$field_21\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_21",  &
                        "else ",  &
                        " var mod var = $_self.OldModelName string_value = \"\"",  &
                        "end",  &
                        "",  &
                        "! if the name is changed, the model is renamed:",  &
                        "if condition = (STR_Compare( $_self.OldModelName[1], $_self.NewModelName[1]) != 0 && ((STR_IS_SPACE($_self.OldModelName[1]))==0) )",  &
                        "  entity modify entity = (eval($_self.MainModelName[1]//\".\"//$_self.OldModelName[1])) new = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "end",  &
                        "",  &
                        "! The old model field is updated, since the model name has been changed.",  &
                        "int field set field = $_self.field_21 string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Backhoe/BH1\"))",  &
                        "  model copy &",  &
                        "     model_name = BH1 &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model= BH1",  &
                        "",  &
                        "end ",  &
                        "",  &
                        "!!! The stuff for pressing OK and Apply",  &
                        "if condition = (db_exists(\"DV_model_to_change\"))",  &
                        "  var mod var = DV_subs &",  &
                        "      index = (eval(DV_model_to_change[2])) &",  &
                        "      string_value = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "  var mod var = DV_model_to_change &",  &
                        "     index = 1 &",  &
                        "     string_value = (eval($_self.NewModelName[1]))",  &
                        "else",  &
                        "  if condition = (db_exists(\"DV_subs\"))",  &
                        "    var mod var = DV_subs &",  &
                        "        index = (rows(DV_subs)+1) &",  &
                        "        string_value = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "    var cre var = DV_model_to_change &",  &
                        "       index = 1 &",  &
                        "       string_value = (eval($_self.NewModelName[1]))",  &
                        "    var mod var = DV_model_to_change &",  &
                        "       index = 2 &",  &
                        "       string_value = (rows(DV_subs)+1)",  &
                        "  else",  &
                        "    var cre var = (eval($_self.MainModelName[1])//\".\"//\"DV_subs\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "    var cre var = DV_model_to_change &",  &
                        "       index = 1 &",  &
                        "       string_value = (eval($_self.NewModelName[1]))",  &
                        "    var mod var = DV_model_to_change &",  &
                        "       index = 2 &",  &
                        "       string_value = (1)",  &
                        "  end",  &
                        "  if condition = (db_exists(\"DV_subs_dbox\"))",  &
                        "    var mod var = DV_subs_dbox &",  &
                        "        index = (rows(DV_subs_dbox)+1) &",  &
                        "        string_value = (eval($_self))",  &
                        "  else",  &
                        "    var cre var = (eval($_self.MainModelName[1])//\".\"//\"DV_subs_dbox\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval($_self))",  &
                        "  end",  &
                        "end",  &
                        "",  &
                        "! Below follows the code of the dialog box ",  &
                        "",  &
                        "! The coordinates of the Cylinder mounted to the vehicle are calculated:",  &
                        "variable modify variable = DV_CylMount_x real = ($field_33)",  &
                        "variable modify variable = DV_CylMount_z real = ($field_34)",  &
                        "",  &
                        "! The distance from the backhoemount point to the cylindermount point is calculated",  &
                        "variable modify variable = DV_dist_a_MM_cyl real = (((DV_CylMount_x)^2+(DV_CylMount_z)^2)^0.5)",  &
                        "",  &
                        "! The angle between the cylinder mount and backhoe mount and vertical",  &
                        "variable modify variable= DV_theta_backhoe real=(atan( DV_CylMount_x/DV_CylMount_z))",  &
                        "",  &
                        "! BackhoeArm point 1 is set ",  &
                        "variable modify variable= DV_thetab1 real = (acos((($field_1)^2-($field_2)^2-( DV_dist_a_MM_cyl )^2)/(-2*$field_2* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable= DV_boom_p1x real = ( -$field_2*sin(DV_thetab1 - DV_theta_backhoe))",  &
                        "variable modify variable= DV_boom_p1z real = (  $field_2*cos(DV_thetab1 - DV_theta_backhoe))",  &
                        "",  &
                        "! BackhoeArm point 2 is set ",  &
                        "variable modify variable= DV_thetab2 real = (acos((($field_3)^2-($field_4)^2-( DV_dist_a_MM_cyl)^2)/(-2*$field_4* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable= DV_boom_p2x real = ( -$field_4*sin(( DV_thetab2 - DV_theta_backhoe )))",  &
                        "variable modify variable= DV_boom_p2z real = (  $field_4*cos(( DV_thetab2 - DV_theta_backhoe )))",  &
                        "",  &
                        "! BackhoeArm point 3 is set ",  &
                        "variable modify variable= DV_thetab3 real = (acos((($field_5)^2-($field_6)^2-( DV_dist_a_MM_cyl )^2)/(-2*$field_6* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable= DV_boom_p3x real = (  - $field_6*sin(( DV_thetab3 - DV_theta_backhoe )))",  &
                        "variable modify variable= DV_boom_p3z real = (  + $field_6*cos(( DV_thetab3 - DV_theta_backhoe )))",  &
                        "",  &
                        "! Backhoe Inner part of stick point 1 is set ",  &
                        "variable modify variable = DV_thetab4 real = (acos((($field_7)^2 - ($field_8)^2 - ( DV_dist_a_MM_cyl )^2) / (-2*$field_8* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable = DV_stick_in_p1x real = (  - $field_8*sin(( DV_thetab4 - DV_theta_backhoe )))",  &
                        "variable modify variable = DV_stick_in_p1z real = (  + $field_8*cos(( DV_thetab4 - DV_theta_backhoe )))",  &
                        "",  &
                        "! Backhoe Teleinner part point 2 is set ",  &
                        "variable modify variable = DV_thetab5 real = (acos((($field_9)^2 - ($field_10)^2 - ( DV_dist_a_MM_cyl )^2) / (-2*$field_10* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable = DV_stick_in_p2x real = (  - $field_10*sin(( DV_thetab5 - DV_theta_backhoe )))",  &
                        "variable modify variable = DV_stick_in_p2z real = (  + $field_10*cos(( DV_thetab5 - DV_theta_backhoe )))",  &
                        "",  &
                        "! Backhoe Teleouter part point 1 is set ",  &
                        "variable modify variable = DV_thetab6 real = (acos((($field_11)^2 - ($field_12)^2 - ( DV_dist_a_MM_cyl )^2) / (-2*$field_12* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable = DV_stick_out_p1x real = (  - $field_12*sin(( DV_thetab6 - DV_theta_backhoe )))",  &
                        "variable modify variable = DV_stick_out_p1z real = (  + $field_12*cos(( DV_thetab6 - DV_theta_backhoe )))",  &
                        "",  &
                        "! Backhoe Teleouter part point 2 is set ",  &
                        "variable modify variable = DV_thetab7 real = (acos((($field_13)^2 - ($field_14)^2 - ( DV_dist_a_MM_cyl )^2) / (-2*$field_14* DV_dist_a_MM_cyl )))",  &
                        "variable modify variable = DV_stick_out_p2x real = (  - $field_14*sin(( DV_thetab7 - DV_theta_backhoe )))",  &
                        "variable modify variable = DV_stick_out_p2z real = (  + $field_14*cos(( DV_thetab7 - DV_theta_backhoe )))",  &
                        "",  &
                        "! Backhoe Teleouter part point 3 is set ",  &
                        "variable modify variable = DV_thetab8 real = (acos((($field_15)^2 - ($field_16)^2 - ( DV_dist_a_MM_cyl )^2) / (-2*$field_16 * DV_dist_a_MM_cyl )))",  &
                        "variable modify variable = DV_stick_out_p3x real = (  - $field_16*sin(( DV_thetab8 - DV_theta_backhoe )))",  &
                        "variable modify variable = DV_stick_out_p3z real = (  + $field_16*cos(( DV_thetab8 - DV_theta_backhoe )))",  &
                        "",  &
                        "! The location of the link between link 2 and link 3 is set by choosing the angle of link 3 to be vertical",  &
                        "variable modify variable = DV_Bucket_P1x real = (DV_stick_out_p3x)",  &
                        "variable modify variable = DV_Bucket_P1z real = (DV_stick_out_p3z - $field_19)",  &
                        "",  &
                        "! The angle between the bucket point and the cylinder point activating the bucket measured from point 2 on the outer stick is calculated",  &
                        "variable modify variable = DV_thetab9 real = (acos((((DV_Bucket_P1x - DV_stick_out_p2x)^2+(DV_Bucket_P1z - DV_stick_out_p2z)^2) + ($field_17)^2 - ($field_18)^2)/(2*($field_17)*((DV_Bucket_P1x - DV_stick_out_p2x)^2+(DV_Bucket_P1z - DV_stick_out_p2z)^2)^0.5)))",  &
                        "",  &
                        "! The angle between link 1 and horisontal is calculated",  &
                        "variable modify variable = DV_thetab10 real = (90 - DV_thetab9 - atan(( DV_stick_out_p2x - DV_Bucket_P1x )/( DV_stick_out_p2z - DV_Bucket_P1z )))",  &
                        "",  &
                        "! The coordinates for the point where the cylinder is attached to the bucket links are calculated",  &
                        "variable modify variable = DV_link1_P1x real = (DV_stick_out_p2x - cos(DV_thetab10)*$field_17 )",  &
                        "variable modify variable = DV_link1_P1z real = (DV_stick_out_p2z - sin(DV_thetab10)*$field_17 )",  &
                        "",  &
                        "",  &
                        "if condition=(db_exists (\"$field_24.ground.MKR_Slave\"))",  &
                        "! If the Backhoe Plate sub model is already included, the master marker of the Backhoe part is placed on the slave marker of the plate",  &
                        "marker modify marker_name = $'field_20.(eval($_self.NewModelName[1])).ground.MKR_Master &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $field_24.ground.MKR_Slave )) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $field_24.ground.MKR_Slave ))",  &
                        "",  &
                        "if condition=(db_exists (\"$'field_24.ground.MKR_Cylmount\"))",  &
                        "! If the Backhoe Plate sub model is already included, the plate is reshaped with respect to the cylinders mounting",  &
                        "marker modify marker_name = $'field_24.ground.MKR_Cylmount &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $field_20.$field_22.ground.MKR_Slave )) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $field_20.$field_22.ground.MKR_Slave ))",  &
                        "end",  &
                        "",  &
                        "",  &
                        "if condition=(db_exists (\"$field_24.PART_Plate\"))",  &
                        "if condition=(db_exists (\"$field_22.PART_To_BHPlate\"))",  &
                        "! If the Backhoe Plate sub model is already included, the plate is united with the small plate body of the backhoe sub model",  &
                        "part merge rigid_body part_name= $field_22.PART_To_BHPlate into_part= $field_24.Part_Plate",  &
                        "end ",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.Dbox_BH1.button_1  &
   location = 315.0, 499.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.Dbox_BH1.button_3  &
   location = 159.0, 499.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Ok"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "createdbox"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_2  &
   location = 4.0, 197.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Boom_P1"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_4  &
   location = 4.0, 224.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Boom_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_6  &
   location = 4.0, 251.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Boom_P3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_8  &
   location = 4.0, 278.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stick_In_P1"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_1  &
   location = 144.0, 197.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.8"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_2  &
   location = 268.0, 197.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.9"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_3  &
   location = 144.0, 224.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.25"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_4  &
   location = 268.0, 224.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.4"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_5  &
   location = 144.0, 251.0  &
   height = 25.0  &
   width = 122.0  &
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
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_6  &
   location = 268.0, 251.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_7  &
   location = 144.0, 278.0  &
   height = 25.0  &
   width = 122.0  &
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
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_8  &
   location = 268.0, 278.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.3"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_9  &
   location = 144.0, 305.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.05"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_10  &
   location = 4.0, 305.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stick_In_P2"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_10  &
   location = 268.0, 305.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_11  &
   location = 144.0, 332.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_12  &
   location = 4.0, 332.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stick_Out_P1"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_12  &
   location = 268.0, 332.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.35"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_13  &
   location = 144.0, 359.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_14  &
   location = 268.0, 359.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.35"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_15  &
   location = 144.0, 386.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.53"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_16  &
   location = 268.0, 386.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.37"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_17  &
   location = 280.0, 415.0  &
   height = 25.0  &
   width = 110.0  &
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
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_18  &
   location = 280.0, 442.0  &
   height = 25.0  &
   width = 110.0  &
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
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_19  &
   location = 280.0, 469.0  &
   height = 25.0  &
   width = 110.0  &
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
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_22  &
   location = 4.0, 359.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stick_Out_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_24  &
   location = 4.0, 386.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stick_Out_P3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_26  &
   location = 4.0, 415.0  &
   height = 25.0  &
   width = 274.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 1"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_27  &
   location = 4.0, 442.0  &
   height = 25.0  &
   width = 274.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_28  &
   location = 4.0, 469.0  &
   height = 25.0  &
   width = 274.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_33  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 262.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_32  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 262.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Dist_x: Boom mount -> Cyl. mount"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_34  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 262.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Dist_z: Boom mount -> Cyl. mount"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_33  &
   location = 268.0, 114.0  &
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
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_34  &
   location = 268.0, 141.0  &
   height = 25.0  &
   width = 122.0  &
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
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.Dbox_BH1.button_4  &
   location = 237.0, 499.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog= $_parent"
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.Dbox_BH1.sep_1  &
   location = 4.0, 413.0  &
   width = 386.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.Dbox_BH1.sep_2  &
   location = 4.0, 112.0  &
   width = 386.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.Dbox_BH1.sep_3  &
   location = 4.0, 168.0  &
   width = 386.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.Dbox_BH1.button_2  &
   location = 61.0, 499.0  &
   height = 25.0  &
   width = 96.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cylinder d_box"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog= $_parent",  &
              "",  &
              "! Call the dialog box for editing the size of the cylinders",  &
              "interface dialog display dialog= Dbox_BH1_cyl"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_13  &
   location = 4.0, 170.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Triangulation of point:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_14  &
   location = 144.0, 170.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "From cylinder mount"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_15  &
   location = 268.0, 170.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "From boom mount"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_20  &
   location = 268.0, 4.0  &
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
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_21  &
   location = 268.0, 31.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = no  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_22  &
   location = 268.0, 58.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = alpha_numeric  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.Dbox_BH1.field_24  &
   location = 268.0, 85.0  &
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
   object_type = any_object  &
   type_filter = model
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_16  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 262.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_17  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 262.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of sub model"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.Dbox_BH1.label_19  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 262.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a backhoe plate"
