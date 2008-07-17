!WRAP_IN_UNDO NO
if cond = (db_exists(".sauerdanfoss.dboxes.showArray"))
   entity delete entity_name = .sauerdanfoss.dboxes.showArray
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
   dialog_box_name = .sauerdanfoss.dboxes.showArray  &
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
   push_button_name = .sauerdanfoss.dboxes.showArray.closeButton  &
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
     label_name = (eval(".sauerdanfoss.dboxes.showArray.contentLabel_" // RTOI($_self.i))) &
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
     label_name = (eval(".sauerdanfoss.dboxes.showArray.numberLabel_" // RTOI($_self.i)))  &
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
interface dialog display dialog= .sauerdanfoss.dboxes.showArray
