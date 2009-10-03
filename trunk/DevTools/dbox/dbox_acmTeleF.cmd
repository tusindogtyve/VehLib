! This file is part of VehLib_plugin.
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
   dialog_box_name = .VehLib_plugin.dboxes.dbox_acmTeleF  &
   location = 526.0, 98.0  &
   height = 597.0  &
   width = 746.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Ackermann axle, front axle from telehandler"  &
   iconifiable = no  &
   start_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "! INSTRUCTIONS                               !",  &
                    "! Main model field in this code = $field_18  !",  &
                    "! Old name field in this code   = $field_21  !",  &
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
                    "int field set field= $_self.field_18 string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  int field set field = $_self.field_21 string = (dv_model_to_change[1])",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_19 string = $field_21",  &
                    "",  &
                    "  ! Read the values that was used last time for this sub model",  &
                    "  ! Update field width model data",  &
                    "  int field set field = $_self.field_3  string = ($'field_18.$'field_21'.DV_dst_y_axle)",  &
                    "  int field set field = $_self.field_4  string = ($'field_18.$'field_21'.DV_dst_y_wheels)",  &
                    "  int field set field = $_self.field_5  string = ($'field_18.$'field_21'.DV_dst_x_acm)",  &
                    "  int field set field = $_self.field_6  string = ($'field_18.$'field_21'.DV_dst_y_acm)",  &
                    "  int field set field = $_self.field_7  string = ($'field_18.$'field_21'.DV_dst_z_acm)",  &
                    "  int field set field = $_self.field_9  string = ($'field_18.$'field_21'.DV_cylX)",  &
                    "  int field set field = $_self.field_10 string = ($'field_18.$'field_21'.DV_cylZ)",  &
                    "  int field set field = $_self.field_16 string = ($'field_18.$'field_21'.DV_camber)",  &
                    "  int field set field = $_self.field_17 string = ($'field_18.$'field_21'.DV_caster)",  &
                    "    !steering cylinder",  &
                    "  int field set field = $_self.field_11 string = ($'field_18.$'field_21'.DV_cyl_maxL)",  &
                    "  int field set field = $_self.field_12 string = ($'field_18.$'field_21'.DV_cyl_minL)",  &
                    "  int field set field = $_self.field_13 string = ($'field_18.$'field_21'.DV_cyl_iniL)",  &
                    "  int field set field = $_self.field_14 string = ($'field_18.$'field_21'.DV_cyl_rc)",  &
                    "  int field set field = $_self.field_15 string = ($'field_18.$'field_21'.DV_cyl_rp)",  &
                    "    !sliding cylinder",  &
                    "  int field set field = $_self.field_121 string = ($'field_18.$'field_21'.DV_Cyl_slide_max_length)",  &
                    "  int field set field = $_self.field_122 string = ($'field_18.$'field_21'.DV_Cyl_slide_min_length)",  &
                    "  int field set field = $_self.field_123 string = ($'field_18.$'field_21'.DV_Cyl_slide_ini_length)",  &
                    "  int field set field = $_self.field_124 string = ($'field_18.$'field_21'.DV_Cyl_slide_rc)",  &
                    "  int field set field = $_self.field_125 string = ($'field_18.$'field_21'.DV_Cyl_slide_rp)",  &
                    "    !The lifting cylinders",  &
                    "  int field set field = $_self.field_126 string = ($'field_18.$'field_21'.DV_Cyl_liftCyl_R_max_length)",  &
                    "  int field set field = $_self.field_127 string = ($'field_18.$'field_21'.DV_Cyl_liftCyl_R_min_length)",  &
                    "  int field set field = $_self.field_128 string = ($'field_18.$'field_21'.DV_Cyl_liftCyl_R_ini_length)",  &
                    "  int field set field = $_self.field_129 string = ($'field_18.$'field_21'.DV_Cyl_liftCyl_L_rc)        ",  &
                    "  int field set field = $_self.field_130 string = ($'field_18.$'field_21'.DV_Cyl_liftCyl_L_rp)        ",  &
                    "    !The positoning of all kind of cylinders and rods",  &
                    "  int field set field = $_self.field_131 string = (eval(\"{\"//$'field_18.$'field_21'.DV_liftCyls_top_xyz[1]//\",\"//$'field_18.$'field_21'.DV_liftCyls_top_xyz[2]//\",\"//$'field_18.$'field_21'.DV_liftCyls_top_xyz[3]//\"}\"))     ",  &
                    "  int field set field = $_self.field_132 string = (eval(\"{\"//$'field_18.$'field_21'.DV_liftCyl_bottom_xyz[1]//\",\"//$'field_18.$'field_21'.DV_liftCyl_bottom_xyz[2]//\",\"//$'field_18.$'field_21'.DV_liftCyl_bottom_xyz[3]//\"}\"))",  &
                    "  int field set field = $_self.field_133 string = (eval(\"{\"//$'field_18.$'field_21'.DV_topRods_cs_xyz[1]//\",\"//$'field_18.$'field_21'.DV_topRods_cs_xyz[2]//\",\"//$'field_18.$'field_21'.DV_topRods_cs_xyz[3]//\"}\"))      ",  &
                    "  int field set field = $_self.field_134 string = (eval(\"{\"//$'field_18.$'field_21'.DV_topRods_axle_xyz[1]//\",\"//$'field_18.$'field_21'.DV_topRods_axle_xyz[2]//\",\"//$'field_18.$'field_21'.DV_topRods_axle_xyz[3]//\"}\"))     ",  &
                    "  int field set field = $_self.field_135 string = (eval(\"{\"//$'field_18.$'field_21'.DV_bottomRods_cs_xyz[1]//\",\"//$'field_18.$'field_21'.DV_bottomRods_cs_xyz[2]//\",\"//$'field_18.$'field_21'.DV_bottomRods_cs_xyz[3]//\"}\"))    ",  &
                    "  int field set field = $_self.field_136 string = (eval(\"{\"//$'field_18.$'field_21'.DV_bottomRods_axle_xyz[1]//\",\"//$'field_18.$'field_21'.DV_bottomRods_axle_xyz[2]//\",\"//$'field_18.$'field_21'.DV_bottomRods_axle_xyz[3]//\"}\"))  ",  &
                    "  int field set field = $_self.field_137 string = (eval(\"{\"//$'field_18.$'field_21'.DV_slideCyl_cylmount_xyz[1]//\",\"//$'field_18.$'field_21'.DV_slideCyl_cylmount_xyz[2]//\",\"//$'field_18.$'field_21'.DV_slideCyl_cylmount_xyz[3]//\"}\"))",  &
                    "  int field set field = $_self.field_138 string = (eval(\"{\"//$'field_18.$'field_21'.DV_slideCyl_pismount_xyz[1]//\",\"//$'field_18.$'field_21'.DV_slideCyl_pismount_xyz[2]//\",\"//$'field_18.$'field_21'.DV_slideCyl_pismount_xyz[3]//\"}\"))",  &
                    "",  &
                    "else",  &
                    "  !There is no old model name...",  &
                    "  int field set field = $_self.field_21 string = \"\"",  &
                    "",  &
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
   execution_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! INSTRUCTIONS                               !",  &
                        "! Main model field in this code = $field_18  !",  &
                        "! Old name field in this code   = $field_21  !",  &
                        "! New name field in this code   = $field_19  !",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "",  &
                        "! Get the new name of the sub model",  &
                        "var mod var = $_self.NewModelName string_value = $field_19",  &
                        "",  &
                        "! If there is a old sub model put the name in a variable",  &
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
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Steering/acmTeleF\"))",  &
                        "",  &
                        "  !Rename som markers",  &
                        "  entity modify entity=MKR_wheel_FL new_entity_name=MKR_wheel_$'field_20'L_axle",  &
                        "  entity modify entity=MKR_wheel_FR new_entity_name=MKR_wheel_$'field_20'R_axle",  &
                        "",  &
                        "  model copy &",  &
                        "     model_name =  acmTeleF&",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=acmTeleF",  &
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
                        "",  &
                        "!Let's make a variable for the path of the objects in this sub model.",  &
                        "var mod var=$_self.path string_value=(eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "",  &
                        "if condition=((db_exists(\"$'field_22'.part_cs\")) && db_exists (\"MKR_slave_axle_$'field_20'\"))",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Place this axle. ----------------------------------------------",  &
                        "    marker modify &",  &
                        "     marker_name = (eval(eval($_self.path[1]).ground.MKR_master)) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_22'.ground.MKR_slave_axle_$'field_20'))&",  &
                        "     orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_22'.ground.MKR_slave_axle_$'field_20'))",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! attach the acmTeleF to the chassis -----------------------------",  &
                        "    if condition=(db_exists (eval($_self.path[1]//\".PART_to_cs\")))",  &
                        "      part merge rigid_body part_name=(eval($_self.path[1]//\".PART_to_cs\")) &",  &
                        "      into_part=($'field_22'.PART_Cs)",  &
                        "    end",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Place the rear left tire --------------------------------------",  &
                        "    marker modify &",  &
                        "     marker_name = $field_22.ground.MKR_wheel_$'field_20'L &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , (eval(eval($_self.path[1]).PART_acmL.MKR_wheel_$'field_20'L_axle)) ))",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Place the rear right tire -------------------------------------",  &
                        "    marker modify &",  &
                        "     marker_name = $field_22.ground.MKR_wheel_$'field_20'R &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , (eval(eval($_self.path[1]).PART_acmR.MKR_wheel_$'field_20'R_axle)) ))",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Create revolute joint for rear left wheel ---------------------",  &
                        "    if condition=(db_exists (\"$'field_22'.JT_wheel_$'field_20'L\"))",  &
                        "      !We don't need to create the revolute joint twice",  &
                        "    else",  &
                        "      marker create marker=$'field_22'.wheel_$'field_20'L.wheel_part.MKR_wheel_$'field_20'L_wheel &",  &
                        "           location = (LOC_RELATIVE_TO( {0,0,0} , (eval(eval($_self.path[1]).PART_acmL.MKR_wheel_$'field_20'L_axle)) )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,0,0} , (eval(eval($_self.path[1]).PART_acmL.MKR_wheel_$'field_20'L_axle)) ))",  &
                        "",  &
                        "      constraint create joint Revolute &",  &
                        "          joint_name=$'field_22'.JT_wheel_$'field_20'L &",  &
                        "          i_marker_name=(eval(eval($_self.path[1]).PART_acmL.MKR_wheel_$'field_20'L_axle)) &",  &
                        "          j_marker_name=$'field_22'.wheel_$'field_20'L.wheel_part.MKR_wheel_$'field_20'L_wheel",  &
                        "    end",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Create revolute joint for rear right wheel --------------------",  &
                        "    if condition=(db_exists (\"$'field_18'.JT_wheel_$'field_20'R\"))",  &
                        "      !We don't need to create the revolute joint twice",  &
                        "    else",  &
                        "      marker create marker=$'field_22'.wheel_$'field_20'R.wheel_part.MKR_wheel_$'field_20'R_wheel &",  &
                        "           location = (LOC_RELATIVE_TO( {0,0,0} , (eval(eval($_self.path[1]).PART_acmR.MKR_wheel_$'field_20'R_axle)) ))&",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,0,0} , (eval(eval($_self.path[1]).PART_acmR.MKR_wheel_$'field_20'R_axle)) ))",  &
                        "",  &
                        "      constraint create joint Revolute &",  &
                        "          joint_name=$'field_22'.JT_wheel_$'field_20'R &",  &
                        "          i_marker_name=(eval(eval($_self.path[1]).PART_acmR.MKR_wheel_$'field_20'R_axle)) &",  &
                        "          j_marker_name=$'field_22'.wheel_$'field_20'R.wheel_part.MKR_wheel_$'field_20'R_wheel",  &
                        "    end",  &
                        "  ",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "  !!! Rename marker on chassis, so that it is impossible to find next time somone ",  &
                        "  !!! wants to place an axle on this marker. Ha Ha!",  &
                        "  entity modify entity = $'field_22'.ground.MKR_slave_axle_$'field_20'      new = $'field_22'.ground.MKR_slave_axle_$'field_20'_used",  &
                        "",  &
                        "end",  &
                        "",  &
                        "if condition=(db_exists(eval($_self.path[1]//\".ground.MKR_master\")))",  &
                        "  ! Update model width field data",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_y_axle\"))   real=$field_3",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_y_wheels\")) real=$field_4",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_x_acm\"))    real=$field_5",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_y_acm\"))    real=$field_6",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_z_acm\"))    real=$field_7",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cylX\"))         real=$field_9",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cylZ\"))         real=$field_10",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_camber\"))       real=$field_16",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_caster\"))       real=$field_17",  &
                        "    !steering cylinder",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_maxL\")) real=$field_11",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_minL\")) real=$field_12",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_iniL\")) real=$field_13",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_rc\"))   real=$field_14",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_rp\"))   real=$field_15",  &
                        "    !sliding cylinder",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_slide_max_length\")) real=$field_121",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_slide_min_length\")) real=$field_122",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_slide_ini_length\")) real=$field_123",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_slide_rc\"))         real=$field_124",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_slide_rp\"))         real=$field_125",  &
                        "    !The lifting cylinders",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_R_max_length\")) real=$field_126",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_L_max_length\")) real=$field_126",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_R_min_length\")) real=$field_127",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_L_min_length\")) real=$field_127",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_R_ini_length\")) real=$field_128",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_L_ini_length\")) real=$field_128",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_R_rc\"))         real=$field_129",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_L_rc\"))         real=$field_129",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_R_rp\"))         real=$field_130",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_Cyl_liftCyl_L_rp\"))         real=$field_130",  &
                        "    !The positoning of all kind of cylinders and rods",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_liftCyls_top_xyz\"))      real=(eval($'field_131'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_liftCyl_bottom_xyz\"))    real=(eval($'field_132'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_topRods_cs_xyz\"))        real=(eval($'field_133'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_topRods_axle_xyz\"))      real=(eval($'field_134'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_bottomRods_cs_xyz\"))     real=(eval($'field_135'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_bottomRods_axle_xyz\"))   real=(eval($'field_136'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_slideCyl_cylmount_xyz\")) real=(eval($'field_137'))",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_slideCyl_pismount_xyz\")) real=(eval($'field_138'))",  &
                        "else",  &
                        "!  mdi VehLib_plugin.dboxes_utl_alert_box_1 type=\"Error\" text=\"Wrong (Name of sub model) or (number of axle)\"",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_acmTeleF.button_1  &
   location = 666.0, 568.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Cancel"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_acmTeleF.button_2  &
   location = 510.0, 568.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "createdbox"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_18  &
   location = 309.0, 2.0001  &
   height = 25.0  &
   width = 135.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "model_1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_18  &
   location = 4.0, 4.0  &
   height = 27.0  &
   width = 251.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name:"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_acmTeleF.button_4  &
   location = 588.0, 568.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog= $_parent"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_19  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 251.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of sub model"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_19  &
   location = 309.0, 56.0  &
   height = 25.0  &
   width = 135.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "steering"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = alpha_numeric  &
   add_quotes = no
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_26  &
   location = 4.0, 33.0  &
   height = 25.0  &
   width = 251.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model:"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_21  &
   location = 309.0, 29.0  &
   height = 25.0  &
   width = 135.0  &
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
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_21  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 251.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_22  &
   location = 309.0, 83.0  &
   height = 25.0  &
   width = 135.0  &
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
variable create  &
   variable_name = .VehLib_plugin.dboxes.dbox_acmTeleF.path  &
   string_value = ".MODEL_1.front_axle"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_3  &
   location = 4.0, 137.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of front axle"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_4  &
   location = 4.0, 191.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "AckermannX"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_5  &
   location = 4.0, 218.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "AckermannY"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_6  &
   location = 4.0, 245.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "AckermannZ"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_7  &
   location = 4.0, 272.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of cylinder (x)"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_8  &
   location = 4.0, 299.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of cylinder (z)"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_10  &
   location = 450.0, 4.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Steering cylinder, max length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_11  &
   location = 450.0, 31.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Steering cylinder, min length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_12  &
   location = 450.0, 85.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Steering cylinder, radius"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_13  &
   location = 450.0, 58.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Steering cylinder, initial length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_14  &
   location = 450.0, 112.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Steering cylinder, piston rod radius"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_15  &
   location = 4.0, 326.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Camber"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_16  &
   location = 4.0, 353.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Caster"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_3  &
   location = 368.0, 137.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.405"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_4  &
   location = 368.0, 164.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.825"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_5  &
   location = 368.0, 191.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.21"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_6  &
   location = 368.0, 218.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.05"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_7  &
   location = 368.0, 245.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.13"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_9  &
   location = 368.0, 272.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.16"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_10  &
   location = 368.0, 299.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.13"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_11  &
   location = 668.0, 4.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.385"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_12  &
   location = 668.0, 31.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.275"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_13  &
   location = 668.0, 58.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_14  &
   location = 668.0, 85.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.047"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_15  &
   location = 668.0, 112.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.022"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_16  &
   location = 368.0, 326.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "16"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_17  &
   location = 4.0, 164.0  &
   height = 25.0  &
   width = 358.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance between center of wheels"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_17  &
   location = 368.0, 353.0  &
   height = 25.0  &
   width = 76.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_20  &
   location = 368.0, 110.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = integer  &
   upper_check = none  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_acmTeleF.sep_1  &
   location = 446.0, 4.0  &
   height = 590.0  &
   width = 2.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_acmTeleF.sep_2  &
   location = 450.0, 139.0  &
   height = 2.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_121  &
   location = 450.0, 143.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Slide cylinder, max length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_122  &
   location = 450.0, 170.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Slide cylinder, min length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_123  &
   location = 450.0, 197.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Slide cylinder, initial length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_124  &
   location = 450.0, 224.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Slide cylinder, radius"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_125  &
   location = 450.0, 251.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Slide cylinder, piston rod radius"
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_acmTeleF.sep_3  &
   location = 450.0, 278.0  &
   height = 2.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_126  &
   location = 450.0, 282.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders, max length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_127  &
   location = 450.0, 309.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders, min length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_128  &
   location = 450.0, 336.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders, initial length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_129  &
   location = 450.0, 363.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders, radius"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_130  &
   location = 450.0, 390.0  &
   height = 25.0  &
   width = 216.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders, piston rod radius"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_121  &
   location = 668.0, 143.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.585"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_122  &
   location = 668.0, 170.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.365"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_123  &
   location = 668.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.585"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_124  &
   location = 668.0, 224.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.03"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_125  &
   location = 668.0, 251.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.018"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_126  &
   location = 668.0, 282.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_127  &
   location = 668.0, 309.0  &
   height = 25.0  &
   width = 76.0  &
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
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_128  &
   location = 668.0, 336.0  &
   height = 25.0  &
   width = 76.0  &
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
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_129  &
   location = 668.0, 363.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.047"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_130  &
   location = 668.0, 390.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.022"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_131  &
   location = 4.0, 380.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders mount on chassis {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_132  &
   location = 4.0, 407.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Lifting cylinders mount on axle {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_133  &
   location = 4.0, 434.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Top balanceing rod mount on chassis {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_134  &
   location = 4.0, 461.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Top balanceing rod mount on axle {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_135  &
   location = 4.0, 488.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Buttom balanceing rod mount on chassis {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_136  &
   location = 4.0, 515.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Buttom balanceing rod mount on axle {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_137  &
   location = 4.0, 542.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sliding cylinder mount on chassis {x,y,z}"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_acmTeleF.label_138  &
   location = 4.0, 569.0  &
   height = 25.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sliding cylinder mount on axle {x,y,z}"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_131  &
   location = 290.0, 380.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{0, 0.489, 0.545}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_132  &
   location = 290.0, 407.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{0, 0.489, 0.195}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_133  &
   location = 290.0, 434.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{-0.526, 0.25, 0.25}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_134  &
   location = 290.0, 461.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{0.0, 0.313, 0.25}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_135  &
   location = 290.0, 488.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{-0.527, 0.24, -0.15}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_136  &
   location = 290.0, 515.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{0.0, 0.3, -0.15}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_137  &
   location = 290.0, 542.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{-0.376,0.24,0.15}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_acmTeleF.field_138  &
   location = 290.0, 569.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{-0.34,-0.24,0.18}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
