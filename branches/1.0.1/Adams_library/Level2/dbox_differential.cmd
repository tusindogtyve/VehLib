!
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_differential  &
   location = 45.0, 187.0  &
   height = 254.0  &
   width = 400.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_differential"  &
   iconifiable = no  &
   start_commands = "int field set field=.SDlib_plugin.dboxes.dbox_differential.field_1 string=(eval(db_default( .system_defaults, \"model\")))"  &
   execution_commands = "! Open the differentila file",  &
                        "file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/level2/diff.cmd\"))",  &
                        "",  &
                        "!!! Update variables",  &
                        "variable modify variable=.diff.DV_diff_gearRatio    real=$field_3",  &
                        "variable modify variable=.diff.DV_diff_diff_r       real=$field_4",  &
                        "variable modify variable=.diff.DV_diff_wheelShaft_r real=$field_5",  &
                        "variable modify variable=.diff.DV_diff_wheelShaft_l real=$field_6",  &
                        "variable modify variable=.diff.DV_diff_driveShaft_r real=$field_7",  &
                        "variable modify variable=.diff.DV_diff_driveShaft_l real=$field_8",  &
                        "",  &
                        "!!! Rename parts",  &
                        "entity modify entity = .diff.PART_diff_driveShaft new = .diff.PART_$'field_2'_driveShaft",  &
                        "entity modify entity = .diff.PART_diff_to_cs      new = .diff.PART_$'field_2'_to_cs",  &
                        "entity modify entity = .diff.PART_diff_mainGear   new = .diff.PART_$'field_2'_mainGear",  &
                        "entity modify entity = .diff.PART_diff_smallGear  new = .diff.PART_$'field_2'_smallGear",  &
                        "entity modify entity = .diff.PART_diff_shaftR     new = .diff.PART_$'field_2'_shaftR",  &
                        "entity modify entity = .diff.PART_diff_shaftL     new = .diff.PART_$'field_2'_shaftL",  &
                        "",  &
                        "!!! Rename state variables",  &
                        "entity modify entity = .diff.SV_diff_leftShaft_P  new = .diff.SV_$'field_2'_leftShaft_P",  &
                        "entity modify entity = .diff.SV_diff_rightShaft_P new = .diff.SV_$'field_2'_rightShaft_P",  &
                        "",  &
                        "!!! Rename design variables",  &
                        "entity modify entity = .diff.DV_diff_gearRatio    new = .diff.DV_$'field_2'_gearRatio",  &
                        "entity modify entity = .diff.DV_diff_diff_r       new = .diff.DV_$'field_2'_diff_r",  &
                        "entity modify entity = .diff.DV_diff_wheelShaft_r new = .diff.DV_$'field_2'_wheelShaft_r",  &
                        "entity modify entity = .diff.DV_diff_wheelShaft_l new = .diff.DV_$'field_2'_wheelShaft_l",  &
                        "entity modify entity = .diff.DV_diff_driveShaft_r new = .diff.DV_$'field_2'_driveShaft_r",  &
                        "entity modify entity = .diff.DV_diff_driveShaft_l new = .diff.DV_$'field_2'_driveShaft_l",  &
                        "",  &
                        "!!! Rename joint",  &
                        "entity modify entity = .diff.JT_driveShaft_to_cs       new = .diff.JT_$'field_2'_driveShaft_to_cs",  &
                        "entity modify entity = .diff.JT_mainGear_to_cs         new = .diff.JT_$'field_2'_mainGear_to_cs",  &
                        "entity modify entity = .diff.JT_leftShaft_to_mainGear  new = .diff.JT_$'field_2'_leftShaft_to_mainGear",  &
                        "entity modify entity = .diff.JT_rightShaft_to_mainGear new = .diff.JT_$'field_2'_rightShaft_to_mainGear",  &
                        "entity modify entity = .diff.JT_smallGear_to_mainGear  new = .diff.JT_$'field_2'_smallGear_to_mainGear",  &
                        "entity modify entity = .diff.GEAR_diff_driveShaft_to_mainGear  new = .diff.GEAR_$'field_2'_driveShaft_to_mainGear",  &
                        "entity modify entity = .diff.GEAR_diff_smallGear_to_leftShaft  new = .diff.GEAR_$'field_2'_smallGear_to_leftShaft",  &
                        "entity modify entity = .diff.GEAR_diff_smallGear_to_rightShaft new = .diff.GEAR_$'field_2'_smallGear_to_rightShaft",  &
                        "",  &
                        "!!! Rename markers",  &
                        "entity modify entity = .diff.ground.MKR_diff_master new = .diff.ground.MKR_$'field_2'_master",  &
                        "",  &
                        "model merge &",  &
                        "    model_name = .diff &",  &
                        "    into_model_name = $field_1 &",  &
                        "    &",  &
                        "    rotation = 0.0, 0.0, 0.0  &",  &
                        "    duplicate_parts = merge",  &
                        "    model delete model = .diff",  &
                        "",  &
                        "model display fit_to_view=yes"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_differential.button_1  &
   location = 320.0, 225.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_differential.button_2  &
   location = 242.0, 225.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_differential.button_3  &
   location = 164.0, 225.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Merge into model"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_2  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Gear ratio     1:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_3  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of differential housing"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_4  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of wheel shafts [m]"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_5  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of dfferential after mearge"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_6  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of wheel shafts."
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_1  &
   location = 270.0, 4.0  &
   height = 25.0  &
   width = 126.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "new_model"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_2  &
   location = 270.0, 31.0  &
   height = 25.0  &
   width = 126.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "diff_1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_3  &
   location = 320.0, 58.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_4  &
   location = 320.0, 85.0  &
   height = 25.0  &
   width = 76.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_5  &
   location = 320.0, 112.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.02"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_6  &
   location = 320.0, 139.0  &
   height = 25.0  &
   width = 76.0  &
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
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_10  &
   location = 4.0, 166.0  &
   height = 25.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of drive shaft"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_differential.label_11  &
   location = 4.0, 193.0  &
   height = 25.0  &
   width = 294.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of drive shaft"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_7  &
   location = 320.0, 166.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.015"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_differential.field_8  &
   location = 320.0, 193.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.8"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
