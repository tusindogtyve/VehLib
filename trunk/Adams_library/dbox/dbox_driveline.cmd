!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_driveline  &
   location = 11.0, 89.0  &
   height = 447.0  &
   width = 374.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Driveline width 3 differentials, 4 wheel drive"  &
   iconifiable = no  &
   start_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "! INSTRUCTIONS                               !",  &
                    "! Main model field in this code = $field_18  !",  &
                    "! Old name field in this code   = $field_19  !",  &
                    "! New name field in this code   = $field_1   !",  &
                    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
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
                    "  int field set field = $_self.field_2 string = (dv_model_to_change[1])",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_19 string = $field_2",  &
                    "",  &
                    "  ! Read the values that was used last time for this sub model",  &
                    "  int field set field = $_self.field_20 string = ($'field_18.$'field_19'.DV_diff_center_gearRatio)",  &
                    "  int field set field = $_self.field_21 string = ($'field_18.$'field_19'.DV_diff_1_gearRatio)",  &
                    "  int field set field = $_self.field_22 string = ($'field_18.$'field_19'.DV_diff_2_gearRatio)        ",  &
                    "  int field set field = $_self.field_23 string = ($'field_18.$'field_19'.DV_diff_center_wheelShaft_r)",  &
                    "  int field set field = $_self.field_23 string = ($'field_18.$'field_19'.DV_diff_center_driveShaft_r)",  &
                    "  int field set field = $_self.field_23 string = ($'field_18.$'field_19'.DV_diff_1_driveShaft_r)",  &
                    "  int field set field = $_self.field_23 string = ($'field_18.$'field_19'.DV_diff_2_driveShaft_r)",  &
                    "  int field set field = $_self.field_24 string = ($'field_18.$'field_19'.DV_diff_1_wheelShaft_r)",  &
                    "  int field set field = $_self.field_24 string = ($'field_18.$'field_19'.DV_diff_2_wheelShaft_r)",  &
                    "  int field set field = $_self.field_25 string = ($'field_18.$'field_19'.DV_diff_1_wheelShaft_l)",  &
                    "  int field set field = $_self.field_25 string = ($'field_18.$'field_19'.DV_diff_2_wheelShaft_l)",  &
                    "  int field set field = $_self.field_26 string = ($'field_18.$'field_19'.DV_diff_center_diff_r)",  &
                    "  int field set field = $_self.field_27 string = ($'field_18.$'field_19'.DV_diff_1_diff_r)",  &
                    "  int field set field = $_self.field_28 string = ($'field_18.$'field_19'.DV_diff_2_diff_r)",  &
                    "  int field set field = $_self.field_29 string = ($'field_18.$'field_19'.TORSION_SPRING_1.stiffness_coefficient)",  &
                    "  int field set field = $_self.field_30 string = ($'field_18.$'field_19'.TORSION_SPRING_1.damping_coefficient)",  &
                    "else",  &
                    "  !There is no old model name...",  &
                    "  int field set field = $_self.field_2 string = \"\"",  &
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
                        "if cond = ((STR_IS_SPACE(\"$field_2\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_2",  &
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
                        "int field set field = $_self.field_2 string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/driveline/fourWD_cDiff\"))",  &
                        "  model copy &",  &
                        "     model_name = fourWD_cDiff &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=fourWD_cDiff",  &
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
                        "! Below follows the code of the dialog box ",  &
                        "!!!Let's make a variable for the path of the objects in this sub model.",  &
                        "var mod var=$_self.path string_value=(eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "",  &
                        "if condition=(db_exists(eval($_self.path[1]//\".part_diff_center_driveshaft\")))",  &
                        "    ! Update model width field data",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_center_gearRatio\"))    real=$field_20",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_1_gearRatio\"))         real=$field_21",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_2_gearRatio\"))         real=$field_22",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_center_wheelShaft_r\")) real=$field_23",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_center_driveShaft_r\")) real=$field_23",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_1_driveShaft_r\"))      real=$field_23",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_2_driveShaft_r\"))      real=$field_23",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_1_wheelShaft_r\"))      real=$field_24",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_2_wheelShaft_r\"))      real=$field_24",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_1_wheelShaft_l\"))      real=$field_25",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_2_wheelShaft_l\"))      real=$field_25",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_center_diff_r\"))       real=$field_26",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_1_diff_r\"))            real=$field_27",  &
                        "    variable modify variable = (eval($_self.path[1]//\".DV_diff_2_diff_r\"))            real=$field_28",  &
                        "    var mod var = (eval($_self.path[1]//\".TORSION_SPRING_1.stiffness_coefficient\")) real=(eval($'field_29'//\"(newton-meter/deg)\"))",  &
                        "    var mod var = (eval($_self.path[1]//\".TORSION_SPRING_2.stiffness_coefficient\")) real=(eval($'field_29'//\"(newton-meter/deg)\"))",  &
                        "    var mod var = (eval($_self.path[1]//\".TORSION_SPRING_1.damping_coefficient\"))   real=(eval($'field_30'//\"(newton-meter-sec/deg)\"))",  &
                        "    var mod var = (eval($_self.path[1]//\".TORSION_SPRING_2.damping_coefficient\"))   real=(eval($'field_30'//\"(newton-meter-sec/deg)\"))",  &
                        "",  &
                        "    !!! Calculate wheelbase",  &
                        "    if condition=(db_exists (\"$'field_1'.ground.MKR_slave_axle_2_used\"))",  &
                        "      variable modify variable = (eval($_self.path[1]//\".DV_wheelbase\"))  real = (($'field_1'.DV_Cs_dst_x_wheel_base**2 + $'field_1'.DV_Cs_dst_z_axle_1**2)**0.5)",  &
                        "    end",  &
                        "    if condition=(db_exists (\"$'field_1'.ground.MKR_slave_axle_2\"))",  &
                        "      variable modify variable = (eval($_self.path[1]//\".DV_wheelbase\"))  real = (($'field_1'.DV_Cs_dst_x_wheel_base**2 + $'field_1'.DV_Cs_dst_z_axle_1**2)**0.5)",  &
                        "    end",  &
                        "else",  &
                        " ! mdi gui_utl_alert_box_1 type=\"Error\" text=\"Wrong Name of sub model\"",  &
                        "end",  &
                        "",  &
                        "",  &
                        "!!! Place and orient the driveline. ------------------------------------------",  &
                        "if condition=(db_exists (\"$'field_1'.ground.MKR_slave_axle_2_used\"))",  &
                        "  marker modify &",  &
                        "     marker_name = MKR_diff_2_master  &",  &
                        "     location = (LOC_RELATIVE_TO( {0,0,0} , $'field_1'.ground.MKR_slave_axle_2_used ))&",  &
                        "     orientation = (ORI_IN_PLANE($'field_1'.ground.MKR_slave_axle_2_used, $'field_1'.ground.MKR_slave_axle_1_used, $'field_1'.ground.MKR_wheel_2L, \"x_xy\"))",  &
                        "end",  &
                        "",  &
                        "!!! Merge to chassis ----------------------------------------------------------",  &
                        "if condition = (db_exists(\"$'field_1'.PART_Cs\") && db_exists(eval($_self.path[1]//\".PART_to_cs\")))",  &
                        "  part merge rigid_body part_name=(eval($_self.path[1]//\".PART_to_cs\")) &",  &
                        "         into_part=($'field_1'.PART_Cs)",  &
                        "end",  &
                        "",  &
                        "",  &
                        "",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "!!! Make the connection between the wheel and the wheel shaft ----------------------",  &
                        "if condition = (db_exists (\"JT_wheel_1L\"))",  &
                        "  !!! Let's start at the front left wheel ------------------------------------------",  &
                        "  constraint create general_constraint &",  &
                        "      general_constraint_name = (eval($_self.path[1]//\".GCON_wheel_1L\")) &",  &
                        "      function=(eval(\"-AZ( \"//$_self.path[1]//\".part_diff_1_shaftl.marker_11 , $'field_1'.part_cs.marker_52 ) - AZ( mkr_wheel_1L_axle, $'field_1'.wheel_1L.wheel_part.MKR_wheel_1L_wheel)\")) &",  &
                        "      i_marker_name=(eval($_self.path[1]//\".part_diff_1_shaftl.marker_11\"))",  &
                        "end",  &
                        "",  &
                        "if condition = (db_exists (\"JT_wheel_1R\"))",  &
                        "  !!! The front right wheel ------------------------------------------",  &
                        "  constraint create general_constraint &",  &
                        "      general_constraint_name = (eval($_self.path[1]//\".GCON_wheel_1R\")) &",  &
                        "      function=(eval(\"AZ( \"//$_self.path[1]//\".part_diff_1_shaftr.marker_9 , $'field_1'.part_cs.marker_52 ) - AZ( mkr_wheel_1R_axle, $'field_1'.wheel_1R.wheel_part.MKR_wheel_1R_wheel)\")) &",  &
                        "      i_marker_name=(eval($_self.path[1]//\".part_diff_1_shaftr.marker_9\"))",  &
                        "end",  &
                        "",  &
                        "if condition = (db_exists (\"JT_wheel_2L\"))",  &
                        "  !!! The rear left wheel ------------------------------------------",  &
                        "  constraint create general_constraint &",  &
                        "      general_constraint_name = (eval($_self.path[1]//\".GCON_wheel_2L\")) &",  &
                        "      function=(eval(\"AZ( \"//$_self.path[1]//\".part_diff_2_shaftl.marker_9 , $'field_1'.part_cs.marker_5 ) - AZ( mkr_wheel_2L_axle, $'field_1'.wheel_2L.wheel_part.MKR_wheel_2L_wheel)\")) &",  &
                        "      i_marker_name=(eval($_self.path[1]//\".part_diff_2_shaftl.marker_9\"))",  &
                        "end",  &
                        "",  &
                        "if condition = (db_exists (\"JT_wheel_2R\"))",  &
                        "  !!! The rear right wheel ------------------------------------------",  &
                        "  constraint create general_constraint &",  &
                        "      general_constraint_name = (eval($_self.path[1]//\".GCON_wheel_2R\")) &",  &
                        "      function=(eval(\"-AZ( \"//$_self.path[1]//\".part_diff_2_shaftr.marker_11 , $'field_1'.part_cs.marker_5 ) - AZ( mkr_wheel_2R_axle, $'field_1'.wheel_2R.wheel_part.MKR_wheel_2R_wheel)\")) &",  &
                        "      i_marker_name=(eval($_self.path[1]//\".part_diff_2_shaftr.marker_11\"))",  &
                        "end",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_driveline.button_1  &
   location = 294.0, 418.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_driveline.button_2  &
   location = 216.0, 418.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_driveline.button_3  &
   location = 138.0, 418.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_24  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 192.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_25  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 192.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "New name of sub model:"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_18  &
   location = 232.0, 4.0  &
   height = 25.0  &
   width = 138.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_19  &
   location = 232.0, 58.0  &
   height = 25.0  &
   width = 138.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "Driveline"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_26  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Gear ratio of center differential"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_27  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Gear ratio of front differential"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_28  &
   location = 4.0, 166.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Gear ratio of rear differential"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_20  &
   location = 294.0, 112.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_21  &
   location = 294.0, 139.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_22  &
   location = 294.0, 166.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_29  &
   location = 4.0, 193.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of drive shaft"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_30  &
   location = 4.0, 220.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of wheel shafts"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_31  &
   location = 4.0, 247.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of wheel shafts"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_32  &
   location = 4.0, 274.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of center differental housing"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_33  &
   location = 4.0, 301.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of front differental housing"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_34  &
   location = 4.0, 328.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of rear differental housing"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_23  &
   location = 294.0, 193.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.015"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_24  &
   location = 294.0, 220.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.02"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_25  &
   location = 294.0, 247.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.6"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_26  &
   location = 294.0, 274.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.07"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_27  &
   location = 294.0, 301.0  &
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
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_28  &
   location = 294.0, 328.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.15"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_35  &
   location = 4.0, 361.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stiffness of drive shaft"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_36  &
   location = 4.0, 388.0  &
   height = 25.0  &
   width = 288.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Damping of drive shaft"
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_driveline.sep_1  &
   location = 4.0, 355.0  &
   height = 4.0  &
   width = 366.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_29  &
   location = 294.0, 361.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "10"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_30  &
   location = 294.0, 388.0  &
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
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_1  &
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
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_1  &
   location = 232.0, 85.0  &
   height = 25.0  &
   width = 138.0  &
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
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_driveline.label_2  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 192.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model:"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_driveline.field_2  &
   location = 232.0, 31.0  &
   height = 25.0  &
   width = 138.0  &
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
variable create  &
   variable_name = .SDlib_plugin.dboxes.dbox_driveline.path  &
   string_value = ".MODEL_1.Driveline"
