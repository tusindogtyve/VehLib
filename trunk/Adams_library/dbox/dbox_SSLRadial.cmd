!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_SSLRadial  &
   location = 868.0, 5.0  &
   height = 581.0  &
   width = 401.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Skid Steer Loader Radial"  &
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
                    "  int field set field = $_self.field_7 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_size_link2)",  &
                    "  int field set field = $_self.field_8 &",  &
                    "      string = ($'field_main.$'field_newName'.Dv_loader_width)",  &
                    "  int field set field = $_self.field_11 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_LArm_min_length)",  &
                    "  int field set field = $_self.field_12 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_LArm_max_length)",  &
                    "  int field set field = $_self.field_13 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_LArm_ini_length)",  &
                    "  int field set field = $_self.field_14 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_bucket_LArm_min_length)",  &
                    "  int field set field = $_self.field_15 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_bucket_LArm_max_length)",  &
                    "  int field set field = $_self.field_16 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_bucket_LArm_ini_length)",  &
                    "  int field set field = $_self.field_17 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_RArm_rc)",  &
                    "  int field set field = $_self.field_18 &",  &
                    "      string = ($'field_main.$'field_newName'.DV_Cyl_RArm_rp)",  &
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
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"Dv_size_link2\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Loader/SSLRadial\"))",  &
                        "  model copy &",  &
                        "     model_name = SSLRadial &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model=SSLRadial",  &
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
                        "",  &
                        "if condition=(db_exists(\"$'field_main'.$'field_newName'.Dv_size_link2\"))",  &
                        "",  &
                        "! Setting the angle between the fixation point",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_thetab real=(-90-atan(($'field_main'.$'field_newName'.Dv_bx/$'field_main'.$'field_newName'.Dv_bz)d))",  &
                        "",  &
                        "! point 3",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_theta3 real=($'field_main'.$'field_newName'.Dv_thetab+acos((($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2+($field_1)^2-($field_2)^2)/(2*(($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2)^0.5)*($field_1)))d))",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p3x real=( $'field_main'.$'field_newName'.Dv_ArmMountx + $field_1*COS(($'field_main'.$'field_newName'.Dv_theta3)d))",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p3z real=( $'field_main'.$'field_newName'.Dv_ArmMountz + $field_1*SIN(($'field_main'.$'field_newName'.Dv_theta3)d))",  &
                        "             ",  &
                        "! point 4",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_theta4 real=($'field_main'.$'field_newName'.Dv_thetab+acos(($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2+($field_3)^2-($field_4)^2)/(2*($'field_main'.$'field_newName'.Dv_bz^2+$'field_main'.$'field_newName'.Dv_bx^2)^0.5*($field_3))d))",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p4x real=($'field_main'.$'field_newName'.Dv_ArmMountx + $field_3*COS(($'field_main'.$'field_newName'.Dv_theta4)d))",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p4z real=($'field_main'.$'field_newName'.Dv_ArmMountz + $field_3*SIN(($'field_main'.$'field_newName'.Dv_theta4)d))",  &
                        "",  &
                        "! point 5",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p5x real=($'field_main'.$'field_newName'.Dv_p4x + $field_5)",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p5z real=($'field_main'.$'field_newName'.Dv_p4z + -$field_6)",  &
                        "",  &
                        "! point 6",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_size_link2 real=$field_7",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p6x real=($'field_main'.$'field_newName'.Dv_p5x)",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_p6z real=($'field_main'.$'field_newName'.Dv_p5z + $'field_main'.$'field_newName'.Dv_size_link2)",  &
                        "",  &
                        "! creation of the variable loader_width",  &
                        "if condition=(DB_EXISTS(\"$'field_main'.$'field_newName'.Dv_loader_width\"))",  &
                        "variable modify variable=$'field_main'.$'field_newName'.Dv_loader_width real=($field_8)",  &
                        "else",  &
                        "variable create variable=$'field_main'.$'field_newName'.Dv_loader_width real=($field_8)",  &
                        "end",  &
                        "",  &
                        "! Minimum length of the arm cylinders",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LArm_min_length real=$field_11",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RArm_min_length real=$field_11",  &
                        "",  &
                        "! Maximum length of the arm cylinders",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LArm_max_length real=$field_12",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RArm_max_length real=$field_12 ",  &
                        "",  &
                        "! Initial length of the arm cylinders",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LArm_ini_length real=$field_13",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RArm_ini_length real=$field_13",  &
                        "",  &
                        "",  &
                        "! Minimum length of the bucket cylinders",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_LArm_min_length real=$field_14",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_RArm_min_length real=$field_14",  &
                        "",  &
                        "",  &
                        "! Maximum length of the bucket cylinders",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_LArm_max_length real=$field_15",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_RArm_max_length real=$field_15",  &
                        "",  &
                        "! Initial length of the bucket cylinders",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_LArm_ini_length real=$field_16",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_RArm_ini_length real=$field_16",  &
                        "",  &
                        "! Radius of all cylinders",  &
                        "! Setting the radius",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RArm_rc real=$field_17",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LArm_rc real=$field_17",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_LArm_rc real=$field_17",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_RArm_rc real=$field_17",  &
                        "",  &
                        "! Radius of all pistons",  &
                        "! Setting the radius",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_RArm_rp real=$field_18",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_LArm_rp real=$field_18",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_LArm_rp real=$field_18",  &
                        "variable modify variable=$'field_main'.$'field_newName'.DV_Cyl_bucket_RArm_rp real=$field_18",  &
                        "",  &
                        "end",  &
                        "!"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_SSLRadial.button_1  &
   location = 321.0, 552.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_SSLRadial.button_2  &
   location = 243.0, 552.0  &
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
   push_button_name = .SDlib_plugin.dboxes.dbox_SSLRadial.button_3  &
   location = 165.0, 552.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_1  &
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
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_2  &
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
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_3  &
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
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_4  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_main  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_old  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_newName  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_csModel  &
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
   separator_name = .SDlib_plugin.dboxes.dbox_SSLRadial.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 392.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_1  &
   location = 320.0, 118.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.4"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_2  &
   location = 320.0, 145.0  &
   height = 25.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_3  &
   location = 320.0, 172.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.908"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_4  &
   location = 320.0, 199.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.577"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_5  &
   location = 320.0, 226.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".153"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_6  &
   location = 320.0, 253.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".705"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_7  &
   location = 320.0, 280.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_8  &
   location = 320.0, 307.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".975"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_11  &
   location = 320.0, 334.0  &
   height = 25.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_12  &
   location = 320.0, 361.0  &
   height = 25.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_13  &
   location = 320.0, 388.0  &
   height = 25.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_14  &
   location = 320.0, 415.0  &
   height = 25.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_15  &
   location = 320.0, 442.0  &
   height = 25.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_16  &
   location = 320.0, 469.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".6"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_17  &
   location = 320.0, 496.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".06"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_SSLRadial.field_18  &
   location = 320.0, 523.0  &
   height = 25.0  &
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
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_5  &
   location = 4.0, 118.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "ArmMount -> Point 3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_6  &
   location = 4.0, 145.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "CylinderMount -> Point 3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_7  &
   location = 4.0, 172.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "ArmMount -> Point 4"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_8  &
   location = 4.0, 199.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "CylinderMount -> Point 4"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_9  &
   location = 4.0, 226.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance 4-5 x"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_10  &
   location = 4.0, 253.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance 4-5 z"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_11  &
   location = 4.0, 280.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of the bucket's link"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_12  &
   location = 4.0, 307.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Loader width"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_15  &
   location = 4.0, 334.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Minimum length of the arm cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_16  &
   location = 4.0, 361.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Maximum length of the arm cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_17  &
   location = 4.0, 388.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Initial length of the arm cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_18  &
   location = 4.0, 415.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Minimum length of the bucket cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_19  &
   location = 4.0, 442.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Maximum length of the bucket cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_20  &
   location = 4.0, 469.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Initial length of the bucket cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_21  &
   location = 4.0, 496.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of all cylinders"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_SSLRadial.label_22  &
   location = 4.0, 523.0  &
   height = 25.0  &
   width = 231.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of all pistons"
