! This file is part of SDlib_plugin.
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
   dialog_box_name = .gui.dbox_case  &
   location = 840.0, 178.0  &
   height = 172.0  &
   width = 330.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_caseChassis"  &
   iconifiable = no  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .gui.dbox_case.button_1  &
   location = 250.0, 143.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .gui.dbox_case.button_2  &
   location = 172.0, 143.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "file command read file=\"Level3/Chassis/case\"",  &
              "",  &
              "!Update \"Over all length\"",  &
              "variable modify variable = .overallLength real = ($field_2)",  &
              "!Update \"Over all height\"",  &
              "variable modify variable = .overallHeight real = ($field_3)",  &
              "!Update \"Distance between wheel centeres\"",  &
              "variable modify variable = .wheelWidth real = ($field_4)",  &
              "!Update \"Wheel radius\" This radius should be the same as in the file caseRearWheel.tir",  &
              "variable modify variable = .rearWheelRadius real = ($field_3)",  &
              "",  &
              "model merge &",  &
              "    model_name = .case &",  &
              "    into_model_name = $field_1 &",  &
              "    &",  &
              "    rotation = 0.0, 0.0, 0.0  &",  &
              "    duplicate_parts = merge",  &
              "              ",  &
              "model delete model = .case",  &
              "              ",  &
              "model display fit_to_view=yes",  &
              "",  &
              "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .gui.dbox_case.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 202.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Insert into model"
!
interface label create  &
   label_name = .gui.dbox_case.label_2  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 202.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Over all length"
!
interface label create  &
   label_name = .gui.dbox_case.label_3  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 202.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Over all length"
!
interface label create  &
   label_name = .gui.dbox_case.label_4  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 202.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance between wheel centers"
!
interface label create  &
   label_name = .gui.dbox_case.label_5  &
   location = 4.0, 112.0  &
   height = 25.0  &
   width = 202.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Wheel radius (wheel def. file)"
!
interface field create  &
   field_name = .gui.dbox_case.field_1  &
   location = 208.0, 4.0  &
   height = 25.0  &
   width = 116.0  &
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
   field_name = .gui.dbox_case.field_2  &
   location = 208.0, 31.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3.3"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_case.field_3  &
   location = 208.0, 58.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.7"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_case.field_4  &
   location = 208.0, 85.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.1"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_case.field_5  &
   location = 208.0, 112.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.67"  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
