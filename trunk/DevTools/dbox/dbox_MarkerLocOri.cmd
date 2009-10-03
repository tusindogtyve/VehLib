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
   dialog_box_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri  &
   location = 864.0, 49.0  &
   height = 531.0  &
   width = 289.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_MarkerLocOri"  &
   iconifiable = no  &
   execution_commands = "marker modify marker_name = $field_1 &",  &
                        "  location = (LOC_RELATIVE_TO( {$field_4,$field_5,$field_6} , $field_2 ))",  &
                        "",  &
                        "if condition=($option_1 == 1 )",  &
                        "marker modify marker_name = $field_1 &",  &
                        "orientation = (ORI_RELATIVE_TO( {$field_7,$field_8,$field_9} , $field_2 ))",  &
                        "end",  &
                        "",  &
                        "if condition=($option_1 == 2 )",  &
                        "marker modify marker_name = $field_1  &",  &
                        "   orientation = (ORI_ALONG_AXIS($field_1 , $field_3 , \"$field_3_2\"))",  &
                        "end",  &
                        "",  &
                        "if condition=($option_1 == 3 )",  &
                        "marker modify marker_name = $field_1  &",  &
                        "   orientation = (ORI_ALIGN_AXIS( $field_11 , \"$field_10\" ))",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.button_1  &
   location = 209.0, 502.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.button_2  &
   location = 53.0, 502.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_1  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_2  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_1  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_2  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_4  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_5  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_6  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_3  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_4  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_5  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-translation"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_7  &
   location = 155.0, 253.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_8  &
   location = 155.0, 280.0  &
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
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_9  &
   location = 155.0, 307.0  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_6  &
   location = 4.0, 253.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "x-rotation"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_7  &
   location = 4.0, 280.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "y-rotation"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_8  &
   location = 4.0, 307.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "z-rotation"
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.sep_1  &
   location = 4.0, 195.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.sep_2  &
   location = 4.0, 85.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_9  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_10  &
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
   push_button_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.button_3  &
   location = 131.0, 502.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_11  &
   location = 4.0, 390.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Towards this marker"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_3  &
   location = 155.0, 390.0  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_9_2_2  &
   location = 4.0, 336.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Along axis to which marker"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_11_2  &
   location = 4.0, 363.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Orient this axis (x,y or z)"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_3_2  &
   location = 155.0, 363.0  &
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
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_5_2  &
   location = 4.0, 197.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "How to orient the marker"
!
interface option_menu create  &
   option_menu_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.option_1  &
   location = 155.0, 197.0  &
   height = 25.0  &
   width = 130.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "By coordinates", "Along axis", "Align axes"  &
   current_choice = "By coordinates"  &
   values = "1", "2", "3"
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.sep_3  &
   location = 4.0, 224.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_12  &
   location = 4.0, 226.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "By Coordinates relative to the target marker"
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.sep_4  &
   location = 4.0, 334.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.sep_5  &
   location = 4.0, 417.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_9_2_2_2  &
   location = 4.0, 419.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Align axis to axis on another marker"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_11_2_2  &
   location = 4.0, 446.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Orient axes (xx, xy z-y...)"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_10  &
   location = 155.0, 446.0  &
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
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.field_11  &
   location = 155.0, 473.0  &
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
   label_name = .VehLib_plugin.dboxes.dbox_MarkerLocOri.label_11_2_3  &
   location = 4.0, 473.0  &
   height = 25.0  &
   width = 149.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "To the marker"
