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
   dialog_box_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint  &
   location = 866.0, 149.0  &
   height = 145.0  &
   width = 276.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Add revolute joint"  &
   iconifiable = no  &
   start_commands = "int field set field=$_self.field_5 string=(eval(db_default( .system_defaults, \\\"model\\\")))"  &
   execution_commands = "marker create marker= $'field_2'_Jt &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $field_2 )) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $field_2 ))",  &
                        "",  &
                        "marker create marker= $'field_3'_Jt &",  &
                        "  location = (LOC_RELATIVE_TO( {0,0,0} , $field_2 )) &",  &
                        "  orientation = (ORI_RELATIVE_TO( {0,0,0} , $field_2 ))",  &
                        "",  &
                        "constraint create joint Revolute &",  &
                        "    joint_name= $field_5.Jt_$'field_1' &",  &
                        "    i_marker_name= $'field_2'_Jt &",  &
                        "    j_marker_name= $'field_3'_Jt ",  &
                        "constraint attribute constraint_name= $field_5.Jt_$field_1 name_vis=off",  &
                        "group modify group=SELECT_LIST object= $field_5.Jt_$field_1"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.button_1  &
   location = 196.0, 116.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.button_3  &
   location = 118.0, 116.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.label_1  &
   location = 4.0, 60.0  &
   height = 25.0  &
   width = 144.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "First marker:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.label_2  &
   location = 4.0, 87.0  &
   height = 25.0  &
   width = 144.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Second marker:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.label_3  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 144.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Joint name (Jt_XXXX):"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.field_1  &
   location = 150.0, 31.0  &
   height = 25.0  &
   width = 122.0  &
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
   field_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.field_2  &
   location = 150.0, 60.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = any_object  &
   type_filter = marker
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.field_3  &
   location = 150.0, 87.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = any_object  &
   type_filter = marker
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.label_6  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 144.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Add to model:"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.field_5  &
   location = 150.0, 4.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = any_object  &
   type_filter = model
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_Add_revolute_joint.sep_1  &
   location = 4.0, 58.0  &
   width = 268.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
