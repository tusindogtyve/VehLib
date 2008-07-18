!
interface dialog_box create  &
   dialog_box_name = .gui.dbox_flexbeam  &
   location = 982.0, 63.0  &
   height = 683.0  &
   width = 289.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "Finite Segment Flexible Beam"  &
   iconifiable = no  &
   start_commands = "int field set field = $_self.field_6 string=(eval(db_default( .system_defaults, \\\"model\\\")))",  &
                    "",  &
                    "if cond = (db_exists(\"$field_6.DV_$'field_1'_nSegments\"))",  &
                    "int field set field = $_self.field_2 string = (RTOI($field_6.DV_$'field_1'_nSegments))",  &
                    "end"  &
   execution_commands = "! Two markers, one in each end of the beam, are created:",  &
                        "",  &
                        "if cond=(!db_exists(ground//\".\"//\"Mkr_$'field_1'_Master\"))",  &
                        "  marker cre marker= (ground//\".\"//\"Mkr_$'field_1'_Master\") &",  &
                        "    location=0.0, 0.0, 0.0 &",  &
                        "    orientation=180.0, 90.0, 180.0",  &
                        "",  &
                        "  marker cre marker= (ground//\".\"//\"MKR_$'field_1'_RotationControl\")&",  &
                        "    location = 0,0,1 &",  &
                        "    orientation = 0,0,0",  &
                        "",  &
                        "  marker cre marker= (ground//\".\"//\"Mkr_$'field_1'_Slave\") &",  &
                        "    location = 1,0,0 &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0,0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") ))",  &
                        "",  &
                        "  marker mod marker= (ground//\".\"//\"Mkr_$'field_1'_Master\") &",  &
                        "    orientation = (ORI_IN_PLANE((ground//\".\"//\"Mkr_$'field_1'_Master\") , (\"ground\" //\".\"//\"Mkr_$'field_1'_Slave\") , (ground//\".\"//\"MKR_$'field_1'_RotationControl\"), \"x_xz\"))",  &
                        "end",  &
                        "",  &
                        "if cond=(db_exists(\"$field_6.DV_$'field_1'_height\"))",  &
                        "  var mod var = $field_6.DV_$'field_1'_length real = ((DM( eval(\"Mkr_$'field_1'_Master\"),eval(\"Mkr_$'field_1'_Slave\")))/($field_6.DV_$'field_1'_nSegments -1))",  &
                        "  var mod var = $field_6.DV_$'field_1'_height real = $field_3",  &
                        "  var mod var = $field_6.DV_$'field_1'_width real = $field_4",  &
                        "  var mod var = $field_6.DV_$'field_1'_thickness real = $field_5",  &
                        "  var mod var = $field_6.DV_$'field_1'_damping real = 0.001",  &
                        "  var mod var = $field_6.DV_$'field_1'_outradius real = $field_8",  &
                        "  var mod var = $field_6.DV_$'field_1'_inradius real = ( (abs($field_6.DV_$'field_1'_outradius-$field_6.DV_$'field_1'_thickness)+($field_6.DV_$'field_1'_outradius-$field_6.DV_$'field_1'_thickness))/2 + 0.00001 )",  &
                        "else",  &
                        "  var cre var = $field_6.DV_$'field_1'_height real = $field_3",  &
                        "  var cre var = $field_6.DV_$'field_1'_width real = $field_4",  &
                        "  var cre var = $field_6.DV_$'field_1'_thickness real = $field_5",  &
                        "  var cre var = $field_6.DV_$'field_1'_nSegments real = $field_2",  &
                        "  var cre var = $field_6.DV_$'field_1'_damping real = 0.001",  &
                        "  var cre var = $field_6.DV_$'field_1'_outradius real = $field_8",  &
                        "  var cre var = $field_6.DV_$'field_1'_inradius real = ( (abs($field_6.DV_$'field_1'_outradius-$field_6.DV_$'field_1'_thickness)+($field_6.DV_$'field_1'_outradius-$field_6.DV_$'field_1'_thickness))/2 + 0.00001 )",  &
                        "  var cre var = $field_6.DV_$'field_1'_ProfileType string_value = $option_1",  &
                        "  var cre var = $field_6.DV_$'field_1'_length real = ((DM( eval(\"Mkr_$'field_1'_Master\"),eval(\"Mkr_$'field_1'_Slave\")))/($field_6.DV_$'field_1'_nSegments -1))",  &
                        "end",  &
                        "",  &
                        "if cond=(!db_exists(\"DV_EModulus\"))",  &
                        "var cre var = DV_EModulus real = (210e9)",  &
                        "var cre var = DV_GModulus real = (80.8e9)",  &
                        "end",  &
                        "",  &
                        "if cond=(\"$option_1\" != ($field_6.DV_$'field_1'_ProfileType[1]))",  &
                        "    var cre var= $_self.exitcond int=(eval(alert(\"\",\"You foolish user, changing the profile type of an existing beam section is NOT allowed - i'll ignore this input.\",\"Sorry... My mistake\",\"\",\"\",1)))",  &
                        "end",  &
                        "",  &
                        "if cond=($field_2 != ($field_6.DV_$'field_1'_nSegments))",  &
                        "if cond=(db_exists(\"$_self.exitcond\"))",  &
                        "    var mod var= $_self.exitcond int=(eval(alert(\"\",\"The number of type-40 mistakes doesn't seem to have an end! - Changing the number of segments of an existing beam section is also NOT allowed - i'll ignore this input.\",\"I don't have the skills to master Adams/View... \",\"\",\"\",1)))",  &
                        "else",  &
                        "    var cre var= $_self.exitcond int=(eval(alert(\"\",\"You foolish user, changing the number of segments of an existing beam section is NOT allowed - i'll ignore this input.\",\"Sorry... My mistake\",\"\",\"\",1)))",  &
                        "end",  &
                        "end",  &
                        "",  &
                        "if con = (\"$option_1\" == \"hex\")",  &
                        "if con = (db_exists(\"$field_6.DV_$'field_1'_midheight\"))",  &
                        " var mod var = $field_6.DV_$'field_1'_midheight real = $hex_sh",  &
                        "else",  &
                        " var cre var = $field_6.DV_$'field_1'_Midheight real = $hex_sh",  &
                        " var cre var = $field_6.DV_$'field_1'_Profileangle real = (atan(($field_6.DV_$'field_1'_height-$field_6.DV_$'field_1'_midheight)/($field_6.DV_$'field_1'_width)))",  &
                        " var cre var = $field_6.DV_$'field_1'_InMidheight real = ($field_6.DV_$'field_1'_Midheight - 2*($field_6.DV_$'field_1'_thickness)/cos($field_6.DV_$'field_1'_ProfileAngle) + 2*($field_6.DV_$'field_1'_Thickness)*tan($field_6.DV_$'field_1'_ProfileAngle))",  &
                        "end",  &
                        "end",  &
                        "",  &
                        "",  &
                        "!Calculate area moments of inertia",  &
                        "if cond=(!db_exists(\"$field_6.DV_$'field_1'_ixx\"))",  &
                        "  var cre var= $field_6.DV_$'field_1'_ixx real=(1.0)",  &
                        "  var cre var= $field_6.DV_$'field_1'_iyy real=(1.0)",  &
                        "  var cre var= $field_6.DV_$'field_1'_izz real=(1.0)",  &
                        "  var cre var= $field_6.DV_$'field_1'_area real=(1.0)",  &
                        "end",  &
                        "",  &
                        "if cond=(($field_6.DV_$'field_1'_ProfileType[1]) ==\"rect\" )",  &
                        "  AreaInertia &",  &
                        "     beamName = \"$field_6.DV_$field_1\" &",  &
                        "     sectionType = (eval($field_6.DV_$'field_1'_ProfileType[1])) &",  &
                        "     Hh = ($field_3) &",  &
                        "     b = ($field_4) &",  &
                        "     t = ($field_5) &",  &
                        "     radius = ($field_8)",  &
                        "end",  &
                        "",  &
                        "if cond=( ($field_6.DV_$'field_1'_ProfileType[1]) == \"hex\")",  &
                        "  AreaInertia &",  &
                        "     beamName = \"$field_6.DV_$field_1\" &",  &
                        "     sectionType = (eval($field_6.DV_$'field_1'_ProfileType[1])) &",  &
                        "     Hh = ($field_3) &",  &
                        "     Hs = (eval($field_6.DV_$'field_1'_midheight)) &",  &
                        "     b = ($field_4) &",  &
                        "     t = ($field_5) &",  &
                        "     radius = ($field_8)",  &
                        "",  &
                        "",  &
                        "! Geometrical variables of the profile are calculated",  &
                        "var cre var = $_self.thickness real = ($field_6.DV_$'field_1'_thickness)",  &
                        "var cre var = $_self.width real =  ($field_6.DV_$'field_1'_width)",  &
                        "var cre var = $_self.height real = ($field_6.DV_$'field_1'_height)",  &
                        "var cre var = $_self.midheight real = ($field_6.DV_$'field_1'_midheight)",  &
                        "var cre var = $_self.outradius real = ($field_6.DV_$'field_1'_outradius)",  &
                        "var cre var = $_self.profileangle real = (atan((eval($_self.height)-eval($_self.midheight))/eval($_self.width)))",  &
                        "var cre var = $_self.inwidth real = (eval($_self.width) - 2 * eval($_self.thickness))",  &
                        "var cre var = $_self.inheight real = (eval($_self.height) - 2*eval($_self.thickness)/cos(eval($_self.profileangle)))",  &
                        "var cre var = $_self.inmidheight real =  (eval($field_6.DV_$'field_1'_InMidheight))",  &
                        "var cre var = $_self.inradius real = (eval( (abs($_self.outradius-$_self.thickness)+($_self.outradius-$_self.thickness))/2 + 0.00001 ))",  &
                        "",  &
                        "end ! setting the variables of the hexagonal profile",  &
                        "",  &
                        "",  &
                        "if cond=(!db_exists(eval($field_6//\".\"// \"PART_$'field_1'_1\")))",  &
                        "for variable_name=tempreal start_value=1 end_value= ($field_6.DV_$'field_1'_nSegments)",  &
                        "",  &
                        "  part create rigid_body name_and_position part_name= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal))) ",  &
                        "  part modify rigid_body mass_properties part_name= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal))) material=.materials.steel",  &
                        "  part attributes part_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) )) color=RED name_vis=off",  &
                        "",  &
                        "  ! Center marker of each segment is created",  &
                        "    marker create marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) &",  &
                        "      location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval(RTOI(tempreal)-1.5))), 0 , 0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "      orientation = (ORI_RELATIVE_TO( {90,90,0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") ))",  &
                        "",  &
                        "end ! creation of parts and segment markers",  &
                        "",  &
                        "! The first marker is moved",  &
                        "    marker modify marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(1) //\".\"// \"Mkr_Segment_\" // RTOI(1))) &",  &
                        "      location = (LOC_RELATIVE_TO( { 0,0,0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) ",  &
                        "",  &
                        "! The last segment has a end marker added",  &
                        "    marker create marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI($field_6.DV_$'field_1'_nSegments) //\".\"// \"Mkr_Segment_\" // RTOI($field_6.DV_$'field_1'_nSegments) // \"_end\")) &",  &
                        "      location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval($field_6.DV_$'field_1'_nSegments)-1)), 0 , 0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "      orientation = (ORI_RELATIVE_TO( {90,90,0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") ))",  &
                        "end",  &
                        "",  &
                        "var cre var = $_self.lengthvariable real = (1)",  &
                        "",  &
                        "",  &
                        "!Rectangular geometry",  &
                        "if cond=(($field_6.DV_$'field_1'_ProfileType[1]) == \"rect\") ",  &
                        "",  &
                        "if cond=(!db_exists(eval(\"$field_6\"//\".\"// \"PART_$'field_1'_1\" //\".\"// \"Mkr_Outer_Corner\")))",  &
                        "for variable_name=tempreal start_value=1 end_value= ($field_6.DV_$'field_1'_nSegments)",  &
                        "",  &
                        "! The length variable, which is a half if the first or last segment",  &
                        "if con = (tempreal == 1 || tempreal == $field_6.DV_$'field_1'_nSegments )",  &
                        "    var mod var = $_self.lengthvariable real = 0.5",  &
                        "else",  &
                        "    var mod var = $_self.lengthvariable real = 1",  &
                        "end",  &
                        "",  &
                        "    marker create marker= (eval(\"$field_6\"//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Outer_Corner\")) &",  &
                        "      location = (LOC_RELATIVE_TO( { -(DV_$'field_1'_width)/2 , -(DV_$'field_1'_height)/2 , 0} , (eval(\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) )) &",  &
                        "      orientation = (ORI_RELATIVE_TO( {0,0,0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") ))",  &
                        "",  &
                        "    marker create marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Inner_Corner\")) &",  &
                        "      location = (LOC_RELATIVE_TO( { (-DV_$'field_1'_width + 2*DV_$'field_1'_thickness)/2 , (-DV_$'field_1'_height + 2*DV_$'field_1'_thickness)/2 , 0} , (eval(\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) )) &",  &
                        "      orientation = (ORI_RELATIVE_TO( {0,0,0} , \"Mkr_$'field_1'_Master\" ))",  &
                        "",  &
                        "   ! First the outer box",  &
                        "    geometry create shape block &",  &
                        "      block_name=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_1\")) &",  &
                        "      diag_corner_coords=(DV_$'field_1'_length*eval($_self.lengthvariable)), (DV_$'field_1'_width), (DV_$'field_1'_height) &",  &
                        "      corner_marker=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Outer_Corner\"))",  &
                        "",  &
                        "    ! Second the inner box",  &
                        "    geometry create shape block &",  &
                        "      block_name=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_2\")) &",  &
                        "      diag_corner_coords=(DV_$'field_1'_length*eval($_self.lengthvariable)), (DV_$'field_1'_width - 2*DV_$'field_1'_thickness), (DV_$'field_1'_height - 2*DV_$'field_1'_thickness) &",  &
                        "      corner_marker=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Inner_Corner\"))",  &
                        "    group modify group=SELECT_LIST object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal)))",  &
                        "",  &
                        "geometry create feature blend &",  &
                        "    blend_name=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_2\" //\".\"// \"Blend_1\")) &",  &
                        "    subtype=edge &",  &
                        "    subids= &",  &
                        "             1, 3, 10, 12 &",  &
                        "    radius1=($field_6.DV_$'field_1'_inradius) &",  &
                        "    chamfer=NO",  &
                        "",  &
                        "geometry create feature blend &",  &
                        "    blend_name=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_1\" //\".\"// \"Blend_2\")) &",  &
                        "    subtype=edge &",  &
                        "    subids= &",  &
                        "             1, 3, 10, 12 &",  &
                        "    radius1=($field_6.DV_$'field_1'_outradius) &",  &
                        "    chamfer=NO",  &
                        "",  &
                        "    ! The two boxes are hollowed out",  &
                        "    geometry create shape csg csg_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"CSG_\" // RTOI(tempreal))) &",  &
                        "      base_object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_1\")) &",  &
                        "      object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"BOX_2\")) &",  &
                        "      type=difference",  &
                        "    group modify group=SELECT_LIST object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal))) ",  &
                        "",  &
                        "end ! Tempreal loop",  &
                        "end ! Creation of rectangular geometry",  &
                        "end ! Creating the geometry of the rectangular profile",  &
                        "",  &
                        "",  &
                        "",  &
                        "! Hexagonal geometry",  &
                        "if cond=(($field_6.DV_$'field_1'_ProfileType[1]) == \"hex\") ",  &
                        "",  &
                        "! Looping through all segments of the beam",  &
                        "for variable_name=tempreal start_value=1 end_value= ($field_6.DV_$'field_1'_nSegments)",  &
                        "",  &
                        "! The length variable, which is a half if the first or last segment",  &
                        "if con = (tempreal == 1 || tempreal == $field_6.DV_$'field_1'_nSegments )",  &
                        "var mod var = $_self.lengthvariable real = 0.5",  &
                        "else",  &
                        "var mod var = $_self.lengthvariable real = 1",  &
                        "end",  &
                        "",  &
                        "! To be modified or created?",  &
                        "if cond = (!db_exists(eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Segment_\" // RTOI(tempreal))))",  &
                        "",  &
                        "! The outer profile is extruded",  &
                        "geometry create shape extrusion &",  &
                        "    extrusion_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Extrusion_Out_\" // RTOI(tempreal) )) &",  &
                        "    reference_marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) &",  &
                        "    points_for_profile= &",  &
                        "                        0.0                     , (eval($_self.height/2))     , 0.0, &",  &
                        "                        (eval(-$_self.width/2)) , (eval($_self.midheight/2))  , 0.0, &",  &
                        "                        (eval(-$_self.width/2)) , (eval(-$_self.midheight/2)) , 0.0, &",  &
                        "                        0.0                     , (eval(-$_self.height/2))    , 0.0, &",  &
                        "                        (eval($_self.width/2))  , (eval(-$_self.midheight/2)) , 0.0, &",  &
                        "                        (eval($_self.width/2))  , (eval($_self.midheight/2))  , 0.0, &",  &
                        "                        0.0                     , (eval($_self.height/2))     , 0.0 &",  &
                        "    length_along_z_axis=(DV_$'field_1'_length*(eval($_self.lengthvariable))) &",  &
                        "    analytical=no &",  &
                        "    relative_to= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)))",  &
                        "",  &
                        "! The outer corners are rounded",  &
                        "geometry create feature blend &",  &
                        "    blend_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Extrusion_Out_\" // RTOI(tempreal) //\".\"// \"blend_Out_\" // RTOI(tempreal) )) &",  &
                        "    subtype=edge &",  &
                        "    subids= &",  &
                        "            1,2,3,4,5,6 & ",  &
                        "    radius1= ($field_6.DV_$'field_1'_outradius) &",  &
                        "    chamfer=NO",  &
                        "",  &
                        "! The inner profile is extruded",  &
                        "geometry create shape extrusion &",  &
                        "    extrusion_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Extrusion_In_\" // RTOI(tempreal) )) &",  &
                        "    reference_marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) &",  &
                        "    points_for_profile= &",  &
                        "                        0.0                       , (eval($_self.inheight/2))     , 0.0, &",  &
                        "                        (eval(-$_self.inwidth/2)) , (eval($_self.inmidheight/2))  , 0.0, &",  &
                        "                        (eval(-$_self.inwidth/2)) , (eval(-$_self.inmidheight/2)) , 0.0, &",  &
                        "                        0.0                       , (eval(-$_self.inheight/2))    , 0.0, &",  &
                        "                        (eval($_self.inwidth/2))  , (eval(-$_self.inmidheight/2)) , 0.0, &",  &
                        "                        (eval($_self.inwidth/2))  , (eval($_self.inmidheight/2))  , 0.0, &",  &
                        "                        0.0                       , (eval($_self.inheight/2))     , 0.0 &",  &
                        "    length_along_z_axis=(DV_$'field_1'_length*(eval($_self.lengthvariable))) &",  &
                        "    analytical=no &",  &
                        "    relative_to= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)))",  &
                        "",  &
                        "! The inner corners are rounded",  &
                        "geometry create feature blend &",  &
                        "    blend_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Extrusion_In_\" // RTOI(tempreal) //\".\"// \"blend_In_\" // RTOI(tempreal) )) &",  &
                        "    subtype=edge &",  &
                        "    subids= &",  &
                        "            1,2,3,4,5,6 & ",  &
                        "    radius1= ($field_6.DV_$'field_1'_inradius) &",  &
                        "    chamfer=NO",  &
                        "",  &
                        "! The two hexagons are hollowed out",  &
                        "  geometry create shape csg csg_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Segment_\" // RTOI(tempreal))) &",  &
                        "    base_object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Extrusion_Out_\" // RTOI(tempreal))) &",  &
                        "    object=(eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Extrusion_In_\" // RTOI(tempreal))) &",  &
                        "    type=difference",  &
                        "",  &
                        "else ! Existing geometry is modified",  &
                        "",  &
                        "! First the outer profile is modified to fairly large...",  &
                        "geometry modify shape extrusion &",  &
                        "    extrusion_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Segment_\" // RTOI(tempreal)//\".\"// \"Extrusion_Out_\" // RTOI(tempreal) )) &",  &
                        "    reference_marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) &",  &
                        "    points_for_profile= &",  &
                        "                        0.0                     , (eval($_self.height*100))     , 0.0, &",  &
                        "                        (eval(-$_self.width*100)) , (eval($_self.midheight*100))  , 0.0, &",  &
                        "                        (eval(-$_self.width*100)) , (eval(-$_self.midheight*100)) , 0.0, &",  &
                        "                        0.0                     , (eval(-$_self.height*100))    , 0.0, &",  &
                        "                        (eval($_self.width*100))  , (eval(-$_self.midheight*100)) , 0.0, &",  &
                        "                        (eval($_self.width*100))  , (eval($_self.midheight*100))  , 0.0, &",  &
                        "                        0.0                     , (eval($_self.height*100))     , 0.0 &",  &
                        "    length_along_z_axis=(DV_$'field_1'_length*(eval($_self.lengthvariable))) &",  &
                        "    relative_to= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)))",  &
                        "",  &
                        "! The inner profile is modified to the selected values",  &
                        "geometry modify shape extrusion &",  &
                        "    extrusion_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Segment_\" // RTOI(tempreal)//\".\"// \"Extrusion_In_\" // RTOI(tempreal) )) &",  &
                        "    reference_marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) &",  &
                        "    points_for_profile= &",  &
                        "                        0.0                     , (eval($_self.inheight/2))     , 0.0, &",  &
                        "                        (eval(-$_self.inwidth/2)) , (eval($_self.inmidheight/2))  , 0.0, &",  &
                        "                        (eval(-$_self.inwidth/2)) , (eval(-$_self.inmidheight/2)) , 0.0, &",  &
                        "                        0.0                     , (eval(-$_self.inheight/2))    , 0.0, &",  &
                        "                        (eval($_self.inwidth/2))  , (eval(-$_self.inmidheight/2)) , 0.0, &",  &
                        "                        (eval($_self.inwidth/2))  , (eval($_self.inmidheight/2))  , 0.0, &",  &
                        "                        0.0                     , (eval($_self.inheight/2))     , 0.0 &",  &
                        "    length_along_z_axis=(DV_$'field_1'_length*(eval($_self.lengthvariable))) &",  &
                        "    relative_to= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)))",  &
                        "",  &
                        "! The outer profile is modified to the selected values",  &
                        "geometry modify shape extrusion &",  &
                        "    extrusion_name= (eval($field_6//\".\"//\"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Segment_\" // RTOI(tempreal)//\".\"// \"Extrusion_Out_\" // RTOI(tempreal) )) &",  &
                        "    reference_marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) &",  &
                        "    points_for_profile= &",  &
                        "                        0.0                     , (eval($_self.height/2))     , 0.0, &",  &
                        "                        (eval(-$_self.width/2)) , (eval($_self.midheight/2))  , 0.0, &",  &
                        "                        (eval(-$_self.width/2)) , (eval(-$_self.midheight/2)) , 0.0, &",  &
                        "                        0.0                     , (eval(-$_self.height/2))    , 0.0, &",  &
                        "                        (eval($_self.width/2))  , (eval(-$_self.midheight/2)) , 0.0, &",  &
                        "                        (eval($_self.width/2))  , (eval($_self.midheight/2))  , 0.0, &",  &
                        "                        0.0                     , (eval($_self.height/2))     , 0.0 &",  &
                        "    length_along_z_axis=(DV_$'field_1'_length*(eval($_self.lengthvariable))) &",  &
                        "    relative_to= (eval($field_6//\".\"// \"PART_$'field_1'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)))",  &
                        "",  &
                        "end ! Modification or creation of hexagonal geometry ",  &
                        "end ! Tempreal loop",  &
                        "end ! Hexagonal geometry",  &
                        "",  &
                        "!Create beam elements between each segment",  &
                        "for variable_name=tempreal start_value=1 end_value= ($field_6.DV_$'field_1'_nSegments-1)",  &
                        "if cond = (!db_exists(eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)) //\".\"// \"Mkr_BeamElm_1\")))",  &
                        "    ! Create markers for the force element",  &
                        "    marker create marker = (eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)) //\".\"// \"Mkr_BeamElm_1\")) &",  &
                        "        location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval(RTOI(tempreal))-1)), 0 , 0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,0,0} , \"Mkr_$'field_1'_Master\" ))",  &
                        "    marker create marker= (eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)+1)//\".\"// \"Mkr_BeamElm_2\" )) &",  &
                        "        location = (LOC_RELATIVE_TO( { ((DV_$'field_1'_length)*(eval(RTOI(tempreal)))), 0 , 0} , (\"ground\" //\".\"// \"Mkr_$'field_1'_Master\") )) &",  &
                        "        orientation = (ORI_RELATIVE_TO( {0,0,0} , \"Mkr_$'field_1'_Master\" ))",  &
                        "",  &
                        "    !Create force element.",  &
                        "    force create element beam beam=(eval(\"$'field_1'_beamELM_\"//RTOI(tempreal))) &",  &
                        "         i_marker =(eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)+1) //\".\"// \"Mkr_beamElm_2\")) &",  &
                        "         j_marker =(eval($field_6//\".\"// \"PART_$'field_1'_\" // (RTOI(tempreal)) //\".\"// \"Mkr_beamElm_1\" )) & ",  &
                        "         length= (($field_6.DV_$'field_1'_length)) &",  &
                        "         area = ($field_6.DV_$'field_1'_area) & ",  &
                        "         y_shear = 0.0 &",  &
                        "         z_shear = 0.0 & ",  &
                        "         youngs = (DV_EModulus) &",  &
                        "         shear = (DV_GModulus) &",  &
                        "         ixx = ($field_6.DV_$'field_1'_ixx) &",  &
                        "         iyy = ($field_6.DV_$'field_1'_iyy) &",  &
                        "         izz = ($field_6.DV_$'field_1'_izz) & ",  &
                        "         damping = ($field_6.DV_$'field_1'_damping)",  &
                        "",  &
                        "end ! Exists condition",  &
                        "end ! creation of force elements",  &
                        "",  &
                        "",  &
                        "var cre var = $_self.sothatatleastoneexists real = 1",  &
                        "",  &
                        "default coordinate_system default_coordinate_system= $field_6",  &
                        "var del var=$_self.*"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .gui.dbox_flexbeam.button_1  &
   location = 209.0, 654.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .gui.dbox_flexbeam.button_2  &
   location = 131.0, 654.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=no"
!
interface push_button create  &
   push_button_name = .gui.dbox_flexbeam.button_3  &
   location = 53.0, 654.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes"
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_1  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of beam"
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_1  &
   location = 162.0, 31.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "Flexbeam"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   commands = "!Lets try to find some values...",  &
              "if condition=(db_exists(\"$field_6.DV_$'field_1'_height\"))",  &
              "  int field set field = $_parent.field_2 string = (RTOI($field_6.DV_$'field_1'_nSegments))",  &
              "  int field set field = $_parent.field_3 string = ($field_6.DV_$'field_1'_height)",  &
              "  int field set field = $_parent.field_4 string = ($field_6.DV_$'field_1'_width)",  &
              "  int field set field = $_parent.field_5 string = ($field_6.DV_$'field_1'_thickness)",  &
              "  int field set field = $_parent.field_8 string = ($field_6.DV_$'field_1'_outradius)",  &
              "end",  &
              "",  &
              "if condition=(db_exists(\"$field_6.DV_$'field_1'_midheight\"))",  &
              "  int field set field = $_parent.cont_hex.hex_sh string = ($field_6.DV_$'field_1'_midheight)",  &
              "end"  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_2  &
   location = 4.0, 85.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Number of segments"
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_2  &
   location = 163.0, 85.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "4"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_3  &
   location = 4.0, 141.0  &
   height = 25.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Beam height, H"
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_4  &
   location = 4.0, 168.0  &
   height = 25.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Beam width, W"
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_3  &
   location = 226.0, 141.0  &
   height = 25.0  &
   width = 60.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.5586"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_4  &
   location = 226.0, 168.0  &
   height = 25.0  &
   width = 60.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.2999"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_5  &
   location = 226.0, 195.0  &
   height = 25.0  &
   width = 60.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.008"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_5  &
   location = 4.0, 195.0  &
   height = 25.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Wall thickness, T"
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_6  &
   location = 162.0, 4.0  &
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
interface label create  &
   label_name = .gui.dbox_flexbeam.label_6  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Create in model"
!
interface separator create  &
   separator_name = .gui.dbox_flexbeam.sep_1  &
   location = 4.0, 112.0  &
   width = 280.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface option_menu create  &
   option_menu_name = .gui.dbox_flexbeam.option_1  &
   location = 162.0, 58.0  &
   height = 25.0  &
   width = 122.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   choices = "Rectangular", "Hexagonal"  &
   current_choice = "Rectangular"  &
   values = "rect", "hex"  &
   commands = "int cont und cont=$_parent.*",  &
              "",  &
              "if con = (\"$option_1\" == \"rect\")",  &
              "int cont dis cont=$_parent.cont_rect",  &
              "end ! ",  &
              "",  &
              "",  &
              "if con = (\"$option_1\" == \"hex\")",  &
              "int cont dis cont=$_parent.cont_hex",  &
              "end ! "
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_8  &
   location = 4.0, 222.0  &
   height = 25.0  &
   width = 219.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Outer radius of corners, r"
!
interface field create  &
   field_name = .gui.dbox_flexbeam.field_8  &
   location = 225.0, 222.0  &
   height = 25.0  &
   width = 60.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.024"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_10  &
   location = 4.0, 58.0  &
   height = 25.0  &
   width = 156.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Profile"
!
interface container create  &
   container_name = .gui.dbox_flexbeam.cont_rect  &
   location = 4.0, 251.0  &
   height = 365.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .gui.dbox_flexbeam.cont_rect.label_1  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 226.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "The rectangular profile"
!
interface label create  &
   label_name = .gui.dbox_flexbeam.cont_rect.label_16  &
   location = 4.0, 31.0  &
   height = 327.0  &
   width = 272.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   icon_file = "flexbeam/rect_profile"
!
interface container create  &
   container_name = .gui.dbox_flexbeam.cont_hex  &
   location = 2.0, 251.0  &
   height = 397.0  &
   width = 283.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface container undisplay  &
   container_name = .gui.dbox_flexbeam.cont_hex
!
interface label create  &
   label_name = .gui.dbox_flexbeam.cont_hex.label_13  &
   location = 4.0, 31.0  &
   height = 25.0  &
   width = 210.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Small height of profile, h"
!
interface label create  &
   label_name = .gui.dbox_flexbeam.cont_hex.label_14  &
   location = 4.0, 4.0  &
   height = 25.0  &
   width = 198.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "The hexagonal profile"
!
interface field create  &
   field_name = .gui.dbox_flexbeam.cont_hex.hex_sh  &
   location = 216.0, 31.0  &
   height = 25.0  &
   width = 60.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "0.4188"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   commands = "! this is the field of the hexagonal profile"  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .gui.dbox_flexbeam.cont_hex.label_15  &
   location = 6.0, 58.0  &
   height = 329.0  &
   width = 265.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = center  &
   icon_file = "flexbeam/hex_profile"
!
interface separator create  &
   separator_name = .gui.dbox_flexbeam.sep_2  &
   location = 4.0, 249.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .gui.dbox_flexbeam.label_9  &
   location = 4.0, 114.0  &
   height = 25.0  &
   width = 281.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Beam profile properties"
