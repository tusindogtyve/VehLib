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
   dialog_box_name = .SDlib_plugin.dboxes.dbox_backhoe  &
   location = 25.0, 51.0  &
   height = 879.0  &
   width = 400.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Backhoe"  &
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
                    "  int field set field = $_self.field_1 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Boomcyl_x)",  &
                    "  int field set field = $_self.field_2 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Boomcyl_y)",  &
                    "  int field set field = $_self.field_3 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Stick_x)",  &
                    "  int field set field = $_self.field_4 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Stickcyl_x)",  &
                    "  int field set field = $_self.field_5 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Stickcyl_y)",  &
                    "  int field set field = $_self.field_6 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Depth)",  &
                    "  int field set field = $_self.field_7 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_Width)",  &
                    "  int field set field = $_self.field_8 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Bucket_x)",  &
                    "  int field set field = $_self.field_9 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Bucketcyl_x)",  &
                    "  int field set field = $_self.field_10 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Bucketcyl_y)",  &
                    "  int field set field = $_self.field_11 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_link1_x)",  &
                    "  int field set field = $_self.field_12 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_link1_y)",  &
                    "  int field set field = $_self.field_13 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Stickcyl_x)",  &
                    "  int field set field = $_self.field_14 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Stickcyl_y)",  &
                    "  int field set field = $_self.field_15 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Depth)",  &
                    "  int field set field = $_self.field_16 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_Width)",  &
                    "  int field set field = $_self.field_17 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Link1_Length)",  &
                    "  int field set field = $_self.field_18 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Link1_Bucketcyl_x)",  &
                    "  int field set field = $_self.field_19 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Link1_Bucketcyl_y)",  &
                    "  int field set field = $_self.field_20 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Link2_Length)",  &
                    "  int field set field = $_self.field_21 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Link_Depth)",  &
                    "  int field set field = $_self.field_22 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_link_Width)",  &
                    "  int field set field = $_self.field_23 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Bucket_Length)",  &
                    "  int field set field = $_self.field_24 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Boom_theta)",  &
                    "  int field set field = $_self.field_25 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Stick_theta)",  &
                    "  int field set field = $_self.field_26 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Bucket_theta)",  &
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
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"DV_Boom_Boomcyl_x\")))",  &
                        "!#####################################################!",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  !#####################################################!",  &
                        "  !                REMEMBER TO CHANGE                   !",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Backhoe/backhoe\"))",  &
                        "  !#####################################################!",  &
                        "  model copy &",  &
                        "    !#####################################################!",  &
                        "    !                REMEMBER TO CHANGE                   !",  &
                        "     model_name = backhoe &",  &
                        "    !#####################################################!",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  !#####################################################!",  &
                        "  !                REMEMBER TO CHANGE                   !",  &
                        "  model delete model=backhoe",  &
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
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_csModel'.ground.MKR_slave_rearImp))&",  &
                        "     orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_csModel'.ground.MKR_slave_rearImp))",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! attach the sub model to the chassis ---------------------------",  &
                        "    part merge rigid_body part_name=($'field_main'.$'field_newName'.PART_to_cs) &",  &
                        "    into_part=($'field_csModel'.PART_Cs)",  &
                        "end",  &
                        "!read the values from the fields of the dialog box.",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "if condition=(db_exists(\"$'field_main'.$'field_newName'.DV_Boom_Boomcyl_x\"))",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Boomcyl_x    real=$field_1",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Boomcyl_y    real=$field_2",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Stick_x      real=$field_3",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Stickcyl_x   real=$field_4",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Stickcyl_y   real=$field_5",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Depth        real=$field_6",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_Width        real=$field_7",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Bucket_x    real=$field_8",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Bucketcyl_x real=$field_9",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Bucketcyl_y real=$field_10",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Link1_x     real=$field_11",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Link1_y     real=$field_12",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Stickcyl_x  real=$field_13",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Stickcyl_y  real=$field_14",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Depth       real=$field_15",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_Width       real=$field_16",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Link1_Length      real=$field_17",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Link1_Bucketcyl_x real=$field_18",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Link1_Bucketcyl_y real=$field_19",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Link2_Length      real=$field_20",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Link_Depth        real=$field_21",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Link_Width        real=$field_22",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Bucket_Length     real=$field_23",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Boom_theta        real=$field_24",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Stick_theta       real=$field_25",  &
                        "  var mod var=$'field_main'.$'field_newName'.DV_Bucket_theta      real=$field_26",  &
                        "!#####################################################!",  &
                        "",  &
                        "  ! Calculate the coordiantes of point where the links are joined in ",  &
                        "  ! the coordinate system of the stick. ",  &
                        "  var cre var=c &",  &
                        "    real_value=(eval(((DV_Stick_Bucket_x - DV_Stick_Link1_x)**2 + (DV_Stick_Link1_y)**2)**0.5))",  &
                        "",  &
                        "  var cre var=F &",  &
                        "    real_value=(eval(atan((DV_Stick_Link1_y)/(DV_Stick_Bucket_x - DV_Stick_Link1_x))))",  &
                        "",  &
                        "  var cre var=A &",  &
                        "    real_value= (eval(180 + DV_Bucket_theta + F))",  &
                        "",  &
                        "  var cre var=aa &",  &
                        "    real_value=(eval(((DV_Bucket_Length)**2+(c)**2-(2*DV_Bucket_Length*c*cos(A)))**0.5))",  &
                        "",  &
                        "  var cre var=B &",  &
                        "    real_value=(eval(acos(((aa)**2+(c)**2-(DV_Bucket_Length)**2)/(2*aa*c))))",  &
                        "",  &
                        "  var cre var=DD &",  &
                        "    real_value=(eval(acos(((aa)**2+(DV_Link1_Length)**2-(DV_Link2_Length)**2)/(2*aa*DV_Link1_Length))))",  &
                        "",  &
                        "  var cre var=DV_Link1_theta &",  &
                        "    real_value=(eval(F-B-DD))",  &
                        "",  &
                        "  var mod var=DV_Stick_Bucketpis_x &",  &
                        "    real_value=(eval(DV_stick_Link1_x + DV_Link1_Bucketcyl_x*cos(DV_Link1_theta) - DV_Link1_Bucketcyl_y*sin(DV_Link1_theta)))",  &
                        "  var mod var=DV_Stick_Bucketpis_y &",  &
                        "    real_value=(eval(DV_stick_Link1_y + DV_Link1_Bucketcyl_x*sin(DV_Link1_theta) + DV_Link1_Bucketcyl_y*cos(DV_Link1_theta)))",  &
                        "",  &
                        "  var mod var=DV_Stick_Link2_x &",  &
                        "    real_value=(eval(DV_Stick_Link1_x+DV_Link1_Length*cos(DV_Link1_theta)))",  &
                        "  var mod var=DV_Stick_Link2_y &",  &
                        "    real_value=(eval(DV_Stick_Link1_y+DV_Link1_Length*sin(DV_Link1_theta)))",  &
                        "",  &
                        "  var mod var=DV_Stick_Bucket_Link2_x &",  &
                        "    real_value=(eval(DV_Stick_Bucket_x + DV_Bucket_Length*cos(DV_Bucket_theta)))",  &
                        "  var mod var=DV_Stick_Bucket_Link2_y &",  &
                        "    real_value=(eval(DV_Bucket_Length*sin(DV_Bucket_theta)))",  &
                        "",  &
                        "  ! delete the variables after use.",  &
                        "  var del var=c",  &
                        "  var del var=F",  &
                        "  var del var=A",  &
                        "  var del var=aa",  &
                        "  var del var=B",  &
                        "  var del var=DD",  &
                        "  var del var=DV_Link1_theta",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_backhoe.button_1  &
   location = 320.0, 850.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_backhoe.button_2  &
   location = 242.0, 850.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_backhoe.button_3  &
   location = 164.0, 850.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_1  &
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
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_2  &
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
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_3  &
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
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_4  &
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
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_main  &
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
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_old  &
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
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_newName  &
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
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_csModel  &
   location = 280.0, 85.0  &
   height = 25.0  &
   width = 116.0  &
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
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_backhoe.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_5  &
   location = 4.0, 118.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Boomcyl_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_6  &
   location = 4.0, 145.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Boomcyl_y"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_7  &
   location = 4.0, 172.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Stick_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_8  &
   location = 4.0, 199.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Stickcyl_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_9  &
   location = 4.0, 226.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Stickcyl_y"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_10  &
   location = 4.0, 253.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Depth"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_11  &
   location = 4.0, 280.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_Width"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_1  &
   location = 320.0, 118.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.43"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_2  &
   location = 320.0, 145.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.05"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_3  &
   location = 320.0, 172.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.8"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_4  &
   location = 320.0, 199.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_5  &
   location = 320.0, 226.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.05"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_6  &
   location = 320.0, 253.0  &
   height = 25.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_7  &
   location = 320.0, 280.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.22"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_backhoe.sep_2  &
   location = 4.0, 307.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_12  &
   location = 4.0, 313.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Bucket_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_13  &
   location = 4.0, 340.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Bucketcyl_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_14  &
   location = 4.0, 367.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Bucketcyl_y"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_15  &
   location = 4.0, 394.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Link1_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_16  &
   location = 4.0, 421.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Link1_y"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_17  &
   location = 4.0, 448.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Stickcyl_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_18  &
   location = 4.0, 475.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Stickcyl_y"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_19  &
   location = 4.0, 502.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Depth"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_8  &
   location = 320.0, 313.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.57"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_9  &
   location = 320.0, 340.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.17"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_10  &
   location = 320.0, 367.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.28"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_11  &
   location = 320.0, 394.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.33"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_12  &
   location = 320.0, 421.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.05"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_13  &
   location = 320.0, 448.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.52"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_14  &
   location = 320.0, 475.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.05"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_15  &
   location = 320.0, 502.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.18"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_20  &
   location = 4.0, 529.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_Width"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_16  &
   location = 320.0, 529.0  &
   height = 25.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_backhoe.sep_2_2  &
   location = 4.0, 556.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_21  &
   location = 4.0, 562.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Link1_Length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_22  &
   location = 4.0, 589.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Link1_Bucketcyl_x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_23  &
   location = 4.0, 616.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Link1_Bucketcyl_y"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_24  &
   location = 4.0, 643.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Link2_Length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_25  &
   location = 4.0, 697.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Link_Width"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_26  &
   location = 4.0, 670.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Link_Depth"
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_backhoe.sep_2_3  &
   location = 4.0, 724.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_27  &
   location = 4.0, 730.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Bucket_Length"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_17  &
   location = 320.0, 562.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.4"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_18  &
   location = 320.0, 589.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.3"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_19  &
   location = 320.0, 616.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.09"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_20  &
   location = 320.0, 643.0  &
   height = 25.0  &
   width = 76.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_21  &
   location = 320.0, 670.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_22  &
   location = 320.0, 697.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_23  &
   location = 320.0, 730.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.29"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_28  &
   location = 4.0, 763.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Boom_thete"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_29  &
   location = 4.0, 790.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Stick_theta"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_backhoe.label_30  &
   location = 4.0, 817.0  &
   height = 25.0  &
   width = 258.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "DV_Bucket_theta"
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_backhoe.sep_2_3_2  &
   location = 4.0, 757.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_24  &
   location = 320.0, 763.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "120"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_25  &
   location = 320.0, 790.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "120"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_backhoe.field_26  &
   location = 320.0, 817.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-20"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
