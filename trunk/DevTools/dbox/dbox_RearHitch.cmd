!
interface dialog_box create  &
   dialog_box_name = .VehLib_plugin.dboxes.dbox_RearHitch  &
   location = 687.0, 307.0  &
   height = 625.0  &
   width = 498.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_RearHitch"  &
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
                    "  !int field set field = $_self.field_? &",  &
                    "  !    string = ($'field_main.$'field_newName'.DV_someName1)",  &
                    "  !int field set field = $_self.field_? &",  &
                    "  !    string = ($'field_main.$'field_newName'.DV_someName2)",  &
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
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"DV_someName1\")))",  &
                        "!#####################################################!",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "  !#####################################################!",  &
                        "  !                REMEMBER TO CHANGE                   !",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Hitch/RearHitch\")) ",  &
                        "  !#####################################################!",  &
                        "  model copy &",  &
                        "    !#####################################################!",  &
                        "    !                REMEMBER TO CHANGE                   !",  &
                        "     model_name = RearHitch &",  &
                        "    !#####################################################!",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "  !#####################################################!",  &
                        "  !                REMEMBER TO CHANGE                   !",  &
                        "  model delete model=RearHitch",  &
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
                        "if condition=((db_exists(\"$'field_csModel'.part_cs\")) && db_exists (\"$'field_main'.$'field_newName'.MainBody\"))",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! Place this sub model. -----------------------------------------",  &
                        "    marker modify &",  &
                        "     marker_name = ($'field_main'.$'field_newName'.ground.Mkr_master) &",  &
                        "        location = (LOC_RELATIVE_TO( {0,0,0} , $'field_csModel'.ground.MKR_slave_RearImp))&",  &
                        "     orientation = (ORI_RELATIVE_TO( {180,0,0} , $'field_csModel'.ground.MKR_slave_RearImp))",  &
                        "",  &
                        "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "    !!! attach the sub model to the chassis ---------------------------",  &
                        "    part merge rigid_body part_name=($'field_main'.$'field_newName'.MainBody) &",  &
                        "    into_part=($'field_csModel'.PART_Cs)",  &
                        "end",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "!if condition=(db_exists(\"$'field_main'.$'field_newName'.DV_someName1\"))",  &
                        "!  !var mod var=$'field_main'.$'field_newName'.DV_someName1 real=$field_1",  &
                        "!  !var mod var=$'field_main'.$'field_newName'.DV_someName2 real=$field_1",  &
                        "!end",  &
                        "!#####################################################!",  &
			" !Points ont TopLinkL ", &
                        "point modify point_name = $'field_main'.$'field_newName'.TopLinkL.POINT_1 location = (LOC_RELATIVE_TO({-$field_t1_1,0,$field_t1_2},$'field_main'.$'field_newName'.TopLinkL.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.TopLinkL.POINT_2 location = (LOC_RELATIVE_TO({$field_t1_3,0,$field_t1_7},$'field_main'.$'field_newName'.TopLinkL.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.TopLinkL.POINT_3 location = (LOC_RELATIVE_TO({$field_t1_5,0,$field_t1_9},$'field_main'.$'field_newName'.TopLinkL.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.TopLinkL.POINT_4 location = (LOC_RELATIVE_TO({$field_t1_6,0,$field_t1_10},$'field_main'.$'field_newName'.TopLinkL.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkL",  &
			" !Points ont TopLinkR ", &
                        "point modify point_name = $'field_main'.$'field_newName'.TopLinkR.POINT_1 location = (LOC_RELATIVE_TO({-$field_t1_1,0,-$field_t1_2},$'field_main'.$'field_newName'.TopLinkR.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.TopLinkR.POINT_2 location = (LOC_RELATIVE_TO({$field_t1_3,0,-$field_t1_7},$'field_main'.$'field_newName'.TopLinkR.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.TopLinkR.POINT_3 location = (LOC_RELATIVE_TO({$field_t1_5,0,-$field_t1_9},$'field_main'.$'field_newName'.TopLinkR.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.TopLinkR.POINT_4 location = (LOC_RELATIVE_TO({$field_t1_6,0,-$field_t1_10},$'field_main'.$'field_newName'.TopLinkR.MARKER_2)) relative_to=$'field_main'.$'field_newName'.TopLinkR",  &
			" !Points ont LowerLinkL ", &
                        "point modify point_name = $'field_main'.$'field_newName'.LowerLinkL.POINT_51 location = (LOC_RELATIVE_TO({0,0,0},$'field_main'.$'field_newName'.LowerLinkL.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkL.POINT_52 location = (LOC_RELATIVE_TO({$field_t3_1,0,0},$'field_main'.$'field_newName'.LowerLinkL.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkL.POINT_53 location = (LOC_RELATIVE_TO({$field_t3_4,-$field_t3_8,0},$'field_main'.$'field_newName'.LowerLinkL.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkL.POINT_54 location = (LOC_RELATIVE_TO({$field_t3_5,-$field_t3_9,0},$'field_main'.$'field_newName'.LowerLinkL.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkL",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkL.LinkagePoint location = (LOC_RELATIVE_TO({$field_t3_3,-$field_t3_7,0},$'field_main'.$'field_newName'.LowerLinkL.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkL",  &
			" !Points ont LowerLinkR ", &
                        "point modify point_name = $'field_main'.$'field_newName'.LowerLinkR.POINT_51 location = (LOC_RELATIVE_TO({0,0,0},$'field_main'.$'field_newName'.LowerLinkR.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkR.POINT_52 location = (LOC_RELATIVE_TO({$field_t3_1,0,0},$'field_main'.$'field_newName'.LowerLinkR.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkR.POINT_53 location = (LOC_RELATIVE_TO({$field_t3_4,$field_t3_8,0},$'field_main'.$'field_newName'.LowerLinkR.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkR.POINT_54 location = (LOC_RELATIVE_TO({$field_t3_5,$field_t3_9,0},$'field_main'.$'field_newName'.LowerLinkR.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkR",  &
			"point modify point_name = $'field_main'.$'field_newName'.LowerLinkR.LinkagePoint location = (LOC_RELATIVE_TO({$field_t3_3,$field_t3_7,0},$'field_main'.$'field_newName'.LowerLinkR.MARKER_105)) relative_to=$'field_main'.$'field_newName'.LowerLinkR",  &
			" !Design Variables ", &
			"var mod var=$'field_main'.$'field_newName'.DV_L1 real=$field_t1_2",  &
			"var mod var=$'field_main'.$'field_newName'.DV_R1 real=$field_t1_1",  &
			" !Bottom carriers ",  &
			"var mod var=$'field_main'.$'field_newName'.DV_BottLinkMountWidth real=$field_1",  &
			"var mod var=$'field_main'.$'field_newName'.DV_BottLinkMountOffset real=$field_2",  &
			"var mod var=$'field_main'.$'field_newName'.DV_BottLinkMountOffsetX real=$field_3",  &
			" !Bottom Link DVs ",  &
			"var mod var=$'field_main'.$'field_newName'.DV_TopLinkWidth real=$field_6",  &
			!"var mod var=$'field_main'.$'field_newName'.DV_TopLinkOffset real=$field_4",  &
			"var mod var=$'field_main'.$'field_newName'.DV_TopLinkOffsetX real=$field_5",  &
			"var mod var=$'field_main'.$'field_newName'.DV_TopLinkLCylMount real=({$field_t1_4 ,$field_t2_1, $field_t1_8})",  &
			"var mod var=$'field_main'.$'field_newName'.DV_TopLinkRCylMount real=({$field_t1_4 ,$field_t2_1, -$field_t1_8})",  &
			" !Cyl mounts, main body ",  &
			"var mod var=$'field_main'.$'field_newName'.DV_CylMountBodyWidth real=$field_9",  &
			"var mod var=$'field_main'.$'field_newName'.DV_CylMountBodyOffset real=$field_7",  &
			"var mod var=$'field_main'.$'field_newName'.DV_CylMountOffsetX real=$field_8",  &
			" !Cylinder dimensions ",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchL_rc real=$field_t5_1",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchL_rp real=$field_t5_2",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchL_min_length real=$field_t5_3",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchL_max_length real=$field_t5_4",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchL_ini_length real=$field_t5_5",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchR_rc real=$field_t5_1",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchR_rp real=$field_t5_2",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchR_min_length real=$field_t5_3",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchR_max_length real=$field_t5_4",  &
			"var mod var=$'field_main'.$'field_newName'.DV_Cyl_HitchR_ini_length real=$field_t5_5",  &
			"var mod var=$'field_main'.$'field_newName'.DV_ChainMin real=$field_t5_6",  &
			"var mod var=$'field_main'.$'field_newName'.DV_ChainMax real=$field_t5_7",  &
                        "",  &
                        "!"  &
   decorate = yes  &
   resizable = no  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_RearHitch.button_1  &
   location = 418.0, 596.0  &
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
   push_button_name = .VehLib_plugin.dboxes.dbox_RearHitch.button_2  &
   location = 340.0, 596.0  &
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
   push_button_name = .VehLib_plugin.dboxes.dbox_RearHitch.button_3  &
   location = 262.0, 596.0  &
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
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_1  &
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
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_2  &
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
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_3  &
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
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_4  &
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
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_main  &
   location = 375.0, 4.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_old  &
   location = 375.0, 31.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_newName  &
   location = 375.0, 58.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_csModel  &
   location = 375.0, 85.0  &
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
   separator_name = .VehLib_plugin.dboxes.dbox_RearHitch.sep_1  &
   location = 4.0, 112.0  &
   height = 4.0  &
   width = 488.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_5  &
   location = 4.0, 155.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "3 point carriers"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_1  &
   location = 208.0, 153.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.9"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_2  &
   location = 308.0, 153.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_3  &
   location = 406.0, 153.0  &
   height = 27.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_6  &
   location = 208.0, 123.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_7  &
   location = 308.0, 123.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Offset Z"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_8  &
   location = 406.0, 124.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Offset X"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_4  &
   location = 308.0, 186.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_5  &
   location = 406.0, 186.0  &
   height = 27.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_6  &
   location = 208.0, 186.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.9"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_5_2  &
   location = 4.0, 188.0  &
   height = 25.0  &
   width = 112.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "3 point top linkage"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_7  &
   location = 308.0, 220.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_8  &
   location = 406.0, 220.0  &
   height = 27.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.field_9  &
   location = 208.0, 220.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.label_5_3  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 168.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "3 point cylinder mounts"
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_RearHitch.sep_2  &
   location = 4.0, 250.0  &
   height = 4.0  &
   width = 488.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface tab_container create  &
   tab_container_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1  &
   location = 8.0, 260.0  &
   height = 327.0  &
   width = 482.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   current_choice = "Upper carrier"
!
interface container create  &
   container_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1  &
   height = 21.0  &
   width = 449.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Upper carrier"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_2  &
   location = 250.0, 2.0  &
   height = 292.0  &
   width = 186.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   icon_file =   &
		  "RearHitch.png"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3  &
   location = 50.0, 2.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "A"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_2  &
   location = 50.0, 29.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "B"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_3  &
   location = 50.0, 56.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "C"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_4  &
   location = 50.0, 83.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "D"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_5  &
   location = 50.0, 110.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "E"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_6  &
   location = 50.0, 137.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "F"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_7  &
   location = 50.0, 164.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "G"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_8  &
   location = 50.0, 191.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "H"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_9  &
   location = 50.0, 218.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "I"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_10  &
   location = 50.0, 245.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "J"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.label_3_11  &
   location = 50.0, 272.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "K"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_1  &
   location = 70.0, 2.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_2  &
   location = 70.0, 29.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_3  &
   location = 70.0, 56.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_4  &
   location = 70.0, 83.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.27"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_5  &
   location = 70.0, 110.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_6  &
   location = 70.0, 137.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.45"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_7  &
   location = 70.0, 164.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_8  &
   location = 70.0, 191.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.20"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_9  &
   location = 70.0, 218.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_10  &
   location = 70.0, 245.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_1.field_t1_11  &
   location = 70.0, 272.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface container create  &
   container_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_2  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Upper Carrier Z"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_2.label_2  &
   location = 250.0, 2.0  &
   height = 292.0  &
   width = 68.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   icon_file =   &
               "RearHitchZ.png"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_2.label_3  &
   location = 50.0, 2.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "A"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_2.field_t2_1  &
   location = 70.0, 2.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface container create  &
   container_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Lower Carrier"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_2  &
   location = 250.0, 2.0  &
   height = 292.0  &
   width = 198.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   icon_file =   &
               "RearHitchLower.png"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3  &
   location = 50.0, 2.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "A"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_2  &
   location = 50.0, 29.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "B"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_3  &
   location = 50.0, 56.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "C"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_4  &
   location = 50.0, 83.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "D"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_5  &
   location = 50.0, 110.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "E"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_6  &
   location = 50.0, 137.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "F"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_7  &
   location = 50.0, 164.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "G"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_8  &
   location = 50.0, 191.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "H"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_9  &
   location = 50.0, 218.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "I"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_10  &
   location = 50.0, 245.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "J"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.label_3_11  &
   location = 50.0, 272.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "K"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_1  &
   location = 70.0, 2.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_2  &
   location = 70.0, 29.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_3  &
   location = 70.0, 56.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.37"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_4  &
   location = 70.0, 83.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_5  &
   location = 70.0, 110.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_6  &
   location = 70.0, 137.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_7  &
   location = 70.0, 164.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_8  &
   location = 70.0, 191.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_9  &
   location = 70.0, 218.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.25"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_10  &
   location = 70.0, 245.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_3.field_t3_11  &
   location = 70.0, 272.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface container create  &
   container_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_4  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Lower Carrier Z"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_4.label_2  &
   location = 250.0, 2.0  &
   height = 292.0  &
   width = 58.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   icon_file =   &
               "RearHitchLowerZ.png"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_4.label_3  &
   location = 50.0, 2.0  &
   height = 25.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "A"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_4.field_t4_1  &
   location = 70.0, 2.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = -0.5
!
interface container create  &
   container_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5  &
   height = 270.0  &
   width = 474.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   tab_label = "Cylinders"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_1  &
   location = 10.0, 2.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_2  &
   location = 10.0, 29.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Rod radius"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_3  &
   location = 10.0, 56.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_4  &
   location = 10.0, 83.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_5  &
   location = 10.0, 110.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Initial length"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_6  &
   location = 10.0, 145.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stabilizer min"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.label_7  &
   location = 10.0, 172.0  &
   height = 25.0  &
   width = 90.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stabilizer max"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_1  &
   location = 120.0, 2.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_2  &
   location = 120.0, 29.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.032"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_3  &
   location = 120.0, 56.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.45"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_4  &
   location = 120.0, 83.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.75"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_5  &
   location = 120.0, 110.0  &
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
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_6  &
   location = 120.0, 145.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.27"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.field_t5_7  &
   location = 120.0, 172.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.37"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = lt  &
   upper_limit = 2.0  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_RearHitch.tabcont_1.cont_5.sep_1  &
   location = 8.0, 140.0  &
   height = 4.0  &
   width = 200.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!