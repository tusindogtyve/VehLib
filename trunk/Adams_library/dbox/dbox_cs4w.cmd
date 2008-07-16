!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_cs4w  &
   location = 4.0, 63.0  &
   height = 758.0  &
   width = 380.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Chassis, 4 wheels"  &
   iconifiable = no  &
   start_commands = "var cre var = $_self.NewModelName string_value = \"\"",  &
                    "var cre var = $_self.OldModelName string_value = \"\"",  &
                    "",  &
                    "if cond = (db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\") != (none))",  &
                    "  var cre var = $_self.MainModelName string_value = (eval(db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\")))",  &
                    "else",  &
                    "  var cre var = $_self.MainModelName string_value = (eval(db_default( .system_defaults, \"model\")))",  &
                    "end",  &
                    "int field set field= $_self.field_18 string = ($_self.MainModelName[1])",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  int field set field = $_self.field_19 string = (dv_model_to_change[1])",  &
                    "",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  int field set field= $_self.field_1 string = $field_19",  &
                    "else",  &
                    "  int field set field = $_self.field_19 string = \"\"",  &
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
                     "",  &
                     "if condition = (db_exists(\"$_self.MainModelName\"))",  &
                     "  var del var = $_self.MainModelName",  &
                     "end"  &
   execution_commands = "var mod var = $_self.NewModelName string_value = $field_1",  &
                        "",  &
                        "if cond = ((STR_IS_SPACE(\"$field_19\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_19",  &
                        "else ",  &
                        " var mod var = $_self.OldModelName string_value = \"\"",  &
                        "end",  &
                        "",  &
                        "! if the name is changed, the model is renamed:",  &
                        "if condition = (STR_Compare( $_self.OldModelName[1], $_self.NewModelName[1]) != 0 && ((STR_IS_SPACE($_self.OldModelName[1]))==0) )",  &
                        "  entity modify entity = (eval($_self.MainModelName[1]//\".\"//$_self.OldModelName[1])) new = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "end",  &
                        "",  &
                        "! Field 1 is updated, since the model name has been changed. ",  &
                        "int field set field = $_self.field_19 string = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Chassis/cs4w\"))",  &
                        "  model copy &",  &
                        "     model_name = cs4w &",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "",  &
                        "  model delete model=cs4w",  &
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
                        "!!!Create a road ----------------------------------------------------------",  &
                        "if cond = (!db_exists(\"testTrack\"))",  &
                        "  model display model_name = ($_self.MainModelName[1])",  &
                        "  atire road create &",  &
                        "          road_name = testTrack&",  &
                        "               part = (eval($_self.MainModelName[1]//\".ground\"))&",  &
                        "   road_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/road/mdi_2d_flat.rdf\")) &",  &
                        "           graphics = on &",  &
                        "           location = 0.0,0.0,0.0 &",  &
                        "        orientation = 0,0,0",  &
                        "end",  &
                        "",  &
                        "if cond=(db_exists(\"$_self.Tak\"))",  &
                        "  var mod var=$_self.Tak &",  &
                        "     string_value=(eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "else",  &
                        "  var cre var=$_self.Tak &",  &
                        "     string_value=(eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "end",  &
                        "",  &
                        "if condition=(db_exists (eval($_self.Tak[1])))",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_x_wheel_base)  ) real = ($field_2)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_x_Raxle_boxMKR)) real = ($field_3)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_x_Fbox)        ) real = ($field_4)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_y_Fbox)        ) real = ($field_5)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_z_Fbox)        ) real = ($field_6)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_x_Rbox)        ) real = ($field_7)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_y_Rbox)        ) real = ($field_8)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_z_Rbox)        ) real = ($field_9)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_z_axle_1)      ) real = ($field_16)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_z_axle2_boxMKR)) real = ($field_17)",  &
                        "  ",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "  !!! Place the front attatchment marker ----------------------------",  &
                        "  marker modify &",  &
                        "  marker_name = (eval(eval($_self.Tak[1]).ground.MKR_slave_frontImp)) &",  &
                        "      location = (LOC_RELATIVE_TO( {$'field_10',$'field_11',$'field_12'} , eval(eval($_self.Tak[1]).ground.MKR_master) ))",  &
                        "",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "  !!! Place the rear attatchment marker -----------------------------",  &
                        "  marker modify &",  &
                        "  marker_name = (eval(eval($_self.Tak[1]).ground.MKR_slave_RearImp)) &",  &
                        "      location = (LOC_RELATIVE_TO( {$'field_13',$'field_14',$'field_15'} , eval(eval($_self.Tak[1]).ground.MKR_master) ))",  &
                        "  ",  &
                        "  model display model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "",  &
                        "  if cond=(db_exists(eval($_self.Tak[1]//\".wheel_2L\")))",  &
                        "    !!! Update wheels",  &
                        "    atire wheel_tire modify &",  &
                        "        wheel_name = \"wheel_2L\" &",  &
                        "        side = left &",  &
                        "        cm_offset = 0.0 &",  &
                        "        mass = 80.0 &",  &
                        "        Ixx_Iyy = 10.0 &",  &
                        "        Izz = 12.0 &",  &
                        "        center_offset = 0.0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_4\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\")) &",  &
                        "        location = (LOC_RELATIVE_TO({0, 0, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_2L))) &",  &
                        "        orientation = (ORI_RELATIVE_TO({0, 90, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_2L))) &",  &
                        "        longitudinal_velocity = 0.0 &",  &
                        "        spin_velocity = 0.0 ",  &
                        "  else",  &
                        "    !!!Create rear left wheel -------------------------------------------------",  &
                        "    atire wheel_tire create &",  &
                        "        wheel_name = \"wheel_2L\" &",  &
                        "        side = left &",  &
                        "        cm_offset = 0 &",  &
                        "        mass = 80 &",  &
                        "        Ixx_Iyy = 10 &",  &
                        "        Izz = 12 &",  &
                        "        center_offset = 0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_4\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\")) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_2L) )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,90,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_2L) )) &",  &
                        "        longitudinal_velocity = 0 &",  &
                        "        spin_velocity = 0 ",  &
                        "  end",  &
                        "  if cond=(db_exists(eval($_self.Tak[1]//\".wheel_2R\")))",  &
                        "    !!! Update wheels",  &
                        "    atire wheel_tire modify &",  &
                        "        wheel_name = \"wheel_2R\"&",  &
                        "        side = left &",  &
                        "        cm_offset = 0.0 &",  &
                        "        mass = 80.0 &",  &
                        "        Ixx_Iyy = 10.0 &",  &
                        "        Izz = 12.0 &",  &
                        "        center_offset = 0.0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_4\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\"))&",  &
                        "        location = (LOC_RELATIVE_TO({0, 0, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_2R))) &",  &
                        "        orientation = (ORI_RELATIVE_TO({0, 90, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_2R))) &",  &
                        "        longitudinal_velocity = 0.0 &",  &
                        "        spin_velocity = 0.0 ",  &
                        "  else",  &
                        "    !!!Create rear right wheel ------------------------------------------------",  &
                        "    atire wheel_tire create &",  &
                        "        wheel_name = \"wheel_2R\" &",  &
                        "        side = right &",  &
                        "        cm_offset = 0 &",  &
                        "        mass = 80 &",  &
                        "        Ixx_Iyy = 10 &",  &
                        "        Izz = 12 &",  &
                        "        center_offset = 0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_4\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\")) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_2R) )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,90,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_2R) ))&",  &
                        "        longitudinal_velocity = 0 &",  &
                        "        spin_velocity = 0 ",  &
                        "  end",  &
                        "  if cond=(db_exists(eval($_self.Tak[1]//\".wheel_1L\")))",  &
                        "    !!! Update wheels",  &
                        "    atire wheel_tire modify &",  &
                        "        wheel_name = \"wheel_1L\"&",  &
                        "        side = left &",  &
                        "        cm_offset = 0.0 &",  &
                        "        mass = 80.0 &",  &
                        "        Ixx_Iyy = 10.0 &",  &
                        "        Izz = 12.0 &",  &
                        "        center_offset = 0.0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_3\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\"))&",  &
                        "        location = (LOC_RELATIVE_TO({0, 0, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_1L))) &",  &
                        "        orientation = (ORI_RELATIVE_TO({0, 90, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_1L))) &",  &
                        "        longitudinal_velocity = 0.0 &",  &
                        "        spin_velocity = 0.0 ",  &
                        "  else",  &
                        "    !!!Create front left wheel -------------------------------------------------",  &
                        "    atire wheel_tire create &",  &
                        "        wheel_name = \"wheel_1L\" &",  &
                        "        side = left &",  &
                        "        cm_offset = 0 &",  &
                        "        mass = 80 &",  &
                        "        Ixx_Iyy = 10 &",  &
                        "        Izz = 12 &",  &
                        "        center_offset = 0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_3\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\")) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_1L) )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,90,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_1L) )) &",  &
                        "        longitudinal_velocity = 0 &",  &
                        "        spin_velocity = 0 ",  &
                        "  end",  &
                        "  if cond=(db_exists(eval($_self.Tak[1]//\".wheel_1R\")))",  &
                        "    !!! Update wheels",  &
                        "    atire wheel_tire modify &",  &
                        "        wheel_name = \"wheel_1R\" &",  &
                        "        side = left &",  &
                        "        cm_offset = 0.0 &",  &
                        "        mass = 80.0 &",  &
                        "        Ixx_Iyy = 10.0 &",  &
                        "        Izz = 12.0 &",  &
                        "        center_offset = 0.0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_3\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\")) &",  &
                        "        location = (LOC_RELATIVE_TO({0, 0, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_1R))) &",  &
                        "        orientation = (ORI_RELATIVE_TO({0, 90, 0}, eval(eval($_self.Tak[1]).ground.MKR_wheel_1R))) &",  &
                        "        longitudinal_velocity = 0.0 &",  &
                        "        spin_velocity = 0.0",  &
                        "  else",  &
                        "    !!!Create front right wheel ------------------------------------------------",  &
                        "    atire wheel_tire create &",  &
                        "        wheel_name = \"wheel_1R\" &",  &
                        "        side = right &",  &
                        "        cm_offset = 0 &",  &
                        "        mass = 80 &",  &
                        "        Ixx_Iyy = 10 &",  &
                        "        Izz = 12 &",  &
                        "        center_offset = 0 &",  &
                        "        tire_property_file = (eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/wheels/$option_3\")) &",  &
                        "        road_name = (eval($_self.MainModelName[1]//\".testTrack\")) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_1R) )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,90,0} , eval(eval($_self.Tak[1]).ground.MKR_wheel_1R) )) &",  &
                        "        longitudinal_velocity = 0 &",  &
                        "        spin_velocity = 0",  &
                        "  end",  &
                        "end",  &
                        "var del var=$_self.Tak"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_1  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 152.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "New name of submodel:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_2  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Wheel base"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_3  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "From rear axle to between boxes"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_4  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of front box"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_5  &
   location = 4.0, 166.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of front box"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_6  &
   location = 4.0, 193.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of front box"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_7  &
   location = 4.0, 247.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of rear box"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_8  &
   location = 4.0, 274.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of rear box"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_9  &
   location = 4.0, 220.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of rear box"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_10  &
   location = 2.0, 355.0  &
   height = 25.0  &
   width = 158.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Select front axle"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_11  &
   location = 2.0, 382.0  &
   height = 25.0  &
   width = 158.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Select rear axle"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_1  &
   location = 232.0, 58.0  &
   height = 25.0  &
   width = 144.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "chassis"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   commands = "variable modify variable_name=.SDlib_plugin.dboxes.dbox_cs4w.Tak&",  &
              "    string_value = (STR_INSERT (eval(.SDlib_plugin.dboxes.dbox_cs4w.modelName.string_value), \"$field_1\", (STR_LENGTH (eval(.SDlib_plugin.dboxes.dbox_cs4w.modelName.string_value))+1)))",  &
              "",  &
              "int field set field = .SDlib_plugin.dboxes.dbox_cs4w.field_18&",  &
              "    string = (eval(.SDlib_plugin.dboxes.dbox_cs4w.Tak.string_value))"  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_2  &
   location = 300.0, 85.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.725"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_3  &
   location = 300.0, 112.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.6"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_4  &
   location = 300.0, 139.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_5  &
   location = 300.0, 166.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_6  &
   location = 300.0, 193.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_7  &
   location = 300.0, 220.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_8  &
   location = 300.0, 247.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_9  &
   location = 300.0, 274.0  &
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
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cs4w.option_1  &
   location = 162.0, 355.0  &
   height = 25.0  &
   width = 150.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "ackermann, round", "ackermann, rectangular",  &
             "ackermann, for telehandler", "Stiff axle"  &
   current_choice = "ackermann, rectangular"  &
   values = ".SDlib_plugin.dboxes.dbox_acmCircular",  &
            ".SDlib_plugin.dboxes.dbox_acmRect",  &
            ".SDlib_plugin.dboxes.dbox_acmTeleF", "dbox_stiffAxle"
!
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cs4w.option_2  &
   location = 162.0, 382.0  &
   height = 25.0  &
   width = 150.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "ackermann, round", "ackermann, rectangular", "Stiff axle"  &
   current_choice = "ackermann, rectangular"  &
   values = ".SDlib_plugin.dboxes.dbox_acmCircular",  &
            ".SDlib_plugin.dboxes.dbox_acmRect", "dbox_stiffAxle"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_1  &
   location = 87.0, 730.0  &
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
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_2  &
   location = 243.0, 730.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Close"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_12  &
   location = 2.0, 409.0  &
   height = 25.0  &
   width = 158.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Front wheel type"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_13  &
   location = 2.0, 436.0  &
   height = 25.0  &
   width = 158.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Rear wheel type"
!
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cs4w.option_3  &
   location = 162.0, 409.0  &
   height = 25.0  &
   width = 150.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "Front wheel", "Rear wheel"  &
   current_choice = "Front wheel"  &
   values = "caseFrontWheel.tir", "caseRearWheel.tir"
!
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cs4w.option_4  &
   location = 162.0, 436.0  &
   height = 25.0  &
   width = 150.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "Rear wheel", "Front wheel"  &
   current_choice = "Front wheel"  &
   values = "caseRearWheel.tir", "caseFrontWheel.tir"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_3  &
   location = 165.0, 730.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_4  &
   location = 328.0, 355.0  &
   height = 25.0  &
   width = 46.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Go"  &
   commands = "!!!Open dialog box for front axle ------------------------------------------",  &
              "interface dialog display dialog= $option_1"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_5  &
   location = 328.0, 382.0  &
   height = 25.0  &
   width = 46.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Go"  &
   commands = "!!!Open dialog box for rear axle ------------------------------------------",  &
              "interface dialog display dialog= $option_2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_14  &
   location = 2.0, 463.0  &
   height = 25.0  &
   width = 238.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of front attatchment (x)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_15  &
   location = 2.0, 490.0  &
   height = 25.0  &
   width = 238.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of front attatchment (y)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_16  &
   location = 2.0, 517.0  &
   height = 25.0  &
   width = 238.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of front attatchment (z)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_17  &
   location = 2.0, 544.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Select submodel"
!
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cs4w.option_5  &
   location = 136.0, 571.0  &
   height = 25.0  &
   width = 172.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "Front loader (BH)", "Skid steer loader (vertical)",  &
             "Skid steer loader (radial)"  &
   current_choice = "Front loader (BH)"  &
   values = ".SDlib_plugin.dboxes.dbox_Loader1",  &
            ".SDlib_plugin.dboxes.dbox_sslvertical",  &
            ".SDlib_plugin.dboxes.dbox_sslradial"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_10  &
   location = 298.0, 463.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_11  &
   location = 298.0, 490.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_12  &
   location = 298.0, 517.0  &
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
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_18  &
   location = 2.0, 598.0  &
   height = 25.0  &
   width = 236.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of rear attatchment (x)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_19  &
   location = 2.0, 625.0  &
   height = 25.0  &
   width = 236.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of rear attatchment (y)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_20  &
   location = 2.0, 652.0  &
   height = 25.0  &
   width = 236.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of rear attatchment (z)"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_21  &
   location = 2.0, 679.0  &
   height = 25.0  &
   width = 154.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Select rear submodel"
!
interface option_menu create  &
   option_menu_name = .SDlib_plugin.dboxes.dbox_cs4w.option_6  &
   location = 158.0, 679.0  &
   height = 25.0  &
   width = 150.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "Backhoe (1)", "Backhoe plate (1)", "Unknown backhoe plate"  &
   current_choice = "Backhoe (1)"  &
   values = ".SDlib_plugin.dboxes.dbox_BH1",  &
            ".SDlib_plugin.dboxes.dbox_BHPlate1",  &
            ".SDlib_plugin.dboxes.dbox_BHPlateNA"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_13  &
   location = 298.0, 598.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.4"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_14  &
   location = 298.0, 625.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_15  &
   location = 298.0, 652.0  &
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
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_6  &
   location = 326.0, 544.0  &
   height = 25.0  &
   width = 48.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Go"  &
   commands = "interface dialog display dialog= $option_5"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_cs4w.button_7  &
   location = 326.0, 679.0  &
   height = 25.0  &
   width = 48.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Go"  &
   commands = "interface dialog display dialog= $option_6"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_22  &
   location = 4.0, 301.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of front axle relative to rear axle"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_23  &
   location = 4.0, 328.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-position of boxes"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_16  &
   location = 300.0, 301.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.0"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_17  &
   location = 300.0, 328.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "-0.1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_18  &
   location = 232.0, 4.0  &
   height = 25.0  &
   width = 144.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_cs4w.field_19  &
   location = 232.0, 31.0  &
   height = 25.0  &
   width = 144.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_24  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 152.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of main model"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_cs4w.label_25  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 152.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name:"
