!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_RearHitch  &
   location = 645.0, 44.0  &
   height = 625.0  &
   width = 498.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_RearHitch"  &
   iconifiable = no  &
   start_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "! INSTRUCTIONS                                   !",  &
                    "! Main model field in this code = $field_main    !",  &
                    "! Old name field in this code   = $field_old     !",  &
                    "! New name field in this code   = $field_newName !",  &
                    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
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
                    "int field set field= $_self.field_main string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  int field set field = $_self.field_old string = (dv_model_to_change[1])",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_newName string = $field_old",  &
                    "",  &
                    "  !#####################################################!",  &
                    "  !                REMEMBER TO CHANGE                   !",  &
                    "  ! Read the values that was used last time for this sub model",  &
                    "  int field set field = $_self.field_? &",  &
                    "      string = ($'field_main.$'field_newName'.DV_someName1)",  &
                    "  int field set field = $_self.field_? &",  &
                    "      string = ($'field_main.$'field_newName'.DV_someName2)",  &
                    "  !#####################################################!",  &
                    "else",  &
                    "  !There is no old model name...",  &
                    "  int field set field = $_self.field_old string = \"\"",  &
                    "end"  &
   finish_commands = "if condition = (db_exists(\"NewModelName\"))",  &
                     "  var del var = NewModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"OldModelName\"))",  &
                     "  var del var = OldModelName",  &
                     "end",  &
                     "",  &
                     "default model model=(eval($_self.MainModelName))",  &
                     "model display fit_to_view=no",  &
                     "if condition = (db_exists(\"MainModelName\"))",  &
                     "  var del var = MainModelName",  &
                     "end"  &
   execution_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! INSTRUCTIONS                                  !",  &
                        "! Main model field in this code = $field_main   !",  &
                        "! Old name field in this code   = $field_old    !",  &
                        "! New name field in this code   = $field_newName!",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "",  &
                        "! Get the new name of the sub model",  &
                        "var mod var = $_self.NewModelName string_value = $field_newName",  &
                        "",  &
                        "! If there is a old sub model put the name in a variable",  &
                        "if cond = ((STR_IS_SPACE(\"$field_old\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_old",  &
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
                        "int field set field = $_self.field_old string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"DV_someName1\")))",  &
                        "!#####################################################!",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  !#####################################################!",  &
                        "  !                REMEMBER TO CHANGE                   !",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Type/submodel\")) ",  &
                        "  !#####################################################!",  &
                        "  model copy &",  &
                        "    !#####################################################!",  &
                        "    !                REMEMBER TO CHANGE                   !",  &
                        "     model_name = submodel &",  &
                        "    !#####################################################!",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  !#####################################################!",  &
                        "  !                REMEMBER TO CHANGE                   !",  &
                        "  model delete model=submodel",  &
                        "  !#####################################################!",  &
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
                        "  !Create or modify DV_subs",  &
                        "  if condition = (db_exists(\"DV_subs\"))",  &
                        "    var mod var = DV_subs &",  &
                        "        index = (rows(DV_subs)+1) &",  &
                        "        string_value = (eval($_self.NewModelName[1]))",  &
                        "  else",  &
                        "    var cre var = (eval($_self.MainModelName[1])//\".\"//\"DV_subs\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval($_self.NewModelName[1]))",  &
                        "  end",  &
                        "",  &
                        "  !Update DV_model_to_change",  &
                        "  var cre var = DV_model_to_change &",  &
                        "     index = 1 &",  &
                        "     string_value = (eval($_self.NewModelName[1]))",  &
                        "  var mod var = DV_model_to_change &",  &
                        "     index = 2 &",  &
                        "     string_value = (rows(DV_subs)+1)",  &
                        "",  &
                        "  !Create or modify DV_subs_dbox",  &
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
                        "if condition=((db_exists(\"$'field_csModel'.part_cs\")) && db_exists (\"$'field_main'.$'field_newName'.PART_to_cs\"))",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Place this sub model. -----------------------------------------",  &
                        "    marker modify &",  &
                        "     marker_name = ($'field_main'.$'field_newName'.ground.MKR_master) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_csModel'.ground.MKR_slave_frontImp))&",  &
                        "     orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_csModel'.ground.MKR_slave_frontImp))",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! attach the sub model to the chassis ---------------------------",  &
                        "    part merge rigid_body part_name=($'field_main'.$'field_newName'.PART_to_cs) &",  &
                        "    into_part=($'field_csModel'.PART_Cs)",  &
                        "end",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "if condition=(db_exists(\"$'field_main'.$'field_newName'.DV_someName1\"))",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_someName1 real=$field_?",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_someName2 real=$field_?",  &
                        "!#####################################################!",  &
                        "end",  &
                        "!"  &
   decorate = yes  &
   resizable = no  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_RearHitch.button_1  &
   location = 418.0, 596.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_RearHitch.button_2  &
   location = 340.0, 596.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_RearHitch.button_3  &
   location = 262.0, 596.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_2  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old sub model name"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_3  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "New sub model name:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_4  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_main  &
   location = 375.0, 4.0  &
   height = 25.0  &
   width = 116.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_old  &
   location = 375.0, 31.0  &
   height = 25.0  &
   width = 116.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_newName  &
   location = 375.0, 58.0  &
   height = 25.0  &
   width = 116.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_csModel  &
   location = 375.0, 85.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = model
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_RearHitch.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 488.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_5  &
   location = 4.0, 155.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "3 point carriers"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_1  &
   location = 208.0, 153.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.9"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_2  &
   location = 308.0, 153.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.7"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_3  &
   location = 406.0, 153.0  &
   height = 27.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_6  &
   location = 208.0, 123.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_7  &
   location = 308.0, 123.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Offset Z"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_8  &
   location = 406.0, 124.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Offset X"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_2_2  &
   location = 308.0, 186.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_3_2  &
   location = 406.0, 186.0  &
   height = 27.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_1_2  &
   location = 208.0, 186.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.9"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_5_2  &
   location = 4.0, 188.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "3 point top linkage"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_2_3  &
   location = 308.0, 220.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.5"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_3_3  &
   location = 406.0, 220.0  &
   height = 27.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.field_1_3  &
   location = 208.0, 220.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.label_5_3  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 168.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "3 point cylinder mounts"
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_RearHitch.sep_2  &
   location = 4.0, 250.0  &
   height = 4.0  &
   width = 488.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface tab_container create  &
   tab_container_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1  &
   location = 8.0, 260.0  &
   height = 327.0  &
   width = 482.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   current_choice = "Tab 1"
!
interface container create  &
   container_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1  &
   height = 21.0  &
   width = 449.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Upper carrier"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_2  &
   location = 308.0, 2.0  &
   height = 292.0  &
   width = 168.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   icon_file =   &
               "C://Documents and Settings//jensbmadsen//My Documents//SDlib_pluginMedia//trunk//Adams_library//Level3//Hitch//RearHitch.bmp"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3  &
   location = 50.0, 2.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "A"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_2  &
   location = 50.0, 29.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "B"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_3  &
   location = 50.0, 56.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "C"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_4  &
   location = 50.0, 83.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "D"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_5  &
   location = 50.0, 110.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "D"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_6  &
   location = 50.0, 137.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "E"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_7  &
   location = 50.0, 164.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "F"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_8  &
   location = 50.0, 191.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "G"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_9  &
   location = 50.0, 218.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "H"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_10  &
   location = 50.0, 245.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "I"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_11  &
   location = 50.0, 272.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "J"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_1  &
   location = 70.0, 2.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_2  &
   location = 70.0, 29.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_3  &
   location = 70.0, 56.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_4  &
   location = 70.0, 83.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_5  &
   location = 70.0, 110.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_6  &
   location = 70.0, 137.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_7  &
   location = 70.0, 164.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_8  &
   location = 70.0, 191.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_9  &
   location = 70.0, 218.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_10  &
   location = 70.0, 245.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_11  &
   location = 70.0, 272.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface container create  &
   container_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_2  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Upper Carrier Z"
!
interface container create  &
   container_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Lower Carrier"
!
interface container create  &
   container_name = .SDlib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_4  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Lower Carrier Z"