!
interface dialog_box create  &
   dialog_box_name = .SauerDanfoss.dboxes.dbox_BH1_cyl  &
   location = 969.0, 142.0  &
   height = 688.0  &
   width = 241.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Backhoe 1 cylinder modify"  &
   iconifiable = no  &
   execution_commands = "! The variables for the Boom cylinder are set",  &
                        "variable modify variable = DV_Cyl_Boom_ini_length real = $field_1",  &
                        "variable modify variable = DV_Cyl_Boom_min_length real = $field_2",  &
                        "variable modify variable = DV_Cyl_Boom_max_length real = $field_3",  &
                        "variable modify variable = DV_Cyl_Boom_rc real = $field_4",  &
                        "variable modify variable = DV_Cyl_Boom_rp real = $field_5",  &
                        "",  &
                        "! The variables for the Stick cylinder are set",  &
                        "variable modify variable = DV_Cyl_Stick_ini_length real = $field_19",  &
                        "variable modify variable = DV_Cyl_Stick_min_length real = $field_6",  &
                        "variable modify variable = DV_Cyl_Stick_max_length real = $field_7",  &
                        "variable modify variable = DV_Cyl_Stick_rc real = $field_8",  &
                        "variable modify variable = DV_Cyl_Stick_rp real = $field_9",  &
                        "",  &
                        "! The variables for the Telescope cylinder are set",  &
                        "variable modify variable = DV_Cyl_Tele_ini_length real = $field_20",  &
                        "variable modify variable = DV_Cyl_Tele_min_length real = $field_10",  &
                        "variable modify variable = DV_Cyl_Tele_max_length real = $field_11",  &
                        "variable modify variable = DV_Cyl_Tele_rc real = $field_12",  &
                        "variable modify variable = DV_Cyl_Tele_rp real = $field_13",  &
                        "",  &
                        "! The variables for the Bucket cylinder are set",  &
                        "variable modify variable = DV_Cyl_Buc_ini_length real = $field_21",  &
                        "variable modify variable = DV_Cyl_Buc_min_length real = $field_14",  &
                        "variable modify variable = DV_Cyl_Buc_max_length real = $field_15",  &
                        "variable modify variable = DV_Cyl_Buc_rc real = $field_16",  &
                        "variable modify variable = DV_Cyl_Boom_rp real = $field_17"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.button_2  &
   location = 83.0, 659.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.button_3  &
   location = 5.0, 659.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_18  &
   location = 4.0, 139.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_14  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_17  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_13  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Boom cylinder"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_2  &
   location = 123.0, 58.0  &
   height = 25.0  &
   width = 114.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_3  &
   location = 123.0, 85.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_4  &
   location = 123.0, 112.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_5  &
   location = 123.0, 139.0  &
   height = 25.0  &
   width = 114.0  &
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
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_3  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Stick cylinder"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_18_2  &
   location = 4.0, 303.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_14_2  &
   location = 4.0, 276.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_17_2  &
   location = 4.0, 249.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_13_2  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. length"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_6  &
   location = 123.0, 222.0  &
   height = 25.0  &
   width = 114.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_7  &
   location = 123.0, 249.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_8  &
   location = 123.0, 276.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_9  &
   location = 123.0, 303.0  &
   height = 25.0  &
   width = 114.0  &
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
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_18_2_2  &
   location = 4.0, 467.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_14_2_2  &
   location = 4.0, 440.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_17_2_2  &
   location = 4.0, 413.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_13_2_2  &
   location = 4.0, 386.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_3_2  &
   location = 4.0, 332.0  &
   height = 25.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Telescope cylinder"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_10  &
   location = 123.0, 386.0  &
   height = 25.0  &
   width = 114.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.2"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_11  &
   location = 123.0, 413.0  &
   height = 25.0  &
   width = 114.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.3"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_12  &
   location = 123.0, 440.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_13  &
   location = 123.0, 467.0  &
   height = 25.0  &
   width = 114.0  &
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
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_18_2_3  &
   location = 4.0, 633.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Piston radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_14_2_3  &
   location = 4.0, 606.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder radius"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_17_2_3  &
   location = 4.0, 579.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Max. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_13_2_3  &
   location = 4.0, 552.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Min. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_3_3  &
   location = 4.0, 498.0  &
   height = 25.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Bucket cylinder"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_14  &
   location = 123.0, 552.0  &
   height = 25.0  &
   width = 114.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.15"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_15  &
   location = 123.0, 579.0  &
   height = 25.0  &
   width = 114.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.6"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_16  &
   location = 123.0, 606.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_17  &
   location = 123.0, 633.0  &
   height = 25.0  &
   width = 114.0  &
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
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.button_5  &
   location = 161.0, 659.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface separator create  &
   separator_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.sep_1  &
   location = 4.0, 494.0  &
   height = 2.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.sep_2  &
   location = 4.0, 330.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.sep_3  &
   location = 4.0, 166.0  &
   width = 233.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_1  &
   location = 123.0, 31.0  &
   height = 25.0  &
   width = 114.0  &
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
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_2  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Ini. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_4  &
   location = 4.0, 195.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Ini. length"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_19  &
   location = 123.0, 195.0  &
   height = 25.0  &
   width = 114.0  &
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
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_20  &
   location = 123.0, 359.0  &
   height = 25.0  &
   width = 114.0  &
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
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_5  &
   location = 4.0, 359.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Ini. length"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.label_6  &
   location = 4.0, 525.0  &
   height = 25.0  &
   width = 117.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Ini. length"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_BH1_cyl.field_21  &
   location = 123.0, 525.0  &
   height = 25.0  &
   width = 114.0  &
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
