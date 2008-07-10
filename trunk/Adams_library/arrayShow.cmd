!
interface dialog_box create  &
   dialog_box_name = .sauerdanfoss.dboxes.arrayShow  &
   location = 44.0, 105.0  &
   height = 63.0  &
   width = 374.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "showarray"  &
   iconifiable = no  &
   execution_commands = "writeArray DV=$field_1"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .sauerdanfoss.dboxes.arrayShow.button_1  &
   location = 294.0, 34.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .sauerdanfoss.dboxes.arrayShow.button_2  &
   location = 216.0, 34.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .sauerdanfoss.dboxes.arrayShow.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 127.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Pick an array:"
!
interface field create  &
   field_name = .sauerdanfoss.dboxes.arrayShow.field_1  &
   location = 133.0, 4.0  &
   height = 25.0  &
   width = 235.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "DV_subs"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
