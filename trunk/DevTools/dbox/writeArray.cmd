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
!WRAP_IN_UNDO NO
if cond = (db_exists(".VehLib_plugin.dboxes.showArray"))
   entity delete entity_name = .VehLib_plugin.dboxes.showArray
end
!$DV:t=string:d=DV_subs
if cond = (db_exists("$DV"))
  var cre var=$_self.n integer = (rows($DV)+cols($DV)-1)
else
  var cre var=$_self.n integer = 0
end
if cond = (rows($dv)<cols($dv))
  var cre var=title string_value=(eval("$dv"//":  column"))
else
  var cre var=title string_value=(eval("$dv"//":  row"))
end
!
interface dialog_box create  &
   dialog_box_name = .VehLib_plugin.dboxes.showArray  &
   location = 400.0, 100.0 &
   height = (35.0 + 29*$_self.n)  &
   width = 400.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = (eval(title[1]))  &
   iconifiable = no  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.showArray.closeButton  &
   location = 320.0, (6.0 + 29 * $_self.n)  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=\$_parent"
!
for variable_name=$_self.i start_value=1 end_value = ($_self.n)
  interface label create  &
     label_name = (eval(".VehLib_plugin.dboxes.showArray.contentLabel_" // RTOI($_self.i))) &
     location = 56.0, (-25.0 + 29 * $_self.i)  &
     height = 25.0  &
     width = 339.0  &
     units = pixel  &
     horiz_resizing = attach_left  &
     vert_resizing = attach_top  &
     justified = left  &
     text = (eval($DV[$_self.i]))
  !
  interface label create  &
     label_name = (eval(".VehLib_plugin.dboxes.showArray.numberLabel_" // RTOI($_self.i)))  &
     location = 4.0, (-25.0 + 29 *$_self.i) &
     height = 25.0  &
     width = 46.0  &
     units = pixel  &
     horiz_resizing = attach_left  &
     vert_resizing = attach_top  &
     justified = left  &
     text = (eval("["//RTOI($_self.i)//"]"))
end
var del var=$_self.n
var del var=title
interface dialog display dialog= .VehLib_plugin.dboxes.showArray
