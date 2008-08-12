!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_Stabi1  &
   location = 2.0, 67.0  &
   height = 578.0  &
   width = 387.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Modifications to Stabilizer sub model"  &
   iconifiable = no  &
   start_commands = "int field set field=.SDlib_plugin.dboxes.dbox_BHPlate1.field_12 string=(eval(db_default( .system_defaults, \"model\")))",  &
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
                    "int field set field= $_self.field_12 string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  int field set field = $_self.field_17 string = (dv_model_to_change[1])",  &
                    "",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_18 string = $field_17",  &
                    "",  &
                    "",  &
                    "! Read the values that was used last time for this sub model",  &
                    "int field set field = $_self.field_1 string = ($'field_12.$'field_18'.DV_Dist_y_Legs)",  &
                    "int field set field = $_self.field_2 string = ($'field_12.$'field_18'.DV_AngleToForward)",  &
                    "int field set field = $_self.field_3 string = ($'field_12.$'field_18'.DV_Legwidth)",  &
                    "int field set field = $_self.field_4 string = ($'field_12.$'field_18'.DV_PlateHeight)",  &
                    "int field set field = $_self.field_5 string = ($'field_12.$'field_18'.DV_Cyl_R_ini_length)",  &
                    "int field set field = $_self.field_6 string = ($'field_12.$'field_18'.DV_PlateWidth)",  &
                    "int field set field = $_self.field_7 string = ($'field_12.$'field_18'.DV_PlateDepth)",  &
                    "int field set field = $_self.field_8 string = ($'field_12.$'field_18'.DV_Cyl_R_min_length)",  &
                    "int field set field = $_self.field_9 string = ($'field_12.$'field_18'.DV_Cyl_R_max_length)",  &
                    "int field set field = $_self.field_10 string = ($'field_12.$'field_18'.DV_Cyl_R_rc)",  &
                    "int field set field = $_self.field_11 string = ($'field_12.$'field_18'.DV_Cyl_R_rp)",  &
                    "int field set field = $_self.field_14 string = ($'field_12.$'field_18'.DV_CylMount_xyz[1]//\",\"//$'field_12.$'field_18'.DV_CylMount_xyz[2]//\",\"//$'field_12.$'field_18'.DV_CylMount_xyz[3])",  &
                    "int field set field = $_self.field_14 string = ($'field_12.$'field_18'.DV_CylLeg_xyz[1]//\",\"//$'field_12.$'field_18'.DV_CylLeg_xyz[2]//\",\"//$'field_12.$'field_18'.DV_CylLeg_xyz[3])",  &
                    "int field set field = $_self.field_15 string = ($'field_12.$'field_18'.DV_PlateJoint_x)",  &
                    "int field set field = $_self.field_16 string = ($'field_12.$'field_18'.DV_PlateJoint_z)",  &
                    "",  &
                    "else",  &
                    "  int field set field = $_self.field_17 string = \"\"",  &
                    "  int field set field = $_self.field_18 string = \"\"",  &
                    "  int field set field = $_self.field_19 string = \"\""  &
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
                        "var mod var = $_self.NewModelName string_value = \"$field_18\"",  &
                        "",  &
                        "! If there is a old sub model put the name in a variable",  &
                        "if cond = ((STR_IS_SPACE(\"$field_13\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = \"$field_17\"",  &
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
                        "int field set field = $_self.field_17 string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Stabilizer/Stabi1\"))",  &
                        "  model copy &",  &
                        "     model_name = Stabi1 &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model= Stabi1",  &
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
                        "",  &
                        "! Below follows the code of the dialog box ",  &
                        "",  &
                        "! The y-distance between the mounting of the legs on the chassis is set",  &
                        "variable modify variable = DV_Dist_y_Legs real = $field_1",  &
                        "",  &
                        "! The z-distance from the master marker to the boom mount is set",  &
                        "variable modify variable = DV_AngleToForward real = $field_2",  &
                        "",  &
                        "! The width of the central piece of the arm is set",  &
                        "variable modify variable = DV_Legwidth real = $field_3",  &
                        "",  &
                        "! The Height of the plate is set",  &
                        "variable modify variable = DV_PlateHeight real = $field_4",  &
                        "",  &
                        "! The Width of the plate is set",  &
                        "variable modify variable = DV_PlateWidth real = $field_6",  &
                        "",  &
                        "! The Depth of the plate is set",  &
                        "variable modify variable = DV_PlateDepth real = $field_7",  &
                        "",  &
                        "! The coordinates of the cylinder mounting is set",  &
                        "variable modify variable = DV_CylMount_xyz real = $field_13",  &
                        "",  &
                        "! The coordinates of the joint between the cylinder and the leg",  &
                        "variable modify variable = DV_CylLeg_xyz real = $field_14",  &
                        "",  &
                        "! The x-coordinate of the plate joint is set",  &
                        "variable modify variable = DV_PlateJoint_x real = $field_15",  &
                        "",  &
                        "! The z-coordinate of the plate joint is set",  &
                        "variable modify variable = DV_PlateJoint_z real = $field_16",  &
                        "",  &
                        "! The minimum length of the stabilizer cylinders is set",  &
                        "variable modify variable = DV_Cyl_L_min_length real = $field_8",  &
                        "variable modify variable = DV_Cyl_R_min_length real = $field_8",  &
                        "",  &
                        "! The maximum length of the stabilizer cylinders is set",  &
                        "variable modify variable = DV_Cyl_L_max_length real = $field_9",  &
                        "variable modify variable = DV_Cyl_R_max_length real = $field_9",  &
                        "",  &
                        "! The initial length of the stabilizer cylinders is set",  &
                        "variable modify variable = DV_Cyl_L_ini_length real = $field_5",  &
                        "variable modify variable = DV_Cyl_R_ini_length real = $field_5",  &
                        "",  &
                        "! The radius of the cylinder part is set",  &
                        "variable modify variable = DV_Cyl_L_rc real = $field_10",  &
                        "variable modify variable = DV_Cyl_R_rc real = $field_10",  &
                        "",  &
                        "! The radius of the piston part is set",  &
                        "variable modify variable = DV_Cyl_L_rp real = $field_11",  &
                        "variable modify variable = DV_Cyl_R_rp real = $field_11",  &
                        "",  &
                        "",  &
                        "",  &
                        "",  &
                        "! If a chassis exists, the stabilizer is merged to the chassis",  &
                        "if condition=(db_exists (\"$field_19.PART_Cs\"))",  &
                        "  if condition=(db_exists (\"$field_18.Part_To_Cs\"))",  &
                        "    part merge rigid_body part_name= $field_18.Part_To_Cs into_part= $field_19.PART_Cs",  &
                        "  end",  &
                        "  ! Locate the stabilizers relative to the stabilizer marker...",  &
                        "  marker modify &",  &
                        "     marker_name = ($field_18.ground.Mkr_Master) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_19'.ground.MKR_slave_stabi))&",  &
                        "     orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_19'.ground.MKR_slave_stabi))",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_Stabi1.button_1  &
   location = 307.0, 549.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_Stabi1.button_2  &
   location = 229.0, 549.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog= $_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_Stabi1.button_3  &
   location = 151.0, 549.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "createdbox"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_1  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-dist between legs [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_3  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of the central of the leg [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_4  &
   location = 4.0, 195.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of the plate [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_4_2  &
   location = 4.0, 249.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Depth of the plate [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_4_3  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Angle to legs from forward [Deg]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_4_2_2  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of the plate [m]"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_1  &
   location = 261.0, 114.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.7"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_2  &
   location = 261.0, 141.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_3  &
   location = 261.0, 168.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.55"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_4  &
   location = 261.0, 195.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.045"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_6  &
   location = 261.0, 222.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.33"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_7  &
   location = 261.0, 249.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.33"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_5  &
   location = 4.0, 386.0  &
   height = 25.0  &
   width = 379.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Data for the stabilizer cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_6  &
   location = 4.0, 413.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. Length [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_7  &
   location = 4.0, 440.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. Length [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_8  &
   location = 4.0, 494.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_9  &
   location = 4.0, 521.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius [m]"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_8  &
   location = 261.0, 413.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.35"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_Stabi1.sep_2  &
   location = 4.0, 384.0  &
   width = 379.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_9  &
   location = 261.0, 440.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.55"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_10  &
   location = 261.0, 494.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.065"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_11  &
   location = 261.0, 521.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.04"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_10  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_12  &
   location = 261.0, 4.0  &
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
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_Stabi1.sep_3  &
   location = 4.0, 112.0  &
   width = 379.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_2  &
   location = 4.0, 467.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Ini. Length [m]"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_5  &
   location = 261.0, 467.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.35"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_11  &
   location = 4.0, 276.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Coordinates, cyl. mount on Cs (x,y,z) [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_12  &
   location = 4.0, 303.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Coordinates, cyl. mount on leg (x,y,z) [m]"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_13  &
   location = 261.0, 276.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.055, 0, 0.08"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_14  &
   location = 261.0, 303.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.3, 0.0, 0.1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_15  &
   location = 261.0, 330.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.55"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_13  &
   location = 4.0, 330.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-coordinate of plate joint [m]"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_16  &
   location = 261.0, 357.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.36"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_14  &
   location = 4.0, 357.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-coordinate of plate joint [m]"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_17  &
   location = 261.0, 31.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_18  &
   location = 261.0, 58.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Stabi1.field_19  &
   location = 261.0, 85.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_15  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_16  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of sub model"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Stabi1.label_17  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 255.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
