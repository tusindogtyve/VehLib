!WRAP_IN_UNDO NO
!!! Delete the dBox if it exists
if cond = (db_exists(".sauerdanfoss.dboxes.modelControl"))
   entity delete entity_name = .sauerdanfoss.dboxes.modelControl
end
!!! n is the number of sub models.
if cond = (db_exists("DV_subs"))
  var cre var=n integer = (rows(DV_subs))
else
  var cre var=n integer = 0
end
!!! Find the name of the main model...
if cond = (db_ANCESTOR(db_default( .system_defaults, "model"),"model") != (none))
  var cre var=model_Name&
    string_value = (eval(db_ANCESTOR(db_default( .system_defaults, "model"),"model")))
else
  var cre var=model_Name&
    string_value = (eval(db_default( .system_defaults, "model")))
end
!
interface dialog_box create  &
   dialog_box_name = .sauerdanfoss.dboxes.modelControl  &
   location = 90.0, 120.0  &
   height = (33.0 + n*29) &
   width = 324.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "modelControl"  &
   iconifiable = no  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .sauerdanfoss.dboxes.modelControl.button_1  &
   location = 148.0, (4.0 + n*29)  &
   height = 25.0  &
   width = 172.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Close"  &
   commands = "interface dialog undisplay dialog=\$_parent"
!
!!! from here it's getting interesting.
if cond = (db_exists("DV_subs"))
for variable_name=i start_value=1 end_value = (rows(DV_subs))
  interface push_button create  &
    push_button_name = (eval(".sauerdanfoss.dboxes.modelControl.editButton_" // RTOI(i)))  &
    location = 4.0, (-25.0 + RTOI(i) * 29)  &
    height = 25.0  &
    width = 76.0  &
    units = pixel  &
    horiz_resizing = attach_left  &
    vert_resizing = attach_top  &
    label = "Modify" &
    commands = "var cre var = DV_model_to_change &",  &
               " index = 1 &",  &
               (eval(" string_value = (DV_subs["//RTOI(i)//"])")),  &
               "",  &
               "var mod var = DV_model_to_change &",  &
               " index = 2 &",  &
               (eval(" string_value = \""//RTOI(i)//"\" ")),  &
               "",  &
               "! Display the dialog box for the sub model",  &
	       (eval(" interface dialog display dialog= "//(DV_subs_dbox[RTOI(i)]))),  &
               "",  &
               "interface dialog execute dialog=\$_parent undisp=yes"
  !
!  interface push_button create  &
!    push_button_name = (eval(".sauerdanfoss.dboxes.modelControl.deleteButton_" // RTOI(i)))  &
!    location = 320.0, (-25.0 + RTOI(i) * 29)  &
!    height = 25.0  &
!    width = 76.0  &
!    units = pixel  &
!    horiz_resizing = attach_left  &
!    vert_resizing = attach_top  &
!    label = "Delete" &
!    commands = "model delete &",  &
!               (eval("  model_name = (DV_subs["//RTOI(i)//"])")),  &
!               "",  &
!	       "if cond = (rows(DV_subs) < 2)",  &
!	       "  var del var= DV_subs",  &
!	       "else",  &
!               "  !!! Now we have to delete from the DV_subs array",  &
!               "  var cre var = mem &",  &
!               "      integer = 0",  &
!               "",  &
!               "  var cre var = DV_subs_tmp &",  &
!               "     string_value = \"\"",  &
!               "",  &
!	       "  var cre var = DV_subs_dbox_tmp &",  &
!               "     string_value = \"\"",  &
!               "",  &
!               "  for variable_name=i start_value=1 end_value=(rows(DV_subs)-1) ",  &
!               (eval("    if cond = (i == "//RTOI(i)//")")),  &
!               "      var mod var=mem integer = 1",  &
!               "    end",  &
!               "    var mod var=DV_subs_tmp index=(i) string_value = (eval(DV_subs[i+mem]))",  &
!	       "    var mod var=DV_subs_dbox_tmp index=(i) string_value = (eval(DV_subs_dbox[i+mem]))",  &
!               "  end",  &
!               "",  &
!               "  !!! delete and create DV_subs",  &
!               "  var del var=DV_subs",  &
!               (eval("  var cre var="//model_Name//".DV_subs string_value = \"\"")),  &
!	       "  var del var=DV_subs_dbox",  &
!               (eval("  var cre var="//model_Name//".DV_subs_dbox string_value = \"\"")),  &
!               "",  &
!               "  !!! Fill DV_subs_tmp back into DV_subs",  &
!               "  for variable_name=i start_value=1 end_value=(rows(DV_subs_tmp))",  &
!               "    var mod var=DV_subs index=(i) string_value = (eval(DV_subs_tmp[i]))",  &
!	       "    var mod var=DV_subs_dbox index=(i) string_value = (eval(DV_subs_dbox_tmp[i]))",  &
!               "  end",  &
!	       "  var del var=mem",  &
!	       "  var del var=DV_subs_tmp",  &
!	       "  var del var=DV_subs_dbox_tmp",  &
!	       "end",  &
!               "",  &
!               "interface dialog execute dialog=\$_parent undisp=yes",  &
!               "createDbox"
  !
  interface field create  &
    field_name = (eval(".sauerdanfoss.dboxes.modelControl.editField_" // RTOI(i)))  &
    location = 82.0, (-25.0 + RTOI(i) * 29)  &
    height = 25.0  &
    width = 235.0  &
    units = pixel  &
    horiz_resizing = attach_left  &
    vert_resizing = attach_top  &
    scrollable = no  &
    editable = no  &
    preload_strings = (eval(DV_subs[i]))  &
    required = no  &
    execute_cmds_on_exit = no  &
    number_of_values = 1  &
    string_type = literal  &
    add_quotes = no
end
end
var del var=n
var del var=model_Name
interface dialog display dialog= .sauerdanfoss.dboxes.modelControl
