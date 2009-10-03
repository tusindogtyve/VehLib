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
   dialog_box_name = .VehLib_plugin.dboxes.arrayShow  &
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
   push_button_name = .VehLib_plugin.dboxes.arrayShow.button_1  &
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
   push_button_name = .VehLib_plugin.dboxes.arrayShow.button_2  &
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
   label_name = .VehLib_plugin.dboxes.arrayShow.label_1  &
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
   field_name = .VehLib_plugin.dboxes.arrayShow.field_1  &
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
