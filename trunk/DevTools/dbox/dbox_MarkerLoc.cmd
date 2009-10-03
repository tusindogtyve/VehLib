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
   dialog_box_name = .VehLib_plugin.dboxes.dbox_MarkerLoc  &
   location = 808.0, 296.0  &
   height = 229.0  &
   width = 277.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Marker location relative to"  &
   iconifiable = no  &
   execution_commands = "marker modify marker_name = $field_1 &",  &
                        "  location = (LOC_RELATIVE_TO( {$field_4,$field_5,$field_6} , $field_2 ))"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.button_1  &
   location = 197.0, 200.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.button_2  &
   location = 41.0, 200.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.field_1  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.field_2  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_1  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_2  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.field_4  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.field_5  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.field_6  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_3  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-translation"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_4  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-translation"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_5  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-translation"
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.sep_2  &
   location = 4.0, 85.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_9  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Input of distance from the target marker"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.label_10  &
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
   push_button_name = .VehLib_plugin.dboxes.dbox_MarkerLoc.button_3  &
   location = 119.0, 200.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
