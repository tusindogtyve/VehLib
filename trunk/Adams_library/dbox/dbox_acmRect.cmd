!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_acmRect  &
   location = 662.0, 150.0  &
   height = 633.0  &
   width = 507.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Ackermann axle, round axle"  &
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
                    "  int field set field = $_self.field_1 string = ($'field_18.$'field_21'.DV_csZ)",  &
                    "  int field set field = $_self.field_2 string = ($'field_18.$'field_21'.DV_csX)",  &
                    "  int field set field = $_self.field_3 string = ($'field_18.$'field_21'.DV_dst_y_axle)",  &
                    "  int field set field = $_self.field_4 string = ($'field_18.$'field_21'.DV_dst_y_wheels)",  &
                    "  int field set field = $_self.field_5 string = ($'field_18.$'field_21'.DV_dst_x_acm)",  &
                    "  int field set field = $_self.field_6 string = ($'field_18.$'field_21'.DV_dst_y_acm)",  &
                    "  int field set field = $_self.field_7 string = ($'field_18.$'field_21'.DV_dst_z_acm)",  &
                    "  int field set field = $_self.field_8 string = ($'field_18.$'field_21'.DV_ms_tiltAngle)",  &
                    "  int field set field = $_self.field_9 string = ($'field_18.$'field_21'.DV_cylX)",  &
                    "  int field set field = $_self.field_10 string = ($'field_18.$'field_21'.DV_cylZ)",  &
                    "  int field set field = $_self.field_11 string = ($'field_18.$'field_21'.DV_cyl_maxL)",  &
                    "  int field set field = $_self.field_12 string = ($'field_18.$'field_21'.DV_cyl_minL)",  &
                    "  int field set field = $_self.field_13 string = ($'field_18.$'field_21'.DV_cyl_iniL)",  &
                    "  int field set field = $_self.field_14 string = ($'field_18.$'field_21'.DV_cyl_rc)",  &
                    "  int field set field = $_self.field_15 string = ($'field_18.$'field_21'.DV_cyl_rp)",  &
                    "  int field set field = $_self.field_16 string = ($'field_18.$'field_21'.DV_camber)",  &
                    "  int field set field = $_self.field_17 string = ($'field_18.$'field_21'.DV_caster)",  &
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
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Steering/acmRect\"))",  &
                        "",  &
                        "  !Rename som markers",  &
                        "  entity modify entity=MKR_wheel_FL new_entity_name=MKR_wheel_$'field_20'L_axle",  &
                        "  entity modify entity=MKR_wheel_FR new_entity_name=MKR_wheel_$'field_20'R_axle",  &
                        "",  &
                        "  model copy &",  &
                        "     model_name =  acmRect&",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=acmRect",  &
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
                        "    !!! attach the acmRect to the chassis -----------------------------",  &
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
                        "  variable modify variable=(eval($_self.path[1]//\".DV_csZ\"))          real=$field_1",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_csX\"))          real=$field_2",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_y_axle\"))   real=$field_3",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_y_wheels\")) real=$field_4",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_x_acm\"))    real=$field_5",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_y_acm\"))    real=$field_6",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_dst_z_acm\"))    real=$field_7",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_ms_tiltAngle\")) real=$field_8",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cylX\"))         real=$field_9",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cylZ\"))         real=$field_10",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_maxL\"))     real=$field_11",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_minL\"))     real=$field_12",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_iniL\"))     real=$field_13",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_rc\"))       real=$field_14",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_cyl_rp\"))       real=$field_15",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_camber\"))       real=$field_16",  &
                        "  variable modify variable=(eval($_self.path[1]//\".DV_caster\"))       real=$field_17",  &
                        "else",  &
                        "!  mdi SDlib_plugin.dboxes_utl_alert_box_1 type=\"Error\" text=\"Wrong (Name of sub model) or (number of axle)\"",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_acmRect.button_1  &
   location = 427.0, 604.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_acmRect.button_2  &
   location = 271.0, 604.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_1  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Vertical distance from center of differential to chassis mount"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_2  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text =   &
          "Horizontal distance from center of differential to front of steering unit"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_3  &
   location = 4.0, 195.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of front axle"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_4  &
   location = 4.0, 249.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "AckermannX"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_5  &
   location = 4.0, 276.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "AckermannY"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_6  &
   location = 4.0, 303.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "AckermannZ"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_7  &
   location = 4.0, 357.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of cylinder (x)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_8  &
   location = 4.0, 384.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of cylinder (z)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_9  &
   location = 4.0, 330.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max tilt angle of front axle (degrees)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_10  &
   location = 4.0, 411.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder, max length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_11  &
   location = 4.0, 438.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder, min length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_12  &
   location = 4.0, 492.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder, radius"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_13  &
   location = 4.0, 465.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder, initial length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_14  &
   location = 4.0, 519.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder, piston rod radius"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_15  &
   location = 4.0, 546.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Camber"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_16  &
   location = 4.0, 573.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Caster"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_1  &
   location = 427.0, 139.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_2  &
   location = 427.0, 166.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.26"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_3  &
   location = 427.0, 193.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_4  &
   location = 427.0, 220.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_5  &
   location = 427.0, 247.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.21"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_6  &
   location = 427.0, 274.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_7  &
   location = 427.0, 301.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_8  &
   location = 427.0, 328.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "8.5"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_9  &
   location = 427.0, 355.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.16"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_10  &
   location = 427.0, 382.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_11  &
   location = 427.0, 409.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_12  &
   location = 427.0, 436.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_13  &
   location = 427.0, 463.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_14  &
   location = 427.0, 490.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_15  &
   location = 427.0, 517.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_16  &
   location = 427.0, 544.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_17  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance between center of wheels"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_17  &
   location = 427.0, 571.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_18  &
   location = 368.0, 4.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_18  &
   location = 4.0, 4.0  &
   height = 27.0  &
   width = 343.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name:"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_acmRect.button_4  &
   location = 349.0, 604.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_19  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 343.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of sub model"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_19  &
   location = 368.0, 58.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_20  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 414.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Number of axle (1 = front axle, 2 = next axle...)"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_20  &
   location = 427.0, 112.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_26  &
   location = 4.0, 33.0  &
   height = 25.0  &
   width = 343.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model:"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_21  &
   location = 368.0, 31.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_acmRect.label_21  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 343.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_acmRect.field_22  &
   location = 368.0, 85.0  &
   height = 25.0  &
   width = 135.0  &
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
   variable_name = .SDlib_plugin.dboxes.dbox_acmRect.path  &
   string_value = ".MODEL_1.steering"
