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
   dialog_box_name = .SDlib_plugin.dboxes.dbox_TelBoom  &
   location = 932.0, 144.0  &
   height = 522.0  &
   width = 340.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_TelBoom"  &
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
                    "      string = ($'field_main.$'field_newName'.Dv_Boom1_Lengthtot)",  &
                    "  int field set field = $_self.field_2 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom1_Width)",  &
                    "  int field set field = $_self.field_3 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom1_Height)",  &
                    "  int field set field = $_self.field_4 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom1_Thickness)",  &
                    "  int field set field = $_self.field_5 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom2_Lengthtot)",  &
                    "  int field set field = $_self.field_6 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom2_Width)",  &
                    "  int field set field = $_self.field_7 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom2_Height)",  &
                    "  int field set field = $_self.field_8 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom2_Thickness)",  &
                    "  int field set field = $_self.field_9 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom3_Lengthtot)",  &
                    "  int field set field = $_self.field_10 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom3_Width)",  &
                    "  int field set field = $_self.field_11 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom3_Height)",  &
                    "  int field set field = $_self.field_12 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Boom3_Thickness)",  &
                    "  int field set field = $_self.field_13 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_Lengthtot)",  &
                    "  !#####################################################!",  &
                    "else",  &
                    "  !There is no old model name...",  &
                    "  int field set field = $_self.field_old string = \"\"",  &
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
                        "",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"DV_Boom1_Lengthtot\")))",  &
                        "",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/TelBoom/TelBoom\"))",  &
                        "  model copy &",  &
                        "     model_name = TelBoom &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=TelBoom",  &
                        "",  &
                        "   default model model = (eval($_self.MainModelName[1]))",  &
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
                        "",  &
                        "if condition=(db_exists(\"$'field_main'.$'field_newName'.DV_Boom1_Lengthtot\"))",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Define the characteristics of the first beam",  &
                        "",  &
                        "! Length",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom1_Lengthtot real = $field_1",  &
                        "! Width",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom1_Width real = $field_2",  &
                        "! Height",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom1_Height real = $field_3",  &
                        "! Thickness",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom1_Thickness real = $field_4",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Define the length of the second beam",  &
                        "",  &
                        "! Length",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom2_Lengthtot real = $field_5",  &
                        "! Width",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom2_Width real = $field_6",  &
                        "! Height",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom2_Height real = $field_7",  &
                        "! Thickness",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom2_Thickness real = $field_8",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Define the length of the third beam",  &
                        "",  &
                        "!Length",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom3_Lengthtot real = $field_9",  &
                        "! Width",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom3_Width real = $field_10",  &
                        "! Height",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom3_Height real = $field_11",  &
                        "! Thickness",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom3_Thickness real = $field_12",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Length of the telescopic boom ",  &
                        "",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Lengthtot real = $field_13",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Calculation of k_C",  &
                        "",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom1_kC real = ( (207000e6) * ( ( ($'field_main'.$'field_newName'.Dv_Boom1_Width) * ($'field_main'.$'field_newName'.Dv_Boom1_Height)^3 /12) - ( (($'field_main'.$'field_newName'.Dv_Boom1_Width)-2*($'field_main'.$'field_newName'.Dv_Boom1_Thickness)) * (($'field_main'.$'field_newName'.Dv_Boom1_Height)-2*($'field_main'.$'field_newName'.Dv_Boom1_Thickness))^3 /12) ) / ($'field_main'.$'field_newName'.Dv_Boom1_Length) )",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom2_kC real = ( (207000e6) * ( ( ($'field_main'.$'field_newName'.Dv_Boom2_Width) * ($'field_main'.$'field_newName'.Dv_Boom2_Height)^3 /12) - ( (($'field_main'.$'field_newName'.Dv_Boom2_Width)-2*($'field_main'.$'field_newName'.Dv_Boom2_Thickness)) * (($'field_main'.$'field_newName'.Dv_Boom2_Height)-2*($'field_main'.$'field_newName'.Dv_Boom2_Thickness))^3 /12) ) / ($'field_main'.$'field_newName'.Dv_Boom2_Length) )",  &
                        "variable modify variable = $'field_main'.$'field_newName'.Dv_Boom3_kC real = ( (207000e6) * ( ( ($'field_main'.$'field_newName'.Dv_Boom3_Width) * ($'field_main'.$'field_newName'.Dv_Boom3_Height)^3 /12) - ( (($'field_main'.$'field_newName'.Dv_Boom3_Width)-2*($'field_main'.$'field_newName'.Dv_Boom3_Thickness)) * (($'field_main'.$'field_newName'.Dv_Boom3_Height)-2*($'field_main'.$'field_newName'.Dv_Boom3_Thickness))^3 /12) ) / ($'field_main'.$'field_newName'.Dv_Boom3_Length) )",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Define the parts for the cylindrical joints ",  &
                        "",  &
                        "variable modify variable = $'field_main'.$'field_newName'.DV_x real = (eval(RTOI(($'field_main'.$'field_newName'.Dv_Boom1_Lengthtot - $'field_main'.$'field_newName'.Dv_Boom2_pos)/($'field_main'.$'field_newName'.Dv_Boom2_Length))))",  &
                        "",  &
                        "constraint modify joint general &",  &
                        "   joint_name=$'field_main'.$'field_newName'.JOINT_26 &",  &
                        "   type=Revolute &",  &
                        "   i_part_name=$'field_main'.$'field_newName'.PART_Boom1_5 &",  &
                        "   j_part_name=(eval(\"$'field_main'.$'field_newName'.PART_Boom2_\"//eval(RTOI($'field_main'.$'field_newName'.DV_x+1)))) ",  &
                        "",  &
                        "variable modify variable = $'field_main'.$'field_newName'.DV_y real = (eval(RTOI(($'field_main'.$'field_newName'.Dv_Boom2_lengthtot + $'field_main'.$'field_newName'.Dv_Boom2_pos - $'field_main'.$'field_newName'.Dv_Boom3_pos)/($'field_main'.$'field_newName'.Dv_Boom3_Length))))",  &
                        "",  &
                        "constraint modify joint general &",  &
                        "   joint_name=$'field_main'.$'field_newName'.JOINT_27 &",  &
                        "   type=Revolute &",  &
                        "   i_part_name=$'field_main'.$'field_newName'.PART_Boom2_5 &",  &
                        "   j_part_name=(eval(\"$'field_main'.$'field_newName'.PART_Boom3_\"//eval(RTOI($'field_main'.$'field_newName'.DV_y+1)))) ",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! Define the part where the spring is applied",  &
                        "variable modify variable = $'field_main'.$'field_newName'.DV_w real = (eval(RTOI(($'field_main'.$'field_newName'.Dv_Boom2_pos)/($'field_main'.$'field_newName'.Dv_Boom1_Length))))",  &
                        "variable modify variable = $'field_main'.$'field_newName'.DV_z real = (eval(RTOI(($'field_main'.$'field_newName'.Dv_Boom3_pos - $'field_main'.$'field_newName'.Dv_Boom2_pos)/($'field_main'.$'field_newName'.Dv_Boom2_Length))))",  &
                        "                       ",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! CREATE SPRING_1",  &
                        "if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.SPRING_1\"))",  &
                        "    if condition= ((eval($'field_main'.$'field_newName'.DV_last_w))==(eval($'field_main'.$'field_newName'.DV_w)))",  &
                        "    ",  &
                        "    else",  &
                        "    marker modify &",  &
                        "        marker_name=(eval(\"$'field_main'.$'field_newName'.PART_Boom1_\"//eval(RTOI($'field_main'.$'field_newName'.DV_last_w+1))//\".MKR_Boom1_2_1\")) &",  &
                        "    new_marker_name=(eval(\"$'field_main'.$'field_newName'.PART_Boom1_\"//eval(RTOI($'field_main'.$'field_newName'.DV_w+1))//\".MKR_Boom1_2_1\")) &        ",  &
                        "           location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom2_pos, $'field_main'.$'field_newName'.Dv_Boom1_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom1_thickness, 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "        orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "    end",  &
                        "  marker modify marker=$'field_main'.$'field_newName'.PART_Boom2_1.MKR_Boom1_2_2 &",  &
                        "         location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom2_pos, -($'field_main'.$'field_newName'.Dv_Boom2_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom2_thickness), 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "      orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "else",  &
                        "  marker create marker=(eval(\"$'field_main'.$'field_newName'.PART_Boom1_\"//eval(RTOI($'field_main'.$'field_newName'.DV_w+1))//\".MKR_Boom1_2_1\")) &",  &
                        "        location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom2_pos, $'field_main'.$'field_newName'.Dv_Boom1_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom1_thickness, 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "     orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "",  &
                        "  marker create marker=$'field_main'.$'field_newName'.PART_Boom2_1.MKR_Boom1_2_2 &",  &
                        "        location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom2_pos, -($'field_main'.$'field_newName'.Dv_Boom2_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom2_thickness), 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "     orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "  undo begin suppress=yes",  &
                        "     assembly create instance instance=$'field_main'.$'field_newName'.SPRING_1 &",  &
                        "        definition=.mdi.forces.spring",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.i_marker obj=(eval(\"$'field_main'.$'field_newName'.PART_Boom1_\"//eval(RTOI($'field_main'.$'field_newName'.DV_w+1))//\".MKR_Boom1_2_1\"))",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.j_marker obj=($'field_main'.$'field_newName'.PART_Boom2_1.MKR_Boom1_2_2)",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.stiffness_mode str=\"linear\"",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.stiffness_coefficient real=($'field_main'.$'field_newName'.DV_Boom1_2_Stiffness(newton/meter))",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.stiffness_spline obj=(none)",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.damping_mode str=\"linear\"",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.damping_coefficient real=(15.0(newton-sec/meter))",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.damping_spline obj=(none)",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.free_length_mode str=\"design_length\"",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.i_dynamic_visibility str=\"on\"",  &
                        "     variable modify variable=$'field_main'.$'field_newName'.SPRING_1.j_dynamic_visibility str=\"off\"",  &
                        "     entity attributes entity_name=$'field_main'.$'field_newName'.SPRING_1 color=red",  &
                        "end",  &
                        "undo end",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! CREATE SPRING_2",  &
                        "if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.SPRING_2\"))",  &
                        " if condition=((eval($'field_main'.$'field_newName'.DV_last_z))==(eval($'field_main'.$'field_newName'.DV_z)))",  &
                        "",  &
                        " else",  &
                        " marker modify &",  &
                        "     marker_name=(eval(\"$'field_main'.$'field_newName'.PART_Boom2_\"//eval(RTOI($'field_main'.$'field_newName'.DV_last_z+1))//\".MKR_Boom2_3_1\")) &",  &
                        " new_marker_name=(eval(\"$'field_main'.$'field_newName'.PART_Boom2_\"//eval(RTOI($'field_main'.$'field_newName'.DV_z+1))//\".MKR_Boom2_3_1\")) &",  &
                        "        location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom3_pos, $'field_main'.$'field_newName'.Dv_Boom2_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom2_thickness, 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "     orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        " end",  &
                        "marker modify marker=$'field_main'.$'field_newName'.PART_Boom3_1.MKR_Boom2_3_2 &",  &
                        "    location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom3_pos, -($'field_main'.$'field_newName'.Dv_Boom3_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom3_thickness), 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "    orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "else",  &
                        "marker create marker=(eval(\"$'field_main'.$'field_newName'.PART_Boom2_\"//eval(RTOI($'field_main'.$'field_newName'.DV_z+1))//\".MKR_Boom2_3_1\")) &",  &
                        "    location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom3_pos, $'field_main'.$'field_newName'.Dv_Boom2_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom2_thickness, 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "    orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "",  &
                        "marker create marker=$'field_main'.$'field_newName'.PART_Boom3_1.MKR_Boom2_3_2 &",  &
                        "    location=(LOC_RELATIVE_TO({$'field_main'.$'field_newName'.Dv_Boom3_pos, -($'field_main'.$'field_newName'.Dv_Boom3_Height / 2 - $'field_main'.$'field_newName'.Dv_Boom3_thickness), 0.0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom)) &",  &
                        "    orientation=(ORI_RELATIVE_TO({0,0,0}, $'field_main'.$'field_newName'.ground.Mkr_Master_Boom))",  &
                        "undo begin suppress=yes",  &
                        "   assembly create instance instance=$'field_main'.$'field_newName'.SPRING_2 &",  &
                        "      definition=.mdi.forces.spring",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.i_marker obj=(eval(\"$'field_main'.$'field_newName'.PART_Boom2_\"//eval(RTOI($'field_main'.$'field_newName'.DV_z+1))//\".MKR_Boom2_3_1\"))",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.j_marker obj=($'field_main'.$'field_newName'.PART_Boom3_1.MKR_Boom2_3_2)",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.stiffness_mode str=\"linear\"",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.stiffness_coefficient real=($'field_main'.$'field_newName'.DV_Boom2_3_Stiffness(newton/meter))",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.stiffness_spline obj=(none)",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.damping_mode str=\"linear\"",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.damping_coefficient real=(15.0(newton-sec/meter))",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.damping_spline obj=(none)",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.free_length_mode str=\"design_length\"",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.i_dynamic_visibility str=\"on\"",  &
                        "   variable modify variable=$'field_main'.$'field_newName'.SPRING_2.j_dynamic_visibility str=\"off\"",  &
                        "   entity attributes entity_name=$'field_main'.$'field_newName'.SPRING_2 color=red",  &
                        "end",  &
                        "undo end",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! ",  &
                        "variable modify variable= $'field_main'.$'field_newName'.DV_last_w real= (eval($'field_main'.$'field_newName'.DV_w))",  &
                        "variable modify variable= $'field_main'.$'field_newName'.DV_last_z real= (eval($'field_main'.$'field_newName'.DV_z))"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_TelBoom.button_1  &
   location = 260.0, 493.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_TelBoom.button_2  &
   location = 182.0, 493.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_TelBoom.button_3  &
   location = 104.0, 493.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_1  &
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
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_2  &
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
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_3  &
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
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_4  &
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
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_main  &
   location = 220.0, 4.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_old  &
   location = 220.0, 31.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_newName  &
   location = 220.0, 58.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "TelBoom"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = alpha_numeric  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_csModel  &
   location = 220.0, 85.0  &
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
   separator_name = .SDlib_plugin.dboxes.dbox_TelBoom.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 332.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_5  &
   location = 4.0, 118.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of the first beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_6  &
   location = 4.0, 145.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of the first beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_7  &
   location = 4.0, 172.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of the first beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_8  &
   location = 4.0, 199.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Thickness of the first beam"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_1  &
   location = 220.0, 118.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "4.346"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_2  &
   location = 220.0, 145.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.308"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_3  &
   location = 220.0, 172.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.395"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_4  &
   location = 220.0, 199.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.01"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_TelBoom.sep_2  &
   location = 4.0, 226.0  &
   height = 4.0  &
   width = 332.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_9  &
   location = 4.0, 232.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of the second beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_10  &
   location = 4.0, 259.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of the second beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_11  &
   location = 4.0, 286.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of the second beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_12  &
   location = 4.0, 313.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Thickness of the second beam"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_5  &
   location = 220.0, 232.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3.224"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_6  &
   location = 220.0, 259.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.262"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_7  &
   location = 220.0, 286.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.325"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_8  &
   location = 220.0, 313.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.008"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_TelBoom.sep_3  &
   location = 4.0, 340.0  &
   height = 4.0  &
   width = 332.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_13  &
   location = 4.0, 346.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of the third beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_14  &
   location = 4.0, 373.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of the third beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_15  &
   location = 4.0, 400.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of the third beam"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_16  &
   location = 4.0, 427.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Thickness of the third beam"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_9  &
   location = 220.0, 346.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3.08"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_10  &
   location = 220.0, 373.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.232"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_11  &
   location = 220.0, 400.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.294"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_12  &
   location = 220.0, 427.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.006"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_TelBoom.sep_4  &
   location = 4.0, 454.0  &
   height = 4.0  &
   width = 332.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_TelBoom.label_17  &
   location = 4.0, 460.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of the telescopic boom"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_TelBoom.field_13  &
   location = 220.0, 460.0  &
   height = 25.0  &
   width = 116.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "10.25"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
