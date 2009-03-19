!
interface dialog_box create  &
   dialog_box_name = .gui.Contact_With_Contact_Function  &
   location = 939.0, 43.0  &
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
   execution_commands = "if cond=(($ModelName.DV_$'OuterBeam'_ProfileType[1]) != ($ModelName.DV_$'InnerBeam'_ProfileType[1]))",  &
                        "    var cre var= $_self.exitcond int=(eval(alert(\"\",\"The selected beam sections are not compatible! - Connecting eg. a hexagonal and rectangular profile is impossible\",\"I'll consider my choice once again\",\"\",\"\",1)))",  &
                        "end",  &
                        "",  &
                        "",  &
                        "",  &
                        "if con = (!db_exists(\"$ModelName.DV_Contact_Stiffness\"))",  &
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
                        "if con = (\"$Toggle_Thickness\" == \"on\" )",  &
                        "  var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t real = ($ModelName.DV_Contact_t)",  &
                        "else",  &
                        "  var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t real = $cont_Thickness",  &
                        "end",  &
                        "",  &
                        "if con = (\"$Toggle_Length\" == \"on\" )",  &
                        "  var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l real = ($ModelName.DV_Contact_l)",  &
                        "else",  &
                        "  var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l real = $cont_Length",  &
                        "end",  &
                        "",  &
                        "! The width of top/bottom contact is set",  &
                        "if con = (\"$Toggle_TopBot\" == \"off\")",  &
                        "var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w real = $Cont_TopBot",  &
                        "else",  &
                        "",  &
                        "! If the profile is hexagonal",  &
                        "if con = (($ModelName.DV_$'InnerBeam'_ProfileType[1]) == \"hex\")",  &
                        "var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w real = (($ModelName.DV_$'InnerBeam'_Width/2)/(cos($ModelName.DV_$'InnerBeam'_ProfileAngle))-$ModelName.DV_$'OuterBeam'_Inradius)",  &
                        "end ! hexagonal profile",  &
                        "",  &
                        "! If the profile is rectangular",  &
                        "if con = (($ModelName.DV_$'InnerBeam'_ProfileType[1]) == \"rect\")",  &
                        "var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w real = (($ModelName.DV_$'OuterBeam'_Width - 2*$ModelName.DV_$'OuterBeam'_Thickness-2*$ModelName.DV_$'OuterBeam'_Inradius)",  &
                        "end ! rectangular profile",  &
                        "end ! setting the width of top/bottom contact",  &
                        "",  &
                        "! The height of side contact is set",  &
                        "if con = (\"$Toggle_Sides\" == \"off\")",  &
                        "var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h real = $Cont_Sides",  &
                        "else",  &
                        "",  &
                        "! if the profile is hexagonal",  &
                        "if con = ($ModelName.DV_$'InnerBeam'_ProfileType[1] == \"hex\")",  &
                        "var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h real = ($ModelName.DV_$'InnerBeam'_MidHeight-$ModelName.DV_$'InnerBeam'_OutRadius)",  &
                        "end ! the hexagonal profile",  &
                        "",  &
                        "! if the profile is rectangular",  &
                        "if con = ($ModelName.DV_$'InnerBeam'_ProfileType[1] == \"rect\")",  &
                        "var mod var = $ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h real = ($ModelName.DV_$'OuterBeam'_Height - 2*$ModelName.DV_$'OuterBeam'_Thickness-2*$ModelName.DV_$'OuterBeam'_Inradius)",  &
                        "end ! the rectangular profile",  &
                        "end ! setting the height of side contacts",  &
                        "",  &
                        "! If the contacts doesn't exist, they are created",  &
                        "if con = (!db_exists(\"$ModelName.PART_$'InnerBeam'_1.MARKER_1\"))",  &
                        "",  &
                        "var cre var = tempreal real = 1",  &
                        "if con = (tempreal == 1)",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_1\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { ($ModelName.DV_$'OuterBeam'_width/2 - $ModelName.DV_$'OuterBeam'_thickness)/2 + cos($ModelName.DV_$'OuterBeam'_Profileangle)*($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2),$ModelName.DV_$'OuterBeam'_height/2-$ModelName.DV_$'OuterBeam'_thickness/cos($ModelName.DV_$'OuterBeam'_Profileangle)-tan($ModelName.DV_$'OuterBeam'_Profileangle)*($ModelName.DV_$'OuterBeam'_width/2-$ModelName.DV_$'OuterBeam'_thickness)/2  - sin($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2,0} , (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) ) &",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, 180 -$ModelName.DV_$'OuterBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_1\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker=(eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_1\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_2\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { (-$ModelName.DV_$'OuterBeam'_width/2 + $ModelName.DV_$'OuterBeam'_thickness)/2 - cos($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2,$ModelName.DV_$'OuterBeam'_height/2-$ModelName.DV_$'OuterBeam'_thickness/cos($ModelName.DV_$'OuterBeam'_Profileangle)-tan($ModelName.DV_$'OuterBeam'_Profileangle)*($ModelName.DV_$'OuterBeam'_width/2-$ModelName.DV_$'OuterBeam'_thickness)/2  - sin($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2,0} , (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) )) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, $ModelName.DV_$'OuterBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_2\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), (-$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker=(eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_2\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_3\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { -((-$ModelName.DV_$'OuterBeam'_width/2 + $ModelName.DV_$'OuterBeam'_thickness)/2 - cos($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2),-($ModelName.DV_$'OuterBeam'_height/2-$ModelName.DV_$'OuterBeam'_thickness/cos($ModelName.DV_$'OuterBeam'_Profileangle)-tan($ModelName.DV_$'OuterBeam'_Profileangle)*($ModelName.DV_$'OuterBeam'_width/2-$ModelName.DV_$'OuterBeam'_thickness)/2  - sin($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2),0} , (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) )) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, 180+$ModelName.DV_$'OuterBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_3\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), (-$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker=(eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_3\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_4\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { (-$ModelName.DV_$'OuterBeam'_width/2 + $ModelName.DV_$'OuterBeam'_thickness)/2 - cos($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2,-($ModelName.DV_$'OuterBeam'_height/2-$ModelName.DV_$'OuterBeam'_thickness/cos($ModelName.DV_$'OuterBeam'_Profileangle)-tan($ModelName.DV_$'OuterBeam'_Profileangle)*($ModelName.DV_$'OuterBeam'_width/2-$ModelName.DV_$'OuterBeam'_thickness)/2  - sin($ModelName.DV_$'OuterBeam'_Profileangle)*$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w/2),0} , (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) )) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, -$ModelName.DV_$'OuterBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_4\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), (+$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker=(eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_4\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_5\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { (-$ModelName.DV_$'OuterBeam'_width/2 + $ModelName.DV_$'OuterBeam'_thickness) , - $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_h/2 , 0} , (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) )) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0,0} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_5\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), (+$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker=(eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_5\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_6\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { ($ModelName.DV_$'OuterBeam'_width/2 - $ModelName.DV_$'OuterBeam'_thickness) , - $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_h/2 , 0} , (eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) )) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0,0} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) ))",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_6\")) &",  &
                        "    diag_corner_coords=(-$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), (+$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker=(eval($ModelName//\".\"// \"PART_$'InnerBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_6\"))",  &
                        "",  &
                        "",  &
                        "end ! first segment",  &
                        "var del var = tempreal",  &
                        "",  &
                        "var cre var = tempreal real = (eval($ModelName.DV_$'OuterBeam'_nSegments))",  &
                        "if con = (tempreal == ($ModelName.DV_$'OuterBeam'_nSegments))",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_1\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness + ($ModelName.DV_$'InnerBeam'_width/2 - $ModelName.DV_$'InnerBeam'_thickness)/2 + cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2,$ModelName.DV_$'InnerBeam'_height/2-$ModelName.DV_$'InnerBeam'_thickness/cos($ModelName.DV_$'InnerBeam'_Profileangle)-tan($ModelName.DV_$'InnerBeam'_Profileangle)*($ModelName.DV_$'InnerBeam'_width/2-$ModelName.DV_$'InnerBeam'_thickness)/2  - sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2 + cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness   , $ModelName.DV_$'OuterBeam'_length/2-$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_l} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal)) ) )) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, 180 -$ModelName.DV_$'InnerBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name= (eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_end_1\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), (-$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker= (eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"// \"MARKER_end_1\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_2\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { - sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness +(-$ModelName.DV_$'InnerBeam'_width/2 + $ModelName.DV_$'InnerBeam'_thickness)/2 - cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2 ,cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness + $ModelName.DV_$'InnerBeam'_height/2-$ModelName.DV_$'InnerBeam'_thickness/cos($ModelName.DV_$'InnerBeam'_Profileangle)-tan($ModelName.DV_$'InnerBeam'_Profileangle)*($ModelName.DV_$'InnerBeam'_width/2-$ModelName.DV_$'InnerBeam'_thickness)/2  - sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2,$ModelName.DV_$'OuterBeam'_length/2-$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_l} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) ) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, $ModelName.DV_$'InnerBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_end_2\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_2\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_3\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { +sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness -((-$ModelName.DV_$'InnerBeam'_width/2 + $ModelName.DV_$'InnerBeam'_thickness)/2 - cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2),-cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness-($ModelName.DV_$'InnerBeam'_height/2-$ModelName.DV_$'InnerBeam'_thickness/cos($ModelName.DV_$'InnerBeam'_Profileangle)-tan($ModelName.DV_$'InnerBeam'_Profileangle)*($ModelName.DV_$'InnerBeam'_width/2-$ModelName.DV_$'InnerBeam'_thickness)/2  - sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2),$ModelName.DV_$'OuterBeam'_length/2-$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_l}  , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) ) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, 180+$ModelName.DV_$'InnerBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_end_3\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_3\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_4\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { -sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness+(-$ModelName.DV_$'InnerBeam'_width/2 + $ModelName.DV_$'InnerBeam'_thickness)/2 - cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2,-cos($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_thickness-($ModelName.DV_$'InnerBeam'_height/2-$ModelName.DV_$'InnerBeam'_thickness/cos($ModelName.DV_$'InnerBeam'_Profileangle)-tan($ModelName.DV_$'InnerBeam'_Profileangle)*($ModelName.DV_$'InnerBeam'_width/2-$ModelName.DV_$'InnerBeam'_thickness)/2  - sin($ModelName.DV_$'InnerBeam'_Profileangle)*$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_w/2),$ModelName.DV_$'OuterBeam'_length/2-$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_l}  , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) ) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, -$ModelName.DV_$'InnerBeam'_Profileangle} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_end_4\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_w), (-$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_4\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_5\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { -$ModelName.DV_$'InnerBeam'_width/2 , - $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_h/2  , $ModelName.DV_$'OuterBeam'_length/2-$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_l}  , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) ) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, 0} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_end_5\")) &",  &
                        "    diag_corner_coords=(-$ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_5\"))",  &
                        "",  &
                        "marker create marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_6\")) &",  &
                        "    location = (LOC_RELATIVE_TO( { $ModelName.DV_$'InnerBeam'_width/2 , - $ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_h/2  , $ModelName.DV_$'OuterBeam'_length/2-$ModelName.DV_$'InnerBeam'_$'OuterBeam'_Contact_l}  , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) ) &   ",  &
                        "    orientation = (ORI_RELATIVE_TO( {0,0, 0} , (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal) //\".\"// \"Mkr_Segment_\" // RTOI(tempreal))) ) )",  &
                        "geometry create shape block &",  &
                        "    block_name=(eval($ModelName//\".\"//\"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"BOX_end_6\")) &",  &
                        "    diag_corner_coords=($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_t), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_h), ($ModelName.DV_$'Innerbeam'_$'OuterBeam'_Contact_l) &",  &
                        "    corner_marker= (eval($ModelName//\".\"// \"PART_$'OuterBeam'_\" // RTOI(tempreal)//\".\"//\"MARKER_end_6\"))",  &
                        "",  &
                        "var del var = tempreal",  &
                        "",  &
                        "",  &
                        "",  &
                        "for variable_name=tempreal start_value=1 end_value= ($ModelName.DV_$'OuterBeam'_nSegments)",  &
                        "for variable_name=tempfour start_value=1 end_value= 6",  &
                        "contact create &",  &
                        "  contact_name = (eval(\"$ModelName.CONTACT_$'InnerBeam'_Box\"//RTOI(tempfour)//\"_$'OuterBeam'_Seg\"//RTOI(tempreal)))  &",  &
                        "  i_geometry_name = (eval($ModelName//\".\"// \"PART_\"//\"$'InnerBeam'_1\"//\".\"//\"BOX_\" //RTOI(tempfour)))  &",  &
                        "  j_geometry_name = (eval($ModelName//\".\"// \"PART_\"//\"$'OuterBeam'_\"//RTOI(tempreal)//\".\"//\"Segment_\"//RTOI(tempreal)))  &",  &
                        "  stiffness = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_Stiffness)  &",  &
                        "  damping = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_Damping)  &",  &
                        "  exponent = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_ForceExponent)  &",  &
                        "  dmax = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_PenetrationDepth) &",  &
                        "  no_friction = true",  &
                        "",  &
                        "end ! The box loop",  &
                        "end ! The tempreal loop",  &
                        "",  &
                        "for variable_name=tempreal start_value=1 end_value= ($ModelName.DV_$'InnerBeam'_nSegments)",  &
                        "for variable_name=tempfour start_value=1 end_value= 4",  &
                        "contact create &",  &
                        "  contact_name = (eval(\"$ModelName.CONTACT_$'InnerBeam'_Seg\"//RTOI(tempreal)//\"_$'OuterBeam'_Box\"//RTOI(tempfour)))  &",  &
                        "  i_geometry_name = (eval($ModelName//\".\"// \"PART_\"//\"$'OuterBeam'_\"//RTOI($ModelName.DV_$'OuterBeam'_nSegments)//\".\"//\"BOX_end_\" //RTOI(tempfour)))  &",  &
                        "  j_geometry_name = (eval($ModelName//\".\"// \"PART_\"//\"$'InnerBeam'_\"//RTOI(tempreal)//\".\"//\"Segment_\"//RTOI(tempreal)))  &",  &
                        "  stiffness = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_Stiffness)  &",  &
                        "  damping = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_Damping)  &",  &
                        "  exponent = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_ForceExponent)  &",  &
                        "  dmax = ($ModelName.DV_$'InnerBeam'_$'OuterBeam'_PenetrationDepth) &",  &
                        "  no_friction = true",  &
                        "",  &
                        "end ! The box loop",  &
                        "end ! The tempreal loop",  &
                        "",  &
                        "end ! The creation of new contact loop",  &
                        "",  &
                        "end ! The creation loop",  &
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
   push_button_name = .gui.Contact_With_Contact_Function.button_1  &
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
   push_button_name = .gui.Contact_With_Contact_Function.button_2  &
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
   push_button_name = .gui.Contact_With_Contact_Function.button_3  &
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
   label_name = .gui.Contact_With_Contact_Function.label_1  &
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
   field_name = .gui.Contact_With_Contact_Function.ModelName  &
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
   label_name = .gui.Contact_With_Contact_Function.label_2  &
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
   label_name = .gui.Contact_With_Contact_Function.label_3  &
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
   field_name = .gui.Contact_With_Contact_Function.InnerBeam  &
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
   field_name = .gui.Contact_With_Contact_Function.OuterBeam  &
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
   separator_name = .gui.Contact_With_Contact_Function.sep_1  &
   location = 4.0, 31.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .gui.Contact_With_Contact_Function.label_4  &
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
   separator_name = .gui.Contact_With_Contact_Function.sep_2  &
   location = 4.0, 114.0  &
   width = 325.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .gui.Contact_With_Contact_Function.label_5  &
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
   label_name = .gui.Contact_With_Contact_Function.label_6  &
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
   label_name = .gui.Contact_With_Contact_Function.label_7  &
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
   label_name = .gui.Contact_With_Contact_Function.label_9  &
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
   label_name = .gui.Contact_With_Contact_Function.label_10  &
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
   label_name = .gui.Contact_With_Contact_Function.label_11  &
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
   label_name = .gui.Contact_With_Contact_Function.label_12  &
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
   field_name = .gui.Contact_With_Contact_Function.Cont_TopBot  &
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
   field_name = .gui.Contact_With_Contact_Function.Cont_Sides  &
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
   field_name = .gui.Contact_With_Contact_Function.Cont_Thickness  &
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
   field_name = .gui.Contact_With_Contact_Function.Cont_Length  &
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
   label_name = .gui.Contact_With_Contact_Function.label_14  &
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
   toggle_button_name = .gui.Contact_With_Contact_Function.Toggle_Thickness  &
   location = 211.0, 251.0  &
   height = 25.0  &
   width = 50.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "                                  -"  &
   state = on  &
   on_value = "on"  &
   off_value = "off"  &
   commands = "!Lets try to find some values...",  &
              "",  &
              "if con = (\"$Toggle_Thickness\" == \"on\")",  &
              "if condition=(!db_exists(\"$ModelName.DV_Contact_t\"))",  &
              "var cre var = $ModelName.DV_Contact_t real = 0.01",  &
              "end",  &
              "  int field set field = $_parent.Cont_Thickness string = ($ModelName.DV_Contact_t)",  &
              "end"
!
interface toggle_button create  &
   toggle_button_name = .gui.Contact_With_Contact_Function.Toggle_Length  &
   location = 211.0, 278.0  &
   height = 25.0  &
   width = 50.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   label = "                     -"  &
   state = on  &
   on_value = "on"  &
   off_value = "off"  &
   commands = "!Lets try to find some values...",  &
              "",  &
              "if con = (\"$Toggle_Length\" == \"on\")",  &
              "if condition=(!db_exists(\"$ModelName.DV_Contact_l\"))",  &
              "var cre var = $ModelName.DV_Contact_l real = 0.01",  &
              "end",  &
              "  int field set field = $_parent.Cont_Length string = ($ModelName.DV_Contact_l)",  &
              "end"
!
interface label create  &
   label_name = .gui.Contact_With_Contact_Function.label_15  &
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
   toggle_button_name = .gui.Contact_With_Contact_Function.Toggle_TopBot  &
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
   toggle_button_name = .gui.Contact_With_Contact_Function.Toggle_Sides  &
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
