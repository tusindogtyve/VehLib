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
   dialog_box_name = .VehLib_plugin.dboxes.dbox_cs4w  &
   location = 601.0, 63.0  &
   height = 533.0  &
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
                    "end",  &
		    "int field modify field= $_self.field_13 directory = (eval(getenv('MDI_SD_LIBRARY_SITE')//'/Level3/Wheels'))", &
		    "int field modify field= $_self.field_15 directory = (eval(getenv('MDI_SD_LIBRARY_SITE')//'/Level3/Wheels'))" &
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
                     "! view manage orient view=iso up_axis=(.MDI.up_axis) forward_axis=(.MDI.forward_axis)",  &
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
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Chassis/cs4w\")) ",  &
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
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_imp_rear)             ) real = ($field_11)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_imp_front)            ) real = ($field_10)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_imp_stabi)            ) real = ($field_12)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_z_axle_1)      ) real = ($field_16)",  &
                        "  var mod var = (eval(eval($_self.Tak[1]).DV_Cs_dst_z_axle2_boxMKR)) real = ($field_17)",  &
                        "  ",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "  !!! Place the front implement marker ------------------------------",  &
                        "!  marker modify &",  &
                        "!  marker_name = (eval(eval($_self.Tak[1]).ground.MKR_slave_frontImp)) &",  &
                        "!      location = (LOC_RELATIVE_TO( {$'field_10'} , eval(eval($_self.Tak[1]).ground.MKR_master) ))",  &
                        "",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "  !!! Place the rear implement marker -------------------------------",  &
                        "!  marker modify &",  &
                        "!  marker_name = (eval(eval($_self.Tak[1]).ground.MKR_slave_RearImp)) &",  &
                        "!      location = (LOC_RELATIVE_TO( {$'field_11'} , eval(eval($_self.Tak[1]).ground.MKR_master) ))",  &
                        "",  &
                        "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "  !!! Place the stabilizer legs -------------------------------------",  &
                        "!  marker modify &",  &
                        "!  marker_name = (eval(eval($_self.Tak[1]).ground.MKR_slave_RearImp)) &",  &
                        "!      location = (LOC_RELATIVE_TO( {$'field_12'} , eval(eval($_self.Tak[1]).ground.MKR_master) ))",  &
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
                        "        tire_property_file = (eval($field_13)) &",  &
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
                        "        tire_property_file = (eval($field_13)) &",  &
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
                        "        tire_property_file = (eval($field_13)) &",  &
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
                        "        tire_property_file = (eval($field_13)) &",  &
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
                        "        tire_property_file = (eval($field_15)) &",  &
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
                        "        tire_property_file = (eval($field_15)) &",  &
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
                        "        tire_property_file = (eval($field_15)) &",  &
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
                        "        tire_property_file = (eval($field_15)) &",  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_1  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_2  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_3  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_4  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_5  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_6  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_7  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_8  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_9  &
   location = 4.0, 220.0  &
   height = 25.0  &
   width = 284.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of rear box"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_1  &
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
   commands = "variable modify variable_name=.VehLib_plugin.dboxes.dbox_cs4w.Tak&",  &
              "    string_value = (STR_INSERT (eval(.VehLib_plugin.dboxes.dbox_cs4w.modelName.string_value), \"$field_1\", (STR_LENGTH (eval(.VehLib_plugin.dboxes.dbox_cs4w.modelName.string_value))+1)))",  &
              "",  &
              "int field set field = .VehLib_plugin.dboxes.dbox_cs4w.field_18&",  &
              "    string = (eval(.VehLib_plugin.dboxes.dbox_cs4w.Tak.string_value))"  &
   string_type = alpha_numeric  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_2  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_3  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_4  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_5  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_6  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_7  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_8  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_9  &
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
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_cs4w.button_1  &
   location = 87.0, 500.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "createdbox"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_cs4w.button_2  &
   location = 243.0, 500.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_12  &
   location = 2.0, 355.0  &
   height = 25.0  &
   width = 158.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Front wheel type"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_13  &
   location = 2.0, 382.0  &
   height = 25.0  &
   width = 158.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Rear wheel type"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_cs4w.button_3  &
   location = 165.0, 500.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog=$_parent"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_14  &
   location = 2.0, 409.0  &
   height = 25.0  &
   width = 238.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of front implement (x,y,z) [m]"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_15  &
   location = 2.0, 436.0  &
   height = 25.0  &
   width = 238.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of rear implement (x,y,z) [m]"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_16  &
   location = 2.0, 463.0  &
   height = 25.0  &
   width = 238.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Position of stabilizers (x,y,z) [m]"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_10  &
   location = 264.0, 409.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{2.0,0.0,0.6}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_11  &
   location = 264.0, 436.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{-0.4,0.0,0.3}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_12  &
   location = 264.0, 463.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "{2.4,0.0,-0.1}"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_22  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_23  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_16  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_17  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_18  &
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
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_19  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_24  &
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
   label_name = .VehLib_plugin.dboxes.dbox_cs4w.label_25  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 152.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name:"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_15  &
   location = 162.0, 355.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "Browse for tire file"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   file_type = any_file  &
   !directory = (eval(getenv('MDI_SD_LIBRARY_SITE')//'/Level3/Wheels')) &
   filter = "*.tir"  &
   alert_on_overwrite = no 
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_cs4w.field_13  &
   location = 162.0, 382.0  &
   height = 25.0  &
   width = 214.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "Browse for tire file"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   file_type = any_file  &
   !directory = (eval(getenv('MDI_SD_LIBRARY_SITE')//'/Level3/Wheels')) &
   filter = "*.tir"  &
   alert_on_overwrite = no 
