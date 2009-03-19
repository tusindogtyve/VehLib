!
interface dialog_box create  &
   dialog_box_name = .gui.dbox_MarkerOriAlongAxis  &
   location = 864.0, 49.0  &
   height = 173.0  &
   width = 289.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Marker Orient Along Axis"  &
   iconifiable = no  &
   execution_commands = "marker modify marker_name = $field_1  &",  &
                        "   orientation = (ORI_ALONG_AXIS($field_1 , $field_3 , \"$field_3_2\"))"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .gui.dbox_MarkerOriAlongAxis.button_1  &
   location = 209.0, 144.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .gui.dbox_MarkerOriAlongAxis.button_2  &
   location = 53.0, 144.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface field create  &
   field_name = .gui.dbox_MarkerOriAlongAxis.field_1  &
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
interface label create  &
   label_name = .gui.dbox_MarkerOriAlongAxis.label_1  &
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
   label_name = .gui.dbox_MarkerOriAlongAxis.label_10  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Select the marker for the parametrization"
!
interface push_button create  &
   push_button_name = .gui.dbox_MarkerOriAlongAxis.button_3  &
   location = 131.0, 144.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface label create  &
   label_name = .gui.dbox_MarkerOriAlongAxis.label_11  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Towards this marker"
!
interface field create  &
   field_name = .gui.dbox_MarkerOriAlongAxis.field_3  &
   location = 155.0, 114.0  &
   height = 25.0  &
   width = 130.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = marker
!
interface label create  &
   label_name = .gui.dbox_MarkerOriAlongAxis.label_9_2_2  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Along axis to which marker"
!
interface label create  &
   label_name = .gui.dbox_MarkerOriAlongAxis.label_11_2  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Orient this axis (x,y or z)"
!
interface field create  &
   field_name = .gui.dbox_MarkerOriAlongAxis.field_3_2  &
   location = 155.0, 87.0  &
   height = 25.0  &
   width = 130.0  &
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
   separator_name = .gui.dbox_MarkerOriAlongAxis.sep_1  &
   location = 4.0, 58.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
