!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_stiffAxle  &
   location = 6.0, 12.0  &
   height = 226.0  &
   width = 331.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "No steering axle"  &
   iconifiable = no  &
   start_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "! INSTRUCTIONS                               !",  &
                    "! Main model field in this code = $field_18  !",  &
                    "! Old name field in this code   = $field_1   !",  &
                    "! New name field in this code   = $field_19  !",  &
                    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "if condition = (db_exists(\"$_self.NewModelName\"))",  &
                    "  var del var = $_self.NewModelName",  &
                    "end",  &
                    "",  &
                    "if condition = (db_exists(\"$_self.OldModelName\"))",  &
                    "  var del var = $_self.OldModelName",  &
                    "end",  &
                    "",  &
                    "if condition = (db_exists(\"$_self.MainModelName\"))",  &
                    "  var del var = $_self.MainModelName",  &
                    "end",  &
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
                    "int field set field= $_self.field_18 string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  int field set field = $_self.field_1 string = (dv_model_to_change[1])",  &
                    "",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_19 string = $field_1",  &
                    "",  &
                    "  ! Read the values that was used last time for this sub model",  &
                    "  int field set field = $_self.field_2 string = ($'field_18.$'field_19'.DV_dst_y_wheels)",  &
                    "  int field set field = $_self.field_3 string = ($'field_18.$'field_19'.DV_r)",  &
                    "",  &
                    "else",  &
                    "  !There is no old model name...",  &
                    "  int field set field = $_self.field_1 string = \"\"",  &
                    "end"  &
   finish_commands = "if condition = (db_exists(\"$_self.NewModelName\"))",  &
                     "  var del var = $_self.NewModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"$_self.OldModelName\"))",  &
                     "  var del var = $_self.OldModelName",  &
                     "end",  &
                     "",  &
		     !------ return view to main model
                     "default model model=(eval($_self.MainModelName))",  &
                     "model display fit_to_view=no",  &
		     !------
                     "if condition = (db_exists(\"$_self.MainModelName\"))",  &
                     "  var del var = $_self.MainModelName",  &
                     "end"  &
   execution_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! INSTRUCTIONS                               !",  &
                        "! Main model field in this code = $field_18  !",  &
                        "! Old name field in this code   = $field_19  !",  &
                        "! New name field in this code   = $field_1   !",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "",  &
                        "! Get the new name of the sub model",  &
                        "var mod var = $_self.NewModelName string_value = $field_19",  &
                        "",  &
                        "! If there is a old sub model put the name in a variable",  &
                        "if cond = ((STR_IS_SPACE(\"$field_1\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_1",  &
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
                        "int field set field = $_self.field_1 string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Steering/stiffaxle\"))",  &
                        "",  &
                        "  !Rename som markers",  &
                        "  entity modify entity=MKR_wheel_RL new_entity_name=MKR_wheel_$'field_20'L_axle",  &
                        "  entity modify entity=MKR_wheel_RR new_entity_name=MKR_wheel_$'field_20'R_axle",  &
                        "",  &
                        "  model copy &",  &
                        "     model_name = stiffaxle &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=stiffaxle",  &
                        "",  &
                        "end ",  &
                        "",  &
                        "!!! The stuff for pressing OK and Apply",  &
                        "if condition = (db_exists(\"DV_model_to_change\"))",  &
                        "  var mod var = DV_subs &",  &
                        "      index = (eval(DV_model_to_change[2])) &",  &
                        "      string_value = (eval(NewModelName[1]))",  &
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
                        "!Let's make a variable for the path of the objects in this sub model. ",  &
                        "var mod var=$_self.path string_value=(eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) ",  &
                        " ",  &
                        "if condition=((db_exists(\"$'field_4'.part_cs\")) && db_exists (\"MKR_slave_axle_$'field_20'\")) ",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "    !!! Place this axle. ---------------------------------------------- ",  &
                        "    marker modify & ",  &
                        "     marker_name = (eval(eval($_self.path[1]).ground.MKR_master)) & ",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_4'.ground.MKR_slave_axle_$'field_20'))& ",  &
                        "     orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_4'.ground.MKR_slave_axle_$'field_20')) ",  &
                        " ",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "    !!! attach the acmCircular to the chassis ----------------------------- ",  &
                        "    if condition=(db_exists (eval($_self.path[1]//\".PART_axle\"))) ",  &
                        "      part merge rigid_body part_name=(eval($_self.path[1]//\".PART_axle\")) & ",  &
                        "      into_part=($'field_4'.PART_Cs) ",  &
                        "    end ",  &
                        " ",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "    !!! Place the rear left tire -------------------------------------- ",  &
                        "    marker modify & ",  &
                        "     marker_name = $field_4.ground.MKR_wheel_$'field_20'L & ",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_4'.PART_Cs.MKR_wheel_$'field_20'L_axle )) ",  &
                        " ",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "    !!! Place the rear right tire ------------------------------------- ",  &
                        "    marker modify & ",  &
                        "     marker_name = $field_4.ground.MKR_wheel_$'field_20'R & ",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_4'.PART_Cs.MKR_wheel_$'field_20'R_axle )) ",  &
                        " ",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "    !!! Create revolute joint for rear left wheel --------------------- ",  &
                        "    if condition=(db_exists (\"$'field_4'.JT_wheel_$'field_20'L\")) ",  &
                        "      !We don't need to create the revolute joint twice ",  &
                        "    else ",  &
                        "      marker create marker=$'field_4'.wheel_$'field_20'L.wheel_part.MKR_wheel_$'field_20'L_wheel & ",  &
                        "           location = (LOC_RELATIVE_TO( {0,0,0} , $'field_4'.PART_Cs.MKR_wheel_$'field_20'L_axle )) & ",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_4'.PART_Cs.MKR_wheel_$'field_20'L_axle )) ",  &
                        " ",  &
                        "      constraint create joint Revolute & ",  &
                        "          joint_name=$'field_4'.JT_wheel_$'field_20'L & ",  &
                        "          i_marker_name=$'field_4'.PART_Cs.MKR_wheel_$'field_20'L_axle & ",  &
                        "          j_marker_name=$'field_4'.wheel_$'field_20'L.wheel_part.MKR_wheel_$'field_20'L_wheel ",  &
                        "    end ",  &
                        " ",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "    !!! Create revolute joint for rear right wheel -------------------- ",  &
                        "    if condition=(db_exists (\"$'field_18'.JT_wheel_$'field_20'R\")) ",  &
                        "      !We don't need to create the revolute joint twice ",  &
                        "    else ",  &
                        "      marker create marker=$'field_4'.wheel_$'field_20'R.wheel_part.MKR_wheel_$'field_20'R_wheel & ",  &
                        "           location = (LOC_RELATIVE_TO( {0,0,0} , $'field_4'.PART_Cs.MKR_wheel_$'field_20'R_axle ))& ",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_4'.PART_Cs.MKR_wheel_$'field_20'R_axle )) ",  &
                        " ",  &
                        "      constraint create joint Revolute & ",  &
                        "          joint_name=$'field_4'.JT_wheel_$'field_20'R & ",  &
                        "          i_marker_name=$'field_4'.PART_Cs.MKR_wheel_$'field_20'R_axle & ",  &
                        "          j_marker_name=$'field_4'.wheel_$'field_20'R.wheel_part.MKR_wheel_$'field_20'R_wheel ",  &
                        "    end ",  &
                        "   ",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ",  &
                        "  !!! Rename marker on chassis, so that it is impossible to find next time somone  ",  &
                        "  !!! wants to place an axle on this marker. Ha Ha! ",  &
                        "  entity modify entity = $'field_4'.ground.MKR_slave_axle_$'field_20'      new = $'field_4'.ground.MKR_slave_axle_$'field_20'_used ",  &
                        " ",  &
                        "end ",  &
                        "",  &
                        "",  &
                        "",  &
                        "if condition=(db_exists(eval($_self.path[1]//\\\".ground.MKR_master\\\"))) ",  &
                        "    !!! Update variables",  &
                        "    variable modify variable=(eval($_self.path[1]//\".DV_dst_y_wheels\")) real=$field_2",  &
                        "    variable modify variable=(eval($_self.path[1]//\".DV_r\"))            real=$field_3",  &
                        "else",  &
                        "   ! mdi gui_utl_alert_box_1 type=\"Error\" text=\"Wrong (Name of sub model) or (number of axle)\"",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_stiffAxle.button_5  &
   location = 251.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_stiffAxle.button_6  &
   location = 173.0, 197.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_stiffAxle.button_7  &
   location = 95.0, 197.0  &
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
              "file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/dbox/createdbox\"))"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 210.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_2  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 200.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance between wheels"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_3  &
   location = 4.0, 166.0  &
   height = 25.0  &
   width = 200.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_18  &
   location = 217.0, 4.0  &
   height = 25.0  &
   width = 110.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "new_model"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_2  &
   location = 251.0, 139.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_3  &
   location = 251.0, 166.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.12"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_4  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 210.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of sub model:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_5  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 200.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Axle number (1 = front axle)"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_19  &
   location = 217.0, 58.0  &
   height = 25.0  &
   width = 110.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "rear_axle"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_20  &
   location = 251.0, 112.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = integer  &
   upper_check = none  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_6  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 210.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_stiffAxle.label_7  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 210.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_1  &
   location = 217.0, 31.0  &
   height = 25.0  &
   width = 110.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_stiffAxle.field_4  &
   location = 217.0, 85.0  &
   height = 25.0  &
   width = 110.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = model
!
variable create  &
   variable_name = .SDlib_plugin.dboxes.dbox_stiffAxle.path  &
   string_value = ".MODEL_1.rear_axle"
