!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_Loader1  &
   location = 862.0, 1.0001  &
   height = 658.0  &
   width = 400.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Front Loader"  &
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
                    "  ! Read the values that was used last time for this sub model",  &
                    "  int field set field = $_self.field_10 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_size_link1)",  &
                    "  int field set field = $_self.field_11 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_size_link2)",  &
                    "  int field set field = $_self.field_12 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_size_link3)",  &
                    "  int field set field = $_self.field_14 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_loader_width)",  &
                    "  int field set field = $_self.field_17 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_Cs_LArm_min_length)",  &
                    "  int field set field = $_self.field_18 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_Cs_LArm_max_length)",  &
                    "  int field set field = $_self.field_19 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_Cs_LArm_ini_length)",  &
                    "  int field set field = $_self.field_20 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_LLink1_LArm_min_length)",  &
                    "  int field set field = $_self.field_21 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_LLink1_LArm_max_length)      ",  &
                    "  int field set field = $_self.field_22 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_LLink1_LArm_ini_length)",  &
                    "  int field set field = $_self.field_23 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_Cs_RArm_rc)      ",  &
                    "  int field set field = $_self.field_24 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_Cs_RArm_rp)",  &
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
		     !------ return view to main model
                     "default model model=(eval($_self.MainModelName))",  &
                     "model display fit_to_view=no",  &
		     !------
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
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"Dv_thetab\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Loader/Loader1\"))",  &
                        "  model copy &",  &
                        "     model_name = Loader1 &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=Loader1",  &
                        "  ",  &
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
                        "if condition=(db_exists(\"$'field_main'.$'field_newName'.Dv_thetab\"))",  &
                        "! Setting the angle between the fixation point",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_thetab real=(-90+atan(($'field_main'.$'field_newName'.Dv_bx/$'field_main'.$'field_newName'.Dv_bz)d))",  &
                        "",  &
                        " ! point 1",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_theta1 real=($'field_main'.$'field_newName'.Dv_thetab+acos((($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2+($field_2)^2-($field_3)^2)/(2*(($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2)^0.5)*($field_2)))d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p1x real=( $'field_main'.$'field_newName'.Dv_ArmMountx + $field_2*COS(($'field_main'.$'field_newName'.Dv_theta1)d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p1z real=( $'field_main'.$'field_newName'.Dv_ArmMountz + $field_2*SIN(($'field_main'.$'field_newName'.Dv_theta1)d))",  &
                        "",  &
                        " ! point 2 ",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_theta2 real=($'field_main'.$'field_newName'.Dv_thetab+acos(($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2+($field_4)^2-($field_5)^2)/(2*($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2)^0.5*($field_4))d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p2x real=($'field_main'.$'field_newName'.Dv_ArmMountx + $field_4*COS(($'field_main'.$'field_newName'.Dv_theta2)d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p2z real=($'field_main'.$'field_newName'.Dv_ArmMountz + $field_4*SIN(($'field_main'.$'field_newName'.Dv_theta2)d))",  &
                        "",  &
                        " ! point 3 ",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_theta3 real=($'field_main'.$'field_newName'.Dv_thetab+acos(($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2+($field_6)^2-($field_7)^2)/(2*($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2)^0.5*($field_6))d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p3x real=($'field_main'.$'field_newName'.Dv_ArmMountx + $field_6*COS(($'field_main'.$'field_newName'.Dv_theta3)d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p3z real=($'field_main'.$'field_newName'.Dv_ArmMountz + $field_6*SIN(($'field_main'.$'field_newName'.Dv_theta3)d))",  &
                        "",  &
                        " ! point 4 ",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_theta4 real=($'field_main'.$'field_newName'.Dv_thetab+acos(($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2+($field_8)^2-($field_9)^2)/(2*($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2)^0.5*($field_8))d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p4x real=($'field_main'.$'field_newName'.Dv_ArmMountx + $field_8*COS(($'field_main'.$'field_newName'.Dv_theta4)d))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_p4z real=($'field_main'.$'field_newName'.Dv_ArmMountz + $field_8*SIN(($'field_main'.$'field_newName'.Dv_theta4)d))",  &
                        "",  &
                        " ! Link 1 ",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_size_link1\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_size_link1 real=($field_10)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_size_link1 real=($field_10)",  &
                        " end",  &
                        "",  &
                        " ! Link 2 ",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_size_link2\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_size_link2 real=($field_11)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_size_link2 real=($field_11)",  &
                        " end",  &
                        "",  &
                        " ! Link 3 indsættes",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_size_link3\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_size_link3 real=($field_12)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_size_link3 real=($field_12)",  &
                        " end",  &
                        "",  &
                        " ! The point connecting link 1 and link 2 is set",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_Link1_p3z\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_Link1_p3z real=($'field_main'.$'field_newName'.Dv_p2z+$'field_main'.$'field_newName'.Dv_size_link1)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_Link1_p3z real=($'field_main'.$'field_newName'.Dv_p2z+$'field_main'.$'field_newName'.Dv_size_link1)",  &
                        " end",  &
                        "",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_Link1_p3x\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_Link1_p3x real=($'field_main'.$'field_newName'.Dv_p2x)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_Link1_p3x real=($'field_main'.$'field_newName'.Dv_p2x)",  &
                        " end",  &
                        "",  &
                        " ! The point connection link 2 and link 3 is set",  &
                        " ! The distance from LoaderLink_p3 to Loaderarm_p4 is calculated",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_distp3p4\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_distp3p4 real=((($'field_main'.$'field_newName'.Dv_p4x-$'field_main'.$'field_newName'.Dv_Link1_p3x)^2+($'field_main'.$'field_newName'.Dv_p4z-$'field_main'.$'field_newName'.Dv_Link1_p3z)^2)^0.5)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_distp3p4 real=((($'field_main'.$'field_newName'.Dv_p4x-$'field_main'.$'field_newName'.Dv_Link1_p3x)^2+($'field_main'.$'field_newName'.Dv_p4z-$'field_main'.$'field_newName'.Dv_Link1_p3z)^2)^0.5)",  &
                        " end",  &
                        "",  &
                        " ! The angle from the line between LoaderLink_p3 to Loaderarm_p4 and vertical is calculated:",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_newangle\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_newangle real=(90-(asin(($'field_main'.$'field_newName'.Dv_Link1_p3z-$'field_main'.$'field_newName'.Dv_p4z)/($'field_main'.$'field_newName'.Dv_distp3p4))))",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_newangle real=(90-(asin(($'field_main'.$'field_newName'.Dv_Link1_p3z-$'field_main'.$'field_newName'.Dv_p4z)/($'field_main'.$'field_newName'.Dv_distp3p4))))",  &
                        " end",  &
                        "",  &
                        " ! The angle between the line connecting LoaderLink1_p3 and Loaderarm_p4 and LoaderLink1_p3 and LoaderLink2_p2 is calculated:",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_newangle2\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_newangle2 real=(acos((($'field_main'.$'field_newName'.Dv_size_link3^2-$'field_main'.$'field_newName'.Dv_distp3p4^2-$'field_main'.$'field_newName'.Dv_size_link2^2)/(-2*$'field_main'.$'field_newName'.Dv_distp3p4*$'field_main'.$'field_newName'.Dv_size_link2))d))",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_newangle2 real=(acos((($'field_main'.$'field_newName'.Dv_size_link3^2-$'field_main'.$'field_newName'.Dv_distp3p4^2-$'field_main'.$'field_newName'.Dv_size_link2^2)/(-2*$'field_main'.$'field_newName'.Dv_distp3p4*$'field_main'.$'field_newName'.Dv_size_link2))d))",  &
                        " end",  &
                        "",  &
                        " ! Finally the coordinates of the point connecting LoaderLink2 and LoaderLink3 are calculated:",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_Link2_p2x\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_Link2_p2x real=($'field_main'.$'field_newName'.Dv_Link1_p3x+cos($'field_main'.$'field_newName'.Dv_newangle+$'field_main'.$'field_newName'.Dv_newangle2-90)*$'field_main'.$'field_newName'.Dv_size_link2)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_Link2_p2x real=($'field_main'.$'field_newName'.Dv_Link1_p3x+cos($'field_main'.$'field_newName'.Dv_newangle+$'field_main'.$'field_newName'.Dv_newangle2-90)*$'field_main'.$'field_newName'.Dv_size_link2)",  &
                        " end",  &
                        "",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_Link2_p2z\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_Link2_p2z real=($'field_main'.$'field_newName'.Dv_Link1_p3z+sin($'field_main'.$'field_newName'.Dv_newangle+$'field_main'.$'field_newName'.Dv_newangle2-90)*$'field_main'.$'field_newName'.Dv_size_link2)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_Link2_p2z real=($'field_main'.$'field_newName'.Dv_Link1_p3z+sin($'field_main'.$'field_newName'.Dv_newangle+$'field_main'.$'field_newName'.Dv_newangle2-90)*$'field_main'.$'field_newName'.Dv_size_link2)",  &
                        " end",  &
                        "",  &
                        " ! The coordinates of the midtpoint on link1 are calculated",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_Link1_p2x\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_Link1_p2x real= ($'field_main'.$'field_newName'.Dv_p2x)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_Link1_p2x real= ($'field_main'.$'field_newName'.Dv_p2x)",  &
                        " end",  &
                        "",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_Link1_p2z\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_Link1_p2z real= ($'field_main'.$'field_newName'.Dv_p2z + $field_13)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_Link1_p2z real= ($'field_main'.$'field_newName'.Dv_p2z + $field_13)",  &
                        " end",  &
                        "",  &
                        " ! creation of the variable loader_width",  &
                        " if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_loader_width\"))",  &
                        " variable modify variable=$'field_main'.$'field_newName'.Dv_loader_width real=($field_14)",  &
                        " else",  &
                        " variable create variable=$'field_main'.$'field_newName'.Dv_loader_width real=($field_14)",  &
                        " end",  &
                        "",  &
                        " ! Cylinder 1&2 min. length",  &
                        " ! Setting the minimum length",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_LArm_min_length real=$field_17",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_RArm_min_length real=$field_17",  &
                        "",  &
                        "",  &
                        " ! Cylinder 1&2 max. length",  &
                        " ! Setting the maximum length",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_LArm_max_length real=$field_18",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_RArm_max_length real=$field_18 ",  &
                        "",  &
                        " ! Cylinder 1&2 init. length",  &
                        " ! Setting the initial length",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_LArm_ini_length real=$field_19",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_RArm_ini_length real=$field_19",  &
                        "",  &
                        "",  &
                        " ! Cylinder 3&4 min. length",  &
                        " ! Setting the minimun length",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LLink1_LArm_min_length real=$field_20",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RLink1_RArm_min_length real=$field_20",  &
                        "",  &
                        "",  &
                        " ! Cylinder 3&4 max. length",  &
                        " ! Setting the maximum length",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LLink1_LArm_max_length real=$field_21",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RLink1_RArm_max_length real=$field_21",  &
                        "",  &
                        " ! Cylinder 3&4 init. length",  &
                        " ! Setting the initial length",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LLink1_LArm_ini_length real=$field_22",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RLink1_RArm_ini_length real=$field_22",  &
                        "",  &
                        " ! Radius of all cylinders",  &
                        " ! Setting the radius",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_RArm_rc real=$field_23",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_LArm_rc real=$field_23",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LLink1_LArm_rc real=$field_23",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RLink1_RArm_rc real=$field_23",  &
                        "",  &
                        " ! Radius of all pistons",  &
                        " ! Setting the radius",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_RArm_rp real=$field_24",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_Cs_LArm_rp real=$field_24",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LLink1_LArm_rp real=$field_24",  &
                        " variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RLink1_RArm_rp real=$field_24",  &
                        "",  &
                        "end",  &
                        "!"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_Loader1.button_1  &
   location = 320.0, 629.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_Loader1.button_2  &
   location = 242.0, 629.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_Loader1.button_3  &
   location = 164.0, 629.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_1  &
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
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_2  &
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
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_3  &
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
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_4  &
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
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_main  &
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
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_old  &
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
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_newName  &
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
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_csModel  &
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
   separator_name = .SDlib_plugin.dboxes.dbox_Loader1.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_5  &
   location = 4.0, 118.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P1"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_6  &
   location = 4.0, 142.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P1 "
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_7  &
   location = 4.0, 166.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_8  &
   location = 4.0, 190.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_9  &
   location = 4.0, 214.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_10  &
   location = 4.0, 238.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_11  &
   location = 4.0, 262.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P4"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_12  &
   location = 4.0, 286.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P4"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_13  &
   location = 4.0, 310.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 1 "
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_14  &
   location = 4.0, 334.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_15  &
   location = 4.0, 502.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 3&4 min. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_16  &
   location = 4.0, 358.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_17  &
   location = 4.0, 382.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance to cylindermount"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_18  &
   location = 4.0, 526.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 3&4 max. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_19  &
   location = 4.0, 406.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Loader width"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_22  &
   location = 4.0, 430.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 1&2 min. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_23  &
   location = 4.0, 454.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 1&2 max. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_24  &
   location = 4.0, 478.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 1&2 initial length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_25  &
   location = 4.0, 550.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 3&4 initial length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_26  &
   location = 4.0, 574.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of all cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Loader1.label_27  &
   location = 4.0, 598.0  &
   height = 22.0  &
   width = 189.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of all pistons"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_2  &
   location = 320.0, 118.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.285"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_3  &
   location = 320.0, 142.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.015"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_4  &
   location = 320.0, 166.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_5  &
   location = 320.0, 190.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.273"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_6  &
   location = 320.0, 214.0  &
   height = 22.0  &
   width = 76.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_7  &
   location = 320.0, 238.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.745"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_8  &
   location = 320.0, 262.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.39"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_9  &
   location = 320.0, 286.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.08"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_10  &
   location = 320.0, 310.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".62"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_11  &
   location = 320.0, 334.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.05"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_12  &
   location = 320.0, 358.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".485"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_13  &
   location = 320.0, 382.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".335"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_14  &
   location = 320.0, 406.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_17  &
   location = 320.0, 430.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".9"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_18  &
   location = 320.0, 454.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.7"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_19  &
   location = 320.0, 478.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_20  &
   location = 320.0, 502.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_21  &
   location = 320.0, 526.0  &
   height = 24.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".9"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_22  &
   location = 320.0, 552.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".7"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_23  &
   location = 320.0, 576.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".03"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Loader1.field_24  &
   location = 320.0, 600.0  &
   height = 22.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".018"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
