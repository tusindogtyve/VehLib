!
interface dialog_box create  &
   dialog_box_name = .SauerDanfoss.dboxes.dbox_BHPlate2  &
   location = 907.0, 235.0  &
   height = 498.0  &
   width = 365.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Backhoe Plate 2"  &
   iconifiable = no  &
   start_commands = "int field set field=.SauerDanfoss.dboxes.dbox_BHPlate1.field_12 string=(eval(db_default( .system_defaults, \"model\")))",  &
                    "",  &
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
                    "",  &
                    "int field set field= $_self.field_12 string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  int field set field = $_self.field_13 string = (dv_model_to_change[1])",  &
                    "",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_14 string = $field_13",  &
                    "",  &
                    "",  &
                    "! Read the values that was used last time for this sub model",  &
                    "int field set field = $_self.field_1 string = ($'field_12.$'field_13'.DV_Dist_x_Boom)",  &
                    "int field set field = $_self.field_2 string = ($'field_12.$'field_13'.DV_Dist_z_Boom)",  &
                    "int field set field = $_self.field_3 string = ($'field_12.$'field_13'.DV_Dist_x_CylPlate)",  &
                    "int field set field = $_self.field_4 string = ($'field_12.$'field_13'.DV_Dist_y_CylPlate)",  &
                    "int field set field = $_self.field_6 string = ($'field_12.$'field_13'.DV_Dist_y_CylToCs)",  &
                    "int field set field = $_self.field_7 string = ($'field_12.$'field_13'.DV_Height_Plate)",  &
                    "int field set field = $_self.field_5 string = ($'field_12.$'field_13'.DV_Cyl_L_ini_length)",  &
                    "int field set field = $_self.field_8 string = ($'field_12.$'field_13'.DV_Cyl_L_min_length)",  &
                    "int field set field = $_self.field_9 string = ($'field_12.$'field_13'.DV_Cyl_R_max_length)",  &
                    "int field set field = $_self.field_10 string = ($'field_12.$'field_13'.DV_Cyl_R_rc)",  &
                    "int field set field = $_self.field_11 string = ($'field_12.$'field_13'.DV_Cyl_L_rp)",  &
                    "",  &
                    "",  &
                    "else",  &
                    "  int field set field = $_self.field_13 string = \"\"",  &
                    "  int field set field = $_self.field_14 string = \"\"",  &
                    "  int field set field = $_self.field_15 string = \"\"",  &
                    "  int field set field = $_self.field_16 string = \"\"",  &
                    "end"  &
   finish_commands = "if condition = (db_exists(\"NewModelName\"))",  &
                     "  var del var = NewModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"OldModelName\"))",  &
                     "  var del var = OldModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"MainModelName\"))",  &
                     "  var del var = MainModelName",  &
                     "end"  &
   execution_commands = "! Get the new name of the sub model",  &
                        "var mod var = $_self.NewModelName string_value = $field_14",  &
                        "",  &
                        "! If there is a old sub model put the name in a variable",  &
                        "if cond = ((STR_IS_SPACE(\"$field_13\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_13",  &
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
                        "int field set field = $_self.field_13 string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  file command read file=\"Level3/Backhoe/BHPlate2\"",  &
                        "  model copy &",  &
                        "     model_name = BHPlate2 &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  model delete model= BHPlate2",  &
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
                        "",  &
                        "",  &
                        "! The x-distance from the master marker to the boom mount is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Dist_x_Boom real = $field_1",  &
                        "",  &
                        "! The z-distance from the master marker to the boom mount is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Dist_z_Boom real = $field_2",  &
                        "",  &
                        "! The x-distance from the master marker to the cylinders joint on the plate is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Dist_x_CylPlate real = $field_3",  &
                        "",  &
                        "! The y-distance between the mounting of the two cylinders on the plate",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Dist_y_CylPlate real = $field_4",  &
                        "",  &
                        "! The y-distance between the mounting of the two cylinders on the chassis",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Dist_y_CylToCs real = $field_6",  &
                        "",  &
                        "! The height of the plate, and hereby the z-distance between the two joints to the chassis",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Height_Plate real = $field_7",  &
                        "",  &
                        "! The initial length of the left cylinder is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_L_ini_length real = $field_5",  &
                        "",  &
                        "! The minimum length of the rotational cylinders is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_L_min_length real = $field_8",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_R_min_length real = $field_8",  &
                        "",  &
                        "! The maximum length of the rotational cylinders is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_L_max_length real = $field_9",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_R_max_length real = $field_9",  &
                        "",  &
                        "! The radius of the cylinder part is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_L_rc real = $field_10",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_R_rc real = $field_10",  &
                        "",  &
                        "! The radius of the piston part is set",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_L_rp real = $field_11",  &
                        "variable modify variable = .(eval(NewModelName[1])).DV_Cyl_R_rp real = $field_11",  &
                        "",  &
                        "",  &
                        "",  &
                        "!The plate is attached to the chassis by the following code:",  &
                        "",  &
                        "! The master marker of the backhoe plate is attached to the slave marker of the rear attachment of the chassis",  &
                        "if condition=(db_exists (\"$'field_15.ground.MKR_slave_RearImp\"))",  &
                        "marker modify marker_name = .(eval($_self.NewModelName[1])).ground.MKR_Master &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $'field_15.ground.MKR_slave_RearImp)) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $'field_15.ground.MKR_slave_RearImp))",  &
                        "",  &
                        "! If a chassis and the backhoe plate exists, the plate and the chassis is merged",  &
                        " if condition=(db_exists (\"$'field_14.Part_To_Cs\"))",  &
                        "part merge rigid_body part_name= .(eval($_self.NewModelName[1])).Part_To_Cs into_part= $'field_16.PART_Cs",  &
                        "end",  &
                        "end",  &
                        "",  &
                        "",  &
                        "! The plate and the backhoe is attached by the following code:",  &
                        "",  &
                        "! The plate and the backhoe is attached by the following code",  &
                        "if condition=(db_exists (\"$field_16.ground.MKR_Master\"))",  &
                        "! If the Backhoe Plate sub model is already included, the master marker of the Backhoe part is placed on the slave marker of the plate",  &
                        "marker modify marker_name = $field_16.ground.MKR_Master &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $field_14.ground.MKR_Slave )) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $field_14.ground.MKR_Slave ))",  &
                        "",  &
                        "if condition=(db_exists (\"$field_16.ground.MKR_slave\"))",  &
                        "! If the Backhoe Plate sub model is already included, the plate is reshaped with respect to the cylinders mounting",  &
                        "marker modify marker_name = $'field_14.ground.MKR_Cylmount &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $field_16.ground.MKR_Slave )) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $field_16.ground.MKR_Slave ))",  &
                        "end",  &
                        "",  &
                        "if condition=(db_exists (\"$field_14.PART_Plate\"))",  &
                        "if condition=(db_exists (\"$field_16.PART_To_BHPlate\"))",  &
                        "! If the Backhoe Plate sub model is already included, the plate is united with the small plate body of the backhoe sub model",  &
                        "part merge rigid_body part_name= $field_16.PART_To_BHPlate into_part= $field_14.Part_Plate",  &
                        "end ",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_BHPlate2.button_1  &
   location = 285.0, 469.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_BHPlate2.button_2  &
   location = 207.0, 469.0  &
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
   push_button_name = .SauerDanfoss.dboxes.dbox_BHPlate2.button_3  &
   location = 129.0, 469.0  &
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
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_1  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-dist to boom mount"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_3  &
   location = 4.0, 195.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-dist to cyl mount on plate"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_4  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-dist between cyl mount on Plate"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_4_2  &
   location = 4.0, 276.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of plate"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_4_3  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-dist to boom mount"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_4_2_2  &
   location = 4.0, 249.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-dist between cyl mount on Cs"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_1  &
   location = 241.0, 141.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_2  &
   location = 241.0, 168.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_3  &
   location = 241.0, 195.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_4  &
   location = 241.0, 222.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_6  &
   location = 241.0, 249.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.4"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_7  &
   location = 241.0, 276.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.5"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_5  &
   location = 4.0, 305.0  &
   height = 25.0  &
   width = 357.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Data for the plate rotational cylinders"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_6  &
   location = 4.0, 359.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. Length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_7  &
   location = 4.0, 386.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. Length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_8  &
   location = 4.0, 413.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_9  &
   location = 4.0, 440.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_8  &
   location = 241.0, 359.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.22"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SauerDanfoss.dboxes.dbox_BHPlate2.sep_2  &
   location = 4.0, 303.0  &
   width = 357.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_9  &
   location = 241.0, 386.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.4"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_10  &
   location = 241.0, 413.0  &
   height = 25.0  &
   width = 120.0  &
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
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_11  &
   location = 241.0, 440.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.025"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_10  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Main model name"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_12  &
   location = 241.0, 4.0  &
   height = 25.0  &
   width = 120.0  &
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
   separator_name = .SauerDanfoss.dboxes.dbox_BHPlate2.sep_3  &
   location = 4.0, 139.0  &
   width = 357.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_2  &
   location = 4.0, 332.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Initial length"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_5  &
   location = 241.0, 332.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.3"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_11  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name of sub model"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_12  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of sub model"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_13  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BHPlate2.label_14  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a backhoe"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_13  &
   location = 241.0, 31.0  &
   height = 25.0  &
   width = 120.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_14  &
   location = 241.0, 58.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = any_object  &
   type_filter = model
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_15  &
   location = 241.0, 85.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = any_object  &
   type_filter = model
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BHPlate2.field_16  &
   location = 241.0, 112.0  &
   height = 25.0  &
   width = 120.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = any_object  &
   type_filter = model
