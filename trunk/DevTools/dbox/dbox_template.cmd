! This file is part of SDlib_plugin.
!    
! Copyright (c) 2008 Sauer-Danfoss http://www.sauer-danfoss.com
! 
!  Permission is hereby granted, free of charge, to any person obtaining
!  a copy of this software and associated documentation files (the
!  "Software"), to deal in the Software without restriction, including
!  without limitation the rights to use, copy, modify, merge, publish,
!  distribute, sublicense, and/or sell copies of the Software, and to
!  permit persons to whom the Software is furnished to do so, subject to
!  the following conditions:
!
!  The above copyright notice and this permission notice shall be
!  included in all copies or substantial portions of the Software.
! 
!  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
!  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
!  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
!  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
!  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
!  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
!  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_template  &
   location = 743.0, 128.0  &
   height = 375.0  &
   width = 400.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_template"  &
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
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_template.button_1  &
   location = 320.0, 346.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_template.button_2  &
   location = 242.0, 346.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_template.button_3  &
   location = 164.0, 346.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_template.label_1  &
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
   label_name = .SDlib_plugin.dboxes.dbox_template.label_2  &
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
   label_name = .SDlib_plugin.dboxes.dbox_template.label_3  &
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
   label_name = .SDlib_plugin.dboxes.dbox_template.label_4  &
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
   field_name = .SDlib_plugin.dboxes.dbox_template.field_main  &
   location = 280.0, 4.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_template.field_old  &
   location = 280.0, 31.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_template.field_newName  &
   location = 280.0, 58.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_template.field_csModel  &
   location = 280.0, 85.0  &
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
   separator_name = .SDlib_plugin.dboxes.dbox_template.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
