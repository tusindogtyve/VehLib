!
interface dialog_box create  &
   dialog_box_name = .gui.dbox_testmodel  &
   location = 718.0, 71.0  &
   height = 146.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_testmodel"  &
   iconifiable = no  &
   start_commands = "var cre var = NewModelName string_value = \"\"",  &
                    "var cre var = OldModelName string_value = \"\"",  &
                    "",  &
                    "if cond = (db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\") != (none))",  &
                    "var cre var = MainModelName string_value = (eval(db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\")))",  &
                    "else",  &
                    "var cre var = MainModelName string_value = (eval(db_default( .system_defaults, \"model\")))",  &
                    "end",  &
                    "int field set field= .gui.dbox_testmodel.field_4 string = (MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "int field set field = .gui.dbox_testmodel.field_1 string = (dv_model_to_change[1])",  &
                    "",  &
                    "! By default, the new name of the model is set to the original name",  &
                    "int field set field= .gui.dbox_testmodel.field_2 string = $field_1",  &
                    "else",  &
                    "int field set field = .gui.dbox_testmodel.field_1 string = \"\"",  &
                    "end"  &
   finish_commands = "if condition = (db_exists(\"NewModelName\"))",  &
                     "  var del var = NewModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"OldModelName\"))",  &
                     "  var del var = OldModelName",  &
                     "end",  &
                     "",  &
		     !------ return view to main model
                     "default model model=(eval($_self.MainModelName))",  &
                     "model display fit_to_view=no",  &
		     !------
                     "if condition = (db_exists(\"MainModelName\"))",  &
                     "  var del var = MainModelName",  &
                     "end"  &
   execution_commands = "var mod var = NewModelName string_value = $field_2",  &
                        "",  &
                        "if cond = ((STR_IS_SPACE(\"$field_1\"))==0)",  &
                        " var mod var = OldModelName string_value = $field_1",  &
                        "else ",  &
                        " var mod var = OldModelName string_value = \"\"",  &
                        "end",  &
                        "",  &
                        "! if the name is changed, the model is renamed:",  &
                        "if condition = (STR_Compare( OldModelName[1], NewModelName[1]) != 0 && ((STR_IS_SPACE(OldModelName[1]))==0) )",  &
                        "entity modify entity = (eval(MainModelName[1]//\".\"//OldModelName[1])) new = (eval(MainModelName[1]//\".\"//NewModelName[1]))",  &
                        "end",  &
                        "",  &
                        "! Field 1 is updated, since the model name has been changed. ",  &
                        "int field set field = .gui.dbox_testmodel.field_1 string = (eval(NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval(NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")// \"testmodel\"))",  &
                        "  model copy &",  &
                        "     model_name = testmodel &",  &
                        "     new_model_name = (eval(MainModelName[1]//\".\"//NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "",  &
                        "  model delete model=testmodel",  &
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
                        "     string_value = (eval(NewModelName[1]))",  &
                        "else",  &
                        "  if condition = (db_exists(\"DV_subs\"))",  &
                        "    var mod var = DV_subs &",  &
                        "        index = (rows(DV_subs)+1) &",  &
                        "        string_value = (eval(NewModelName[1]))",  &
                        "",  &
                        "    var cre var = DV_model_to_change &",  &
                        "       index = 1 &",  &
                        "       string_value = (eval(NewModelName[1]))",  &
                        "    var mod var = DV_model_to_change &",  &
                        "       index = 2 &",  &
                        "       string_value = (rows(DV_subs)+1)",  &
                        "  else",  &
                        "    var cre var = (eval(MainModelName[1])//\".\"//\"DV_subs\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval(NewModelName[1]))",  &
                        "",  &
                        "    var cre var = DV_model_to_change &",  &
                        "       index = 1 &",  &
                        "       string_value = (eval(NewModelName[1]))",  &
                        "    var mod var = DV_model_to_change &",  &
                        "       index = 2 &",  &
                        "       string_value = (1)",  &
                        "  end",  &
                        "  if condition = (db_exists(\"DV_subs_dbox\"))",  &
                        "    var mod var = DV_subs_dbox &",  &
                        "        index = (rows(DV_subs_dbox)+1) &",  &
                        "        string_value = (eval($_self))",  &
                        "  else",  &
                        "    var cre var = (eval(MainModelName[1])//\".\"//\"DV_subs_dbox\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval($_self))",  &
                        "  end",  &
                        "end",  &
                        "",  &
                        "! Below follows the code of the dialog box ",  &
                        "",  &
                        "var mod var = .(eval(NewModelName[1])).DV_width real = $field_3"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .gui.dbox_testmodel.button_1  &
   location = 204.0, 117.0  &
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
   push_button_name = .gui.dbox_testmodel.button_2  &
   location = 126.0, 117.0  &
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
   push_button_name = .gui.dbox_testmodel.button_3  &
   location = 48.0, 117.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "!interface dialog display dialog= dbox_2",  &
              "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/dbox/createdbox\"))"
!
interface field create  &
   field_name = .gui.dbox_testmodel.field_1  &
   location = 144.0, 33.0  &
   height = 25.0  &
   width = 140.0  &
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
interface label create  &
   label_name = .gui.dbox_testmodel.label_1  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "New model name"
!
interface field create  &
   field_name = .gui.dbox_testmodel.field_2  &
   location = 144.0, 60.0  &
   height = 25.0  &
   width = 140.0  &
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
   label_name = .gui.dbox_testmodel.label_2  &
   location = 4.0, 33.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Existing model name"
!
interface field create  &
   field_name = .gui.dbox_testmodel.field_3  &
   location = 144.0, 89.0  &
   height = 25.0  &
   width = 140.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.05"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_testmodel.label_3  &
   location = 4.0, 89.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of the links"
!
interface label create  &
   label_name = .gui.dbox_testmodel.label_4  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Make a sub model of:"
!
interface field create  &
   field_name = .gui.dbox_testmodel.field_4  &
   location = 144.0, 4.0  &
   height = 25.0  &
   width = 140.0  &
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
   separator_name = .gui.dbox_testmodel.sep_1  &
   location = 4.0, 31.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .gui.dbox_testmodel.sep_2  &
   location = 4.0, 87.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
