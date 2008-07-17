!
interface dialog_box create  &
   dialog_box_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo  &
   location = 864.0, 49.0  &
   height = 226.0  &
   width = 289.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Marker Orient Relative To"  &
   iconifiable = no  &
   execution_commands = "marker modify marker_name = $field_1 &",  &
                        "orientation = (ORI_RELATIVE_TO( {$field_7,$field_8,$field_9} , $field_2 ))"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.button_1  &
   location = 209.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.button_2  &
   location = 53.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.field_1  &
   location = 155.0, 31.0  &
   height = 25.0  &
   width = 130.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = marker
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.field_2  &
   location = 155.0, 58.0  &
   height = 25.0  &
   width = 130.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = marker
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_1  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Parametrize this marker"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_2  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Relative to this marker"
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.field_7  &
   location = 155.0, 114.0  &
   height = 25.0  &
   width = 132.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.field_8  &
   location = 155.0, 141.0  &
   height = 25.0  &
   width = 132.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.field_9  &
   location = 155.0, 168.0  &
   height = 25.0  &
   width = 132.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_6  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-rotation"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_7  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-rotation"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_8  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-rotation"
!
interface separator create  &
   separator_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.sep_2  &
   location = 4.0, 85.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_10  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Select the two markers for the parametrization"
!
interface push_button create  &
   push_button_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.button_3  &
   location = 131.0, 197.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface label create  &
   label_name = .SauerDanfoss.dboxes.dbox_MarkerOrientRelativeTo.label_12  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "By rotation relative to the target marker"
