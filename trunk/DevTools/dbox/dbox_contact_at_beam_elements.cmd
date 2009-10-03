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
   dialog_box_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements  &
   location = 761.0, 43.0  &
   height = 393.0  &
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
   execution_commands = "if cond=(\"$toggle_1\" == \"on\")",  &
                        "  !Create global variables if none exists",  &
                        "  if cond=(!db_exists(\"DV_KTY\"))",  &
                        "    var cre var=DV_KTY real_value=($field_1)",  &
                        "    var cre var=DV_CTY real_value=($field_2)",  &
                        "    var cre var=DV_KTZ real_value=($SpringStiffness)",  &
                        "    var cre var=DV_CTZ real_value=($Damping)",  &
                        "    var cre var=DV_KR real_value=($TorsionalSpringStiffness)",  &
                        "    var cre var=DV_CR real_value=($TorsionalDamping)",  &
                        "    var cre var=DV_METHOD real_value=($field_3)",  &
                        "  end",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_KTY real_value= (DV_KTY)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_CTY real_value= (DV_CTY)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_KTZ real_value= (DV_KTZ)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_CTZ real_value= (DV_CTZ)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_KR real_value= (DV_KR)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_CR real_value= (DV_CR)",  &
                        "  var cre var=$_self.KTY object_value=DV_$'InnerBeam'_$'OuterBeam'_KTY",  &
                        "  var cre var=$_self.CTY object_value=DV_$'InnerBeam'_$'OuterBeam'_CTY",  &
                        "  var cre var=$_self.KTZ object_value=DV_$'InnerBeam'_$'OuterBeam'_KTZ",  &
                        "  var cre var=$_self.CTZ object_value=DV_$'InnerBeam'_$'OuterBeam'_CTZ",  &
                        "  var cre var=$_self.KR object_value=DV_$'InnerBeam'_$'OuterBeam'_KR",  &
                        "  var cre var=$_self.CR object_value=DV_$'InnerBeam'_$'OuterBeam'_CR",  &
                        "  var cre var=$_self.METHOD object_value=DV_METHOD",  &
                        "else",  &
                        "  !read values from fields and save in design variables",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_KTY real_value=($field_1)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_CTY real_value=($field_2)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_KTZ real_value=($SpringStiffness)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_CTZ real_value=($Damping)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_KR real_value=($TorsionalSpringStiffness)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_CR real_value=($TorsionalDamping)",  &
                        "  var cre var=DV_$'InnerBeam'_$'OuterBeam'_METHOD real_value=($field_3)",  &
                        "  var cre var=$_self.KTY object_value=DV_$'InnerBeam'_$'OuterBeam'_KTY",  &
                        "  var cre var=$_self.CTY object_value=DV_$'InnerBeam'_$'OuterBeam'_CTY",  &
                        "  var cre var=$_self.KTZ object_value=DV_$'InnerBeam'_$'OuterBeam'_KTZ",  &
                        "  var cre var=$_self.CTZ object_value=DV_$'InnerBeam'_$'OuterBeam'_CTZ",  &
                        "  var cre var=$_self.KR object_value=DV_$'InnerBeam'_$'OuterBeam'_KR",  &
                        "  var cre var=$_self.CR object_value=DV_$'InnerBeam'_$'OuterBeam'_CR",  &
                        "  var cre var=$_self.METHOD object_value=DV_$'InnerBeam'_$'OuterBeam'_METHOD",  &
                        "end",  &
                        "",  &
                        "var cre var=$_self.endMarker object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(DV_$'OuterBeam'_nSegments)//\".Mkr_Segment_\"//RTOI(DV_$'OuterBeam'_nSegments)//\"_end\"))",  &
                        "var cre var=$_self.hM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.iM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.jM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(1.0)//\".Mkr_Segment_\"//RTOI(1.0)))",  &
                        "var cre var=$_self.resForceX  string_value=\"\"",  &
                        "var cre var=$_self.resForceY  string_value=\"\"",  &
                        "var cre var=$_self.resForceZ  string_value=\"\"",  &
                        "var cre var=$_self.resTorqueX string_value=\"\"",  &
                        "var cre var=$_self.plus       string_value=\"\"",  &
                        "var cre var=$_self.beamType   integer_value=(1)",  &
                        "",  &
                        "!Create a marker at the position of the reaction force",  &
                        "!The orientation has to be identical to the beamELM markers ############################",  &
                        "var cre var=$_self.tempPart object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(DV_$'OuterBeam'_nSegments)))",  &
                        "marker create marker=(eval($_self.tempPart)//\".\"//\"MKR_$'InnerBeam'_$'OuterBeam'_Reaction\")&",  &
                        "    location = (LOC_RELATIVE_TO({0,0,0},eval($_self.endMarker)))&",  &
                        "    orientation = (ORI_RELATIVE_TO({0,270,270},eval($_self.endMarker)))",  &
                        "",  &
                        "var cre var=$_self.rM object_value=(eval($_self.tempPart)//\".\"//\"MKR_$'InnerBeam'_$'OuterBeam'_Reaction\")",  &
                        "",  &
                        "for variable_name=i start_value=1 end_value= (DV_$'InnerBeam'_nSegments)",  &
                        "  !",  &
                        "  !Calculate the markes that defines the beamELM's. ",  &
                        "  ! The first and last segment is only connected to one other segment",  &
                        "  if cond=(db_exists(\"PART_$'InnerBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.hM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.hM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  end",  &
                        "  !Calculate the name of the marker where the general force is to be located",  &
                        "  ! A marker on this segment does always exists, but is it named 1 or 2",  &
                        "  if cond=(db_exists(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.iM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.iM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i)//\".Mkr_beamELM_2\"))",  &
                        "  end",  &
                        "  if cond=(db_exists(\"PART_$'InnerBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "    var mod var=$_self.jM object_value=(eval(\"PART_$'InnerBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "  else",  &
                        "    var mod var=$_self.jM object_value=($_self.iM)",  &
                        "  end",  &
                        "  !",  &
                        "  ! Is this the first beam element?",  &
                        "  if cond=(i == 1)",  &
                        "    var mod var=$_self.beamType integer_value=(1)",  &
                        "  else",  &
                        "    if cond=(i == (DV_$'InnerBeam'_nSegments))",  &
                        "      var mod var=$_self.beamType integer_value=(2)",  &
                        "    else",  &
                        "      var mod var=$_self.beamType integer_value=(0)",  &
                        "    end",  &
                        "  end",  &
                        "  !Create the force at the inner beam",  &
                        "  force create direct general_force &",  &
                        "      general_force_name=(eval($ModelName//\".\"// \"Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i))) &",  &
                        "      i_marker_name= (eval($_self.iM)) &",  &
                        "      j_part_name= ground &",  &
                        "      ref_marker_name= (eval($_self.iM)) &",  &
                        "      user_function = (eval($_self.rM).ID),(eval($_self.hM).ID),(eval($_self.iM).ID),(eval($_self.jM).ID),(DV_$'InnerBeam'_length),(eval($_self.beamType.integer_value)),(eval($_self.KTY.object_value).real_value),(eval($_self.CTY.object_value).real_value),(eval($_self.KTZ.object_value).real_value),(eval($_self.CTZ.object_value).real_value),(eval($_self.KR.object_value).real_value),(eval($_self.CR.object_value).real_value),(eval($_self.METHOD.object_value).real_value)",  &
			"      !routine = \"VehLib_plugin::GFOSUB\" &",	&
                        "  !",  &
			"  force modify direct general_force &", &
			"	general_force_name=(eval($ModelName//\".\"// \"Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i))) &",  &
			"	routine = \"VehLib_plugin::GFOSUB\" ", &
                        "  !",  &
                        "  !Nice color",  &
                        "  force attributes force_name=(eval($ModelName//\".\"// \"Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)))&",  &
                        "      color=YELLOW",  &
                        "  !",  &
                        "  !We need to put a resultant force at the outer beam - Add a force to the string",  &
                        "  if cond=(i>1)",  &
                        "    var mod var=$_self.plus string_value=\"+\"",  &
                        "  end",  &
                        "  var mod var=resForceX string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 2, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resForceX.string_value))",  &
                        "  var mod var=resForceY string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 3, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resForceY.string_value))",  &
                        "  var mod var=resForceZ string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 4, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resForceZ.string_value))",  &
                        "  var mod var=resTorqueX string_value=(eval(\"GFORCE($ModelName.Contact_$'InnerBeam'_$'OuterBeam'_Seg_\" //RTOI(i)//\", 1, 6, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resTorqueX.string_value))",  &
                        "end",  &
                        "!",  &
                        "!Create a force at the end of the outer beam",  &
                        "force create direct general_force &",  &
                        "    general_force_name=(eval(\"$'ModelName'\"//\".\"//\"Contact_$'InnerBeam'_$'OuterBeam'_End\")) &",  &
                        "    i_marker_name=(eval($_self.rM)) &",  &
                        "    j_part_name= ground &",  &
                        "    ref_marker_name=(eval($_self.rM)) &",  &
                        "    x_force_function=($_self.resForceX.string_value) &",  &
                        "    y_force_function=($_self.resForceY.string_value) &",  &
                        "    z_force_function=($_self.resForceZ.string_value) &",  &
                        "    x_torque_function=($_self.resTorqueX.string_value) &",  &
                        "    y_torque_function=(0) &",  &
                        "    z_torque_function=(0)",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "!Create force on the other beam",  &
                        "!",  &
                        "var mod var=$_self.endMarker object_value=(eval(\"PART_$'InnerBeam'_1\"//\".Mkr_Segment_1\"))",  &
                        "var mod var=$_self.resForceX  string_value=\"\"",  &
                        "var mod var=$_self.resForceY  string_value=\"\"",  &
                        "var mod var=$_self.resForceZ  string_value=\"\"",  &
                        "var mod var=$_self.resTorqueX string_value=\"\"",  &
                        "var mod var=$_self.plus       string_value=\"\"",  &
                        "",  &
                        "",  &
                        "!Create a marker at the position of the reaction force",  &
                        "!The orientation has to be identical to the beamELM markers",  &
                        "marker create marker=(PART_$'InnerBeam'_1//\".\"//\"MKR_$'OuterBeam'_$'InnerBeam'_Reaction\") &",  &
                        "    location = (LOC_RELATIVE_TO({0,0,0},eval($_self.endMarker)))&",  &
                        "    orientation = (ORI_RELATIVE_TO({0,270,270},eval($_self.endMarker)))",  &
                        "var mod var=$_self.rM object_value=(PART_$'InnerBeam'_1//\".\"//\"MKR_$'OuterBeam'_$'InnerBeam'_Reaction\")",  &
                        "",  &
                        "for variable_name=i start_value=1 end_value= (DV_$'OuterBeam'_nSegments)",  &
                        "  !",  &
                        "  !Calculate the markes that defines the beamELM's. ",  &
                        "  ! The first and last segment is only connected to one other segment",  &
                        "  if cond=(db_exists(\"PART_$'OuterBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.hM object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i-1)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.hM object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  end",  &
                        "  !Calculate the name of the marker where the general force is to be located",  &
                        "  ! A marker on this segment does always exists, but is it named 1 or 2",  &
                        "  if cond=(db_exists(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "    var mod var=$_self.iM object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_1\"))",  &
                        "  else",  &
                        "    var mod var=$_self.iM object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i)//\".Mkr_beamELM_2\"))",  &
                        "  end",  &
                        "  if cond=(db_exists(\"PART_$'OuterBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "    var mod var=$_self.jM object_value=(eval(\"PART_$'OuterBeam'_\"//RTOI(i+1)//\".Mkr_beamELM_2\"))",  &
                        "  else",  &
                        "    var mod var=$_self.jM object_value=($_self.iM)",  &
                        "  end",  &
                        "  !",  &
                        "  ! Is this the first beam element?",  &
                        "  if cond=(i == 1)",  &
                        "    var mod var=$_self.beamType integer_value=(1)",  &
                        "  else",  &
                        "    if cond=(i == (DV_$'OuterBeam'_nSegments))",  &
                        "      var mod var=$_self.beamType integer_value=(2)",  &
                        "    else",  &
                        "      var mod var=$_self.beamType integer_value=(0)",  &
                        "    end",  &
                        "  end",  &
                        "  !Create the force at the outer beam",  &
                        "  force create direct general_force &",  &
                        "      general_force_name=(eval($ModelName//\".\"// \"Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i))) &",  &
                        "      i_marker_name= (eval($_self.iM)) &",  &
                        "      j_part_name= ground &",  &
                        "      ref_marker_name= (eval($_self.iM)) &",  &
                        "      user_function = (eval($_self.rM).ID),(eval($_self.hM).ID),(eval($_self.iM).ID),(eval($_self.jM).ID),(DV_$'OuterBeam'_length),(eval($_self.beamType.integer_value)),(eval($_self.KTY.object_value).real_value),(eval($_self.CTY.object_value).real_value),(eval($_self.KTZ.object_value).real_value),(eval($_self.CTZ.object_value).real_value),(eval($_self.KR.object_value).real_value),(eval($_self.CR.object_value).real_value),(eval($_self.METHOD.object_value).real_value)",  &
			"      !routine = \"VehLib_plugin::GFOSUB\" &",	&
			"  force modify direct general_force &", &
			"      general_force_name=(eval($ModelName//\".\"// \"Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i))) &",  &
			"	routine = \"VehLib_plugin::GFOSUB\" ", &
                        "  !",  &
                        "  !Nice color",  &
                        "  force attributes force_name=(eval($ModelName//\".\"// \"Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)))&",  &
                        "      color=BLUE",  &
                        "  !",  &
                        "  !We need to put a resultant force at the outer beam - Add a force to the string",  &
                        "  if cond=(i>1)",  &
                        "    var mod var=$_self.plus string_value=\"+\"",  &
                        "  end",  &
                        "  var mod var=resForceX string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 2, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resForceX.string_value))",  &
                        "  var mod var=resForceY string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 3, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resForceY.string_value))",  &
                        "  var mod var=resForceZ string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 4, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resForceZ.string_value))",  &
                        "  var mod var=resTorqueX string_value=(eval(\"GFORCE($ModelName.Contact_$'OuterBeam'_$'InnerBeam'_Seg_\" //RTOI(i)//\", 1, 6, \"//($_self.iM)//\") \"//$_self.plus//\" \"//$_self.resTorqueX.string_value))",  &
                        "end",  &
                        "!",  &
                        "!Create a force at the end of the outer beam",  &
                        "force create direct general_force &",  &
                        "    general_force_name=(eval(\"$'ModelName'\"//\".\"//\"Contact_$'OuterBeam'_$'InnerBeam'_End\")) &",  &
                        "    i_marker_name=(eval($_self.rM)) &",  &
                        "    j_part_name= ground &",  &
                        "    ref_marker_name=(eval($_self.rM)) &",  &
                        "    x_force_function=($_self.resForceX.string_value) &",  &
                        "    y_force_function=($_self.resForceY.string_value) &",  &
                        "    z_force_function=($_self.resForceZ.string_value) &",  &
                        "    x_torque_function=($_self.resTorqueX.string_value) &",  &
                        "    y_torque_function=(0) &",  &
                        "    z_torque_function=(0)",  &
                        "",  &
                        "default coordinate_system default_coordinate_system= $ModelName",  &
                        "var del var=$_self.*"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.button_1  &
   location = 253.0, 364.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.button_2  &
   location = 175.0, 364.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.button_3  &
   location = 97.0, 364.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_1  &
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
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.ModelName  &
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
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_2  &
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
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_3  &
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
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.InnerBeam  &
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
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.OuterBeam  &
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
   separator_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.sep_1  &
   location = 4.0, 31.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_4  &
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
   separator_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.sep_2  &
   location = 4.0, 114.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_5  &
   location = 4.0, 116.0  &
   height = 25.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Input spring stiffness and damping"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_6  &
   location = 21.0, 225.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Spring stiffness, z"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_7  &
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
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_9  &
   location = 21.0, 252.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Damping, z"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_10  &
   location = 21.0, 279.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Torsional spring stiffness"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_11  &
   location = 21.0, 306.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Torsional damping"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_12  &
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
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.SpringStiffness  &
   location = 263.0, 225.0  &
   height = 25.0  &
   width = 66.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "5.0E7"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.Damping  &
   location = 263.0, 252.0  &
   height = 25.0  &
   width = 66.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3.1E6"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.TorsionalSpringStiffness  &
   location = 263.0, 279.0  &
   height = 25.0  &
   width = 66.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.5E7"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.TorsionalDamping  &
   location = 263.0, 306.0  &
   height = 25.0  &
   width = 66.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.0E6"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface toggle_button create  &
   toggle_button_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.toggle_1  &
   location = 21.0, 144.0  &
   height = 25.0  &
   width = 308.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "Use global values"  &
   state = on  &
   on_value = "on"  &
   off_value = "off"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_8  &
   location = 21.0, 171.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Spring stiffness, y"
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_13  &
   location = 21.0, 198.0  &
   height = 25.0  &
   width = 188.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Damping, y"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.field_1  &
   location = 263.0, 171.0  &
   height = 25.0  &
   width = 66.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "5.0E7"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.field_2  &
   location = 263.0, 198.0  &
   height = 25.0  &
   width = 66.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3.1E6"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.sep_2_2  &
   location = 4.0, 333.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.label_14  &
   location = 4.0, 335.0  &
   height = 25.0  &
   width = 248.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Method. (1=Discrete, 2=Ramp, 3=CENL)"
!
interface field create  &
   field_name = .VehLib_plugin.dboxes.dbox_contact_at_beam_elements.field_3  &
   location = 253.0, 335.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "3"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
