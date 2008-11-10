!
interface dialog_box create  &
   dialog_box_name = .gui.Contact_at_segments  &
   location = 547.0, 28.0  &
   height = 346.0  &
   width = 333.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Finite Segment Beam Contact Function Generator"  &
   iconifiable = no  &
   start_commands = "int field set field = $_self.ModelName string=(eval(db_default( .system_defaults, \\\"model\\\")))",  &
                    "",  &
                    "",  &
                    "if con = (!db_exists(\"$ModelName.DV_Contact_t\"))",  &
                    "var cre var = $ModelName.DV_Contact_t real = 0.01",  &
                    "end",  &
                    "",  &
                    "if con = (!db_exists(\"$ModelName.DV_Contact_l\"))",  &
                    "var cre var = $ModelName.DV_Contact_l real = 0.1",  &
                    "end"  &
   execution_commands = "if con = (!db_exists(\"$ModelName.DV_Contact_Stiffness\"))",  &
                        "var cre var = $ModelName.DV_Contact_Stiffness real = (1e10)",  &
                        "var cre var = $ModelName.DV_Contact_Damping real = (1e4)",  &
                        "var cre var = $ModelName.DV_Contact_ForceExponent real = (2.2)",  &
                        "var cre var = $ModelName.DV_Contact_PenetrationDepth real = (1e-4)",  &
                        "end",  &
                        "",  &
                        "if con = (!db_exists(\"$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Stiffness\"))",  &
                        "var cre var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Stiffness real = ($ModelName.DV_Contact_Stiffness)",  &
                        "var cre var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Damping real = ($ModelName.DV_Contact_Damping)",  &
                        "var cre var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_ForceExponent real = ($ModelName.DV_Contact_ForceExponent)",  &
                        "var cre var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_PenetrationDepth real = ($ModelName.DV_Contact_PenetrationDepth)",  &
                        "else",  &
                        "var mod var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Stiffness real = ($ModelName.DV_Contact_Stiffness)",  &
                        "var mod var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Damping real = ($ModelName.DV_Contact_Damping)",  &
                        "var mod var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_ForceExponent real = ($ModelName.DV_Contact_ForceExponent)",  &
                        "var mod var = $ModelName.DV_$'InnerBeam'_$'OuterBeam'_PenetrationDepth real = ($ModelName.DV_Contact_PenetrationDepth)",  &
                        "end",  &
                        "",  &
                        "if con = (!db_exists(\"$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w\"))",  &
                        "var cre var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w real = 0.05",  &
                        "var cre var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h real = 0.05",  &
                        "var cre var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t real = 0.005",  &
                        "var cre var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l real = 0.05",  &
                        "end",  &
                        "",  &
                        "!data_element create variable &",  &
                        "!variable_name= SV_$'OuterBeam'_$'InnerBeam'_DZ &",  &
                        "!function=\"DZ( PART_$'InnerBeam'_1.Mkr_Segment_1 , PART_$'OuterBeam'_1.Mkr_Segment_1 , PART_$'OuterBeam'_1.Mkr_Segment_1 )\" ",  &
                        "",  &
                        "var cre var=$_self.jMarker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.endMarker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(DV_$'OuterBeam'_nSegments)//\".Mkr_Segment_\"//RTOI(DV_$'OuterBeam'_nSegments)//\"_end\"))",  &
                        "var cre var=$_self.k1Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.k2Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.k3Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.resForceX string_value=\"\"",  &
                        "var cre var=$_self.resForceY string_value=\"\"",  &
                        "var cre var=$_self.resTorqueZ string_value=\"\"",  &
                        "var cre var=$_self.plus      string_value=\"\"",  &
                        "",  &
                        "for variable_name=i start_value=1 end_value= (DV_$'InnerBeam'_nSegments)",  &
                        "  !",  &
                        "  !Calculate the name of the marker at the location of the general force",  &
                        "  var mod var=$_self.jMarker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_Segment_\"//RTOI(i)))",  &
                        "  !",  &
                        "  !Calculate the markes that defines the beamELM's. ",  &
                        "  ! The first and last segment is only connected to one other segment",  &
                        "  if cond=(db_exists(\"PART_$'InnerBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.k1Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.k1Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  end",  &
                        "  ! A marker on this segment does always exists, but is it named 1 or 2",  &
                        "  if cond=(db_exists(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.k2Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.k2Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_2\"))",  &
                        "  end",  &
                        "  if cond=(db_exists(\"PART_$'InnerBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "    var mod var=$_self.k3Marker object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "  else",  &
                        "    var mod var=$_self.k3Marker object_value=($_self.k2Marker)",  &
                        "  end",  &
                        "  !",  &
                        "  !Create the force at the inner beam",  &
                        "  force create direct general_force &",  &
                        "      general_force_name=(eval($ModelName//\".\"// \"Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i))) &",  &
                        "      i_marker_name= (eval(\"PART_$'InnerBeam'_\" // RTOI(i) //\".\"// \"Mkr_Segment_\" //RTOI(i))) &",  &
                        "      j_part_name= ground &",  &
                        "      ref_marker_name= (eval(\"PART_$'InnerBeam'_\" // RTOI(i) //\".\"// \"Mkr_Segment_\" //RTOI(i))) &",  &
                        "      user_function = (eval(RTOI(i))),(eval($_self.endMarker).ID),(eval($_self.jMarker).ID),(eval($_self.k1Marker).ID),(eval($_self.k2Marker).ID),(eval($_self.k3Marker).ID),(DV_$'InnerBeam'_length),1",  &
                        "  !",  &
                        "  !Nice color",  &
                        "  force attributes force_name=(eval($ModelName//\".\"// \"Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)))&",  &
                        "      color=YELLOW",  &
                        "  !",  &
                        "  !We need to put a resultant force at the outer beam - Add a force to the string",  &
                        "  if cond=(i>1)",  &
                        "    var mod var=$_self.plus string_value=\"+\"",  &
                        "  end",  &
                        "  var mod var=resForceX string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 2, \"//($_self.jMarker)//\") \"//$_self.plus//\" \"//$_self.resForceX.string_value))",  &
                        "  var mod var=resForceY string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 3, \"//($_self.jMarker)//\") \"//$_self.plus//\" \"//$_self.resForceY.string_value))",  &
                        "  var mod var=resTorqueZ string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 8, \"//($_self.jMarker)//\") \"//$_self.plus//\" \"//$_self.resTorqueZ.string_value))",  &
                        "end",  &
                        "!",  &
                        "!Create a force at the end of the outer beam",  &
                        "force create direct general_force &",  &
                        "    general_force_name=(eval(\"$'ModelName'\"//\".\"//\"Contact_$'InnerBeam'_$'OuterBeam'_End\")) &",  &
                        "    i_marker_name=(eval($_self.endMarker)) &",  &
                        "    j_part_name= ground &",  &
                        "    ref_marker_name=(eval($_self.endMarker)) &",  &
                        "    x_force_function=($_self.resForceX.string_value) &",  &
                        "    y_force_function=($_self.resForceY.string_value) &",  &
                        "    z_force_function=(0) &",  &
                        "    x_torque_function=(0) &",  &
                        "    y_torque_function=(0) &",  &
                        "    z_torque_function=($_self.resTorqueZ.string_value)",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "!Create force on the other beam",  &
                        "!",  &
                        "var mod var=$_self.resForceX string_value=\"\"",  &
                        "var mod var=$_self.resForceY string_value=\"\"",  &
                        "var mod var=$_self.resTorqueZ string_value=\"\"",  &
                        "var mod var=$_self.plus      string_value=\"\"",  &
                        "",  &
                        "for variable_name=i start_value=1 end_value= (DV_$'OuterBeam'_nSegments)",  &
                        "  !",  &
                        "  !Calculate the name of the marker at the location of the general force",  &
                        "  var mod var=$_self.jMarker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_Segment_\"//RTOI(i)))",  &
                        "  !",  &
                        "  !Calculate the markes that defines the beamELM's. ",  &
                        "  ! The first and last segment is only connected to one other segment",  &
                        "  if cond=(db_exists(\"PART_$'OuterBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.k1Marker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.k1Marker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  end",  &
                        "  ! A marker on this segment does always exists, but is it named 1 or 2",  &
                        "  if cond=(db_exists(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.k2Marker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.k2Marker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_2\"))",  &
                        "  end",  &
                        "  if cond=(db_exists(\"PART_$'OuterBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "    var mod var=$_self.k3Marker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "  else",  &
                        "    var mod var=$_self.k3Marker object_value=($_self.k2Marker)",  &
                        "  end",  &
                        "  !",  &
                        "  !Create the force at the inner beam",  &
                        "  force create direct general_force &",  &
                        "      general_force_name=(eval($ModelName//\".\"// \"Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i))) &",  &
                        "      i_marker_name= (eval(\"PART_$'OuterBeam'_\" // RTOI(i) //\".\"// \"Mkr_Segment_\" //RTOI(i))) &",  &
                        "      j_part_name= ground &",  &
                        "      ref_marker_name= (eval(\"PART_$'OuterBeam'_\" // RTOI(i) //\".\"// \"Mkr_Segment_\" //RTOI(i))) &",  &
                        "      user_function = (eval(RTOI(i))),(PART_$'InnerBeam'_1.Mkr_Segment_1.ID),(eval($_self.jMarker.object_value).ID),(eval($_self.k1Marker).ID),(eval($_self.k2Marker).ID),(eval($_self.k3Marker).ID),(DV_$'OuterBeam'_length),0",  &
                        "  !",  &
                        "  !Nice color",  &
                        "  force attributes force_name=(eval($ModelName//\".\"// \"Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)))&",  &
                        "      color=BLUE",  &
                        "  !",  &
                        "  !We need to put a resultant force at the Inner beam - Add a force to the string",  &
                        "  if cond=(i>1)",  &
                        "    var mod var=$_self.plus string_value=\"+\"",  &
                        "  end",  &
                        "  var mod var=resForceX string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 2, \"//($_self.jMarker)//\") \"//$_self.plus//\" \"//$_self.resForceX.string_value))",  &
                        "  var mod var=resForceY string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 3, \"//($_self.jMarker)//\") \"//$_self.plus//\" \"//$_self.resForceY.string_value))",  &
                        "  var mod var=resTorqueZ string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 8, \"//($_self.jMarker)//\") \"//$_self.plus//\" \"//$_self.resTorqueZ.string_value))",  &
                        "end",  &
                        "!",  &
                        "!Create a force at the end of the outer beam",  &
                        "force create direct general_force &",  &
                        "    general_force_name=(eval(\"$'ModelName'\"//\".\"//\"Contact_$'OuterBeam'_$'InnerBeam'_End\")) &",  &
                        "    i_marker_name=(eval(PART_$'InnerBeam'_1.Mkr_Segment_1)) &",  &
                        "    j_part_name= ground &",  &
                        "    ref_marker_name=(eval(PART_$'InnerBeam'_1.Mkr_Segment_1)) &",  &
                        "    x_force_function=($_self.resForceX.string_value) &",  &
                        "    y_force_function=($_self.resForceY.string_value) &",  &
                        "    z_force_function=(0) &",  &
                        "    x_torque_function=(0) &",  &
                        "    y_torque_function=(0) &",  &
                        "    z_torque_function=($_self.resTorqueZ.string_value)",  &
                        "",  &
                        "",  &
                        "",  &
                        "",  &
                        "if cond=(0)",  &
                        "       user_function = (eval(RTOI(i)//\", (PART_$'OuterBeam'_5.Mkr_Segment_5_end.ID), PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_Segment_\"//RTOI(i)//\".ID, (1.0),(2.0),(3.0), (eval(DV_$'InnerBeam'_length))\"))",  &
                        "!      x_force_function=\"0\" &",  &
                        "!      y_force_function=(eval(\"IF((DV_$'OuterBeam'_nSegments *DV_$'OuterBeam'_length) - varval(.MODEL_1.SV_$'OuterBeam'_$'InnerBeam'_DZ) - ((\" // RTOI(i) //\"-0.5)*(DV_$'InnerBeam'_length)) :  0 , 0 , IF(-((DV_$'OuterBeam'_nSegments *DV_$'OuterBeam'_length) -varval(.MODEL_1.SV_$'OuterBeam'_$'InnerBeam'_DZ)) + (\" // RTOI(i) //\")*(DV_$'InnerBeam'_length) :  0 , 0 , DY(PART_$'OuterBeam'_5.Mkr_Segment_5_end, PART_$'InnerBeam'_\" // RTOI(i) //\".Mkr_Segment_\" // RTOI(i) //\", PART_$'InnerBeam'_\" // RTOI(i) //\".Mkr_Segment_\" // RTOI(i) //\"))) + IF((DV_$'OuterBeam'_nSegments *DV_$'OuterBeam'_length) - varval(.MODEL_1.SV_$'OuterBeam'_$'InnerBeam'_DZ) - ((\" // RTOI(i) //\"-1.0)*(DV_$'InnerBeam'_length)) :  0 , 0 , IF(-((DV_$'OuterBeam'_nSegments *DV_$'OuterBeam'_length) -varval(.MODEL_1.SV_$'OuterBeam'_$'InnerBeam'_DZ)) + (\" // RTOI(i) //\"-0.5)*(DV_$'InnerBeam'_length) :  0 , 0 , DY(PART_$'OuterBeam'_5.Mkr_Segment_5_end, PART_$'InnerBeam'_\" // RTOI(i) //\".Mkr_Segment_\" // RTOI(i) //\", PART_$'InnerBeam'_\" // RTOI(i) //\".Mkr_Segment_\" // RTOI(i) //\")))\")) &",  &
                        "!      z_force_function=\"0\" &",  &
                        "!      x_torque_function=\"0\" &",  &
                        "!      y_torque_function=\"0\" &",  &
                        "!      z_torque_function=\"0\" ",  &
                        "end",  &
                        "",  &
                        "",  &
                        "var cre var = $_self.sothatatleastoneexists real = 1",  &
                        "",  &
                        "default coordinate_system default_coordinate_system= $ModelName",  &
                        "var del var=$_self.*"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .gui.Contact_at_segments.button_1  &
   location = 253.0, 317.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .gui.Contact_at_segments.button_2  &
   location = 175.0, 317.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .gui.Contact_at_segments.button_3  &
   location = 97.0, 317.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_1  &
   location = 5.0, 4.0  &
   height = 25.0  &
   width = 200.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Create in model"
!
interface field create  &
   field_name = .gui.Contact_at_segments.ModelName  &
   location = 207.0, 4.0  &
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
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_2  &
   location = 21.0, 60.0  &
   height = 25.0  &
   width = 180.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Inner beam section"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_3  &
   location = 21.0, 87.0  &
   height = 25.0  &
   width = 174.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Outer beam section"
!
interface field create  &
   field_name = .gui.Contact_at_segments.InnerBeam  &
   location = 206.0, 60.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "flexbeam"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.Contact_at_segments.OuterBeam  &
   location = 206.0, 87.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "flexbeam2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .gui.Contact_at_segments.sep_1  &
   location = 4.0, 31.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_4  &
   location = 4.0, 33.0  &
   height = 25.0  &
   width = 226.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "The two beam sections to connect"
!
interface separator create  &
   separator_name = .gui.Contact_at_segments.sep_2  &
   location = 4.0, 114.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_5  &
   location = 4.0, 116.0  &
   height = 25.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Input for the contact elements"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_6  &
   location = 21.0, 170.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Width of top/bottom"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_7  &
   location = 4.0, 143.0  &
   height = 160.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "                -"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_9  &
   location = 21.0, 197.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of sides"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_10  &
   location = 21.0, 251.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Thickness"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_11  &
   location = 21.0, 278.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length along beam"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_12  &
   location = 4.0, 60.0  &
   height = 52.0  &
   width = 15.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "                -"
!
interface field create  &
   field_name = .gui.Contact_at_segments.Cont_TopBot  &
   location = 263.0, 170.0  &
   height = 25.0  &
   width = 66.0  &
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
   field_name = .gui.Contact_at_segments.Cont_Sides  &
   location = 263.0, 197.0  &
   height = 25.0  &
   width = 66.0  &
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
   field_name = .gui.Contact_at_segments.Cont_Thickness  &
   location = 263.0, 251.0  &
   height = 25.0  &
   width = 66.0  &
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
   field_name = .gui.Contact_at_segments.Cont_Length  &
   location = 263.0, 278.0  &
   height = 25.0  &
   width = 66.0  &
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
   label_name = .gui.Contact_at_segments.label_14  &
   location = 21.0, 224.0  &
   height = 25.0  &
   width = 244.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = right  &
   text = "Use global value"
!
interface toggle_button create  &
   toggle_button_name = .gui.Contact_at_segments.Toggle_Thickness  &
   location = 211.0, 251.0  &
   height = 25.0  &
   width = 50.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "                                  -"  &
   state = on  &
   on_value = "on"  &
   off_value = "off"
!
interface toggle_button create  &
   toggle_button_name = .gui.Contact_at_segments.Toggle_Length  &
   location = 211.0, 278.0  &
   height = 25.0  &
   width = 50.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "                     -"  &
   state = off  &
   on_value = "on"  &
   off_value = "off"
!
interface label create  &
   label_name = .gui.Contact_at_segments.label_15  &
   location = 21.0, 143.0  &
   height = 25.0  &
   width = 244.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = right  &
   text = "Use max. value"
!
interface toggle_button create  &
   toggle_button_name = .gui.Contact_at_segments.Toggle_TopBot  &
   location = 211.0, 170.0  &
   height = 25.0  &
   width = 50.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "                                             -"  &
   state = on  &
   on_value = "on"  &
   off_value = "off"
!
interface toggle_button create  &
   toggle_button_name = .gui.Contact_at_segments.Toggle_Sides  &
   location = 211.0, 197.0  &
   height = 25.0  &
   width = 50.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "                                             -"  &
   state = on  &
   on_value = "on"  &
   off_value = "off"
