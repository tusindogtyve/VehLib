!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body123
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = Model_1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Model_1.SV_Cyl_HitchL_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_Cyl_HitchL_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_Cyl_HitchL_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_cyl_HitchL_Fstatic  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_cyl_HitchL_pa  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_cyl_HitchL_pb  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_Cyl_HitchR_F  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_Cyl_HitchR_P  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_Cyl_HitchR_V  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_cyl_HitchR_Fstatic  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_cyl_HitchR_pa  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Model_1.SV_cyl_HitchR_pb  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Model_1.steel  &
   adams_id = 4  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .Model_1.steel_2  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .Model_1.steel_3  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .Model_1.steel_4  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.ground.Mkr_master  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.ground.MARKER_94  &
   adams_id = 94  &
   location = 0.1147810219, 0.0, -0.3468978102  &
   orientation = -90.0d, 0.0d, 0.0d
!
!---------------------------------- MainBody ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.MainBody  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.MainBody
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_11  &
   adams_id = 1  &
   location = 0.0, -0.45, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.cm  &
   adams_id = 95  &
   location = 0.1147810219, 0.0, -0.3468978102  &
   orientation = 90.0d, 0.0d, 1.0034442014d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLinkR1  &
   adams_id = 3  &
   location = 0.0, 0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLinkL1  &
   adams_id = 4  &
   location = 0.0, -0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.BottLinkR1  &
   adams_id = 5  &
   location = 0.15, 0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.BottLinkL1  &
   adams_id = 6  &
   location = 0.15, -0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.CylL1  &
   adams_id = 7  &
   location = 0.25, -0.525, -0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.CylR1  &
   adams_id = 8  &
   location = 0.25, 0.525, -0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_91  &
   adams_id = 9  &
   location = 0.0, -7.0E-002, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_13  &
   adams_id = 13  &
   location = 0.2, -0.525, -0.55  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLink11  &
   adams_id = 10  &
   location = 0.3, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLink21  &
   adams_id = 11  &
   location = 0.3, 0.0, -5.0E-002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLink31  &
   adams_id = 12  &
   location = 0.3, 0.0, -0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_69  &
   adams_id = 69  &
   location = 0.0, -0.45, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_71  &
   adams_id = 71  &
   location = 0.0, 0.45, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_73  &
   adams_id = 73  &
   location = 0.15, -0.45, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_75  &
   adams_id = 75  &
   location = 0.15, 0.45, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.ChainL  &
   adams_id = 85  &
   location = 0.0, -0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.ChainR  &
   adams_id = 86  &
   location = 0.0, 0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_90  &
   adams_id = 90  &
   location = 0.0, -0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_92  &
   adams_id = 92  &
   location = 0.0, 0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_93  &
   adams_id = 93  &
   location = 0.1147810219, 0.0, -0.3468978102  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.MainBody  &
   material_type = .Model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Model_1.MainBody.BOX_11  &
   adams_id = 1  &
   corner_marker = .Model_1.MainBody.MARKER_11  &
   diag_corner_coords = 0.2, 0.7, 0.9
!
geometry create shape block  &
   block_name = .Model_1.MainBody.BOX_21  &
   adams_id = 2  &
   corner_marker = .Model_1.MainBody.MARKER_91  &
   diag_corner_coords = 0.35, 0.15, 0.14
!
geometry create shape block  &
   block_name = .Model_1.MainBody.BOX_3  &
   adams_id = 3  &
   corner_marker = .Model_1.MainBody.MARKER_13  &
   diag_corner_coords = 0.1, -0.1, 1.05
!
part attributes  &
   part_name = .Model_1.MainBody  &
   color = CYAN  &
   name_visibility = off
!
!---------------------------------- TopLinkR ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.TopLinkR  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.TopLinkR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_2  &
   adams_id = 22  &
   location = 0.0, 0.45, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.cm  &
   adams_id = 23  &
   location = 0.1498642316, 0.5853911821, 0.0  &
   orientation = -89.9999999933d, 76.1682372679d, -179.9999999034d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_3  &
   adams_id = 24  &
   location = -5.0E-002, 0.6, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_4  &
   adams_id = 25  &
   location = 0.2, 0.6, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_5  &
   adams_id = 26  &
   location = 0.2, 0.6, 0.0  &
   orientation = 0.0d, 0.0d, 14.0362434679d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_6  &
   adams_id = 27  &
   location = 0.4, 0.65, 0.0  &
   orientation = 0.0d, 0.0d, 14.0362434679d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_7  &
   adams_id = 28  &
   location = 0.4, 0.65, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_8  &
   adams_id = 29  &
   location = 0.5, 0.65, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.Mkr_CylMount  &
   adams_id = 48  &
   location = 0.33, 0.635, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_72  &
   adams_id = 72  &
   location = 0.0, 0.45, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkR.MARKER_83  &
   adams_id = 83  &
   location = 0.5, 0.65, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.TopLinkR  &
   material_type = .Model_1.steel_2
!
! ****** Points for current part ******
!
point create  &
   point_name = .Model_1.TopLinkR.POINT_2  &
   location = 0.2, 0.6, 0.0
!
point create  &
   point_name = .Model_1.TopLinkR.POINT_3  &
   location = 0.4, 0.65, 0.0
!
point create  &
   point_name = .Model_1.TopLinkR.POINT_4  &
   location = 0.5, 0.65, 0.0
!
point create  &
   point_name = .Model_1.TopLinkR.POINT_1  &
   location = -5.0E-002, 0.6, 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.TopLinkR.CYLINDER_1  &
   adams_id = 40  &
   center_marker = .Model_1.TopLinkR.MARKER_2  &
   angle_extent = 360.0  &
   length = -0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .Model_1.TopLinkR.LINK_6  &
   i_marker = .Model_1.TopLinkR.MARKER_3  &
   j_marker = .Model_1.TopLinkR.MARKER_4  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.TopLinkR.LINK_7  &
   i_marker = .Model_1.TopLinkR.MARKER_5  &
   j_marker = .Model_1.TopLinkR.MARKER_6  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.TopLinkR.LINK_8  &
   i_marker = .Model_1.TopLinkR.MARKER_7  &
   j_marker = .Model_1.TopLinkR.MARKER_8  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .Model_1.TopLinkR  &
   color = MAIZE  &
   name_visibility = off
!
!--------------------------------- LowerLinkL ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.LowerLinkL  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.LowerLinkL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_30  &
   adams_id = 30  &
   location = 0.15, -0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_31  &
   adams_id = 31  &
   location = 0.25, -0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.cm  &
   adams_id = 97  &
   location = 0.5149924874, -0.6427490352, -0.7  &
   orientation = 89.999999988d, 58.3467785901d, 7.2171044101E-008d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_32  &
   adams_id = 32  &
   location = 0.25, -0.45, -0.7  &
   orientation = 0.0d, 0.0d, -37.8749836511d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_33  &
   adams_id = 33  &
   location = 0.7, -0.8, -0.7  &
   orientation = 0.0d, 0.0d, -37.8749836511d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_34  &
   adams_id = 34  &
   location = 0.7, -0.8, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_35  &
   adams_id = 35  &
   location = 0.9, -0.8, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_74  &
   adams_id = 74  &
   location = 0.15, -0.45, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_77  &
   adams_id = 77  &
   location = 0.5, -0.65, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.Chain  &
   adams_id = 87  &
   location = 0.4631250987, -0.6157639656, -0.7  &
   orientation = 89.999999988d, 58.3467785901d, 7.2171044101E-008d
!
marker create  &
   marker_name = .Model_1.LowerLinkL.MARKER_89  &
   adams_id = 89  &
   location = 0.4631250987, -0.6157639656, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.LowerLinkL  &
   material_type = .Model_1.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .Model_1.LowerLinkL.POINT_51  &
   location = 0.15, -0.45, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkL.POINT_52  &
   location = 0.25, -0.45, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkL.POINT_53  &
   location = 0.7, -0.8, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkL.POINT_54  &
   location = 0.9, -0.8, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkL.LinkagePoint  &
   location = 0.5, -0.65, -0.7
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Model_1.LowerLinkL.LINK_54  &
   i_marker = .Model_1.LowerLinkL.MARKER_30  &
   j_marker = .Model_1.LowerLinkL.MARKER_31  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.LowerLinkL.LINK_55  &
   i_marker = .Model_1.LowerLinkL.MARKER_32  &
   j_marker = .Model_1.LowerLinkL.MARKER_33  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.LowerLinkL.LINK_56  &
   i_marker = .Model_1.LowerLinkL.MARKER_34  &
   j_marker = .Model_1.LowerLinkL.MARKER_35  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .Model_1.LowerLinkL  &
   color = MAGENTA  &
   name_visibility = off
!
!---------------------------------- TopLinkL ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.TopLinkL  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.TopLinkL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_2  &
   adams_id = 15  &
   location = 0.0, -0.45, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.cm  &
   adams_id = 96  &
   location = 0.1498642316, -0.5853911821, 0.0  &
   orientation = 89.999999993d, 76.1682372679d, -6.8433127589E-009d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_3  &
   adams_id = 16  &
   location = -5.0E-002, -0.6, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_4  &
   adams_id = 17  &
   location = 0.2, -0.6, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_5  &
   adams_id = 18  &
   location = 0.2, -0.6, 0.0  &
   orientation = 0.0d, 0.0d, -14.0362434679d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_6  &
   adams_id = 19  &
   location = 0.4, -0.65, 0.0  &
   orientation = 0.0d, 0.0d, -14.0362434679d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_7  &
   adams_id = 20  &
   location = 0.4, -0.65, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_8  &
   adams_id = 21  &
   location = 0.5, -0.65, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.Mkr_CylMount  &
   adams_id = 47  &
   location = 0.33, -0.635, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_70  &
   adams_id = 70  &
   location = 0.0, -0.45, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.TopLinkL.MARKER_79  &
   adams_id = 79  &
   location = 0.5, -0.65, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.TopLinkL  &
   material_type = .Model_1.steel_2
!
! ****** Points for current part ******
!
point create  &
   point_name = .Model_1.TopLinkL.POINT_2  &
   location = 0.2, -0.6, 0.0
!
point create  &
   point_name = .Model_1.TopLinkL.POINT_3  &
   location = 0.4, -0.65, 0.0
!
point create  &
   point_name = .Model_1.TopLinkL.POINT_4  &
   location = 0.5, -0.65, 0.0
!
point create  &
   point_name = .Model_1.TopLinkL.POINT_1  &
   location = -5.0E-002, -0.6, 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.TopLinkL.CYLINDER_1  &
   adams_id = 4  &
   center_marker = .Model_1.TopLinkL.MARKER_2  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .Model_1.TopLinkL.LINK_6  &
   i_marker = .Model_1.TopLinkL.MARKER_3  &
   j_marker = .Model_1.TopLinkL.MARKER_4  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.TopLinkL.LINK_7  &
   i_marker = .Model_1.TopLinkL.MARKER_5  &
   j_marker = .Model_1.TopLinkL.MARKER_6  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.TopLinkL.LINK_8  &
   i_marker = .Model_1.TopLinkL.MARKER_7  &
   j_marker = .Model_1.TopLinkL.MARKER_8  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .Model_1.TopLinkL  &
   color = MAIZE  &
   visibility = on  &
   name_visibility = off
!
!--------------------------------- LowerLinkR ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.LowerLinkR  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.LowerLinkR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.LowerLinkR.cm  &
   adams_id = 36  &
   location = 0.5149924874, 0.6427490352, -0.7  &
   orientation = -89.999999988d, 58.3467785901d, 179.9999999804d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_30  &
   adams_id = 37  &
   location = 0.15, 0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_31  &
   adams_id = 38  &
   location = 0.25, 0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_32  &
   adams_id = 39  &
   location = 0.25, 0.45, -0.7  &
   orientation = 0.0d, 0.0d, 37.8749836511d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_33  &
   adams_id = 40  &
   location = 0.7, 0.8, -0.7  &
   orientation = 0.0d, 0.0d, 37.8749836511d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_34  &
   adams_id = 41  &
   location = 0.7, 0.8, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_35  &
   adams_id = 42  &
   location = 0.9, 0.8, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_76  &
   adams_id = 76  &
   location = 0.15, 0.45, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_81  &
   adams_id = 81  &
   location = 0.5, 0.65, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.Chain  &
   adams_id = 88  &
   location = 0.4631250987, 0.6157639656, -0.7  &
   orientation = -89.999999988d, 58.3467785901d, 179.9999999804d
!
marker create  &
   marker_name = .Model_1.LowerLinkR.MARKER_91  &
   adams_id = 91  &
   location = 0.4631250987, 0.6157639656, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.LowerLinkR  &
   material_type = .Model_1.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .Model_1.LowerLinkR.POINT_51  &
   location = 0.15, 0.45, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkR.POINT_52  &
   location = 0.25, 0.45, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkR.POINT_53  &
   location = 0.7, 0.8, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkR.POINT_54  &
   location = 0.9, 0.8, -0.7
!
point create  &
   point_name = .Model_1.LowerLinkR.LinkagePoint  &
   location = 0.5, 0.65, -0.7
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Model_1.LowerLinkR.LINK_54  &
   i_marker = .Model_1.LowerLinkR.MARKER_30  &
   j_marker = .Model_1.LowerLinkR.MARKER_31  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.LowerLinkR.LINK_55  &
   i_marker = .Model_1.LowerLinkR.MARKER_32  &
   j_marker = .Model_1.LowerLinkR.MARKER_33  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .Model_1.LowerLinkR.LINK_56  &
   i_marker = .Model_1.LowerLinkR.MARKER_34  &
   j_marker = .Model_1.LowerLinkR.MARKER_35  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .Model_1.LowerLinkR  &
   color = MAGENTA  &
   name_visibility = off
!
!---------------------------------- LinkageL ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.LinkageL  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.LinkageL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.LinkageL.MARKER_43  &
   adams_id = 43  &
   location = 0.5, -0.65, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LinkageL.MARKER_44  &
   adams_id = 44  &
   location = 0.5, -0.65, -0.7  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LinkageL.cm  &
   adams_id = 99  &
   location = 0.5, -0.65, -0.35  &
   orientation = 180.0d, 0.0d, -89.9999881099d
!
marker create  &
   marker_name = .Model_1.LinkageL.MARKER_78  &
   adams_id = 78  &
   location = 0.5, -0.65, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LinkageL.MARKER_80  &
   adams_id = 80  &
   location = 0.5, -0.65, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.LinkageL  &
   material_type = .Model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Model_1.LinkageL.LINK_92  &
   i_marker = .Model_1.LinkageL.MARKER_43  &
   j_marker = .Model_1.LinkageL.MARKER_44  &
   width = 5.0E-002  &
   depth = 5.0E-002
!
part attributes  &
   part_name = .Model_1.LinkageL  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------------- LinkageR ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.LinkageR  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.LinkageR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.LinkageR.MARKER_45  &
   adams_id = 45  &
   location = 0.5, 0.65, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LinkageR.MARKER_46  &
   adams_id = 46  &
   location = 0.5, 0.65, -0.7  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LinkageR.cm  &
   adams_id = 100  &
   location = 0.5, 0.65, -0.35  &
   orientation = 180.0d, 0.0d, -89.9999881099d
!
marker create  &
   marker_name = .Model_1.LinkageR.MARKER_82  &
   adams_id = 82  &
   location = 0.5, 0.65, -0.7  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.LinkageR.MARKER_84  &
   adams_id = 84  &
   location = 0.5, 0.65, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.LinkageR  &
   material_type = .Model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Model_1.LinkageR.LINK_94  &
   i_marker = .Model_1.LinkageR.MARKER_45  &
   j_marker = .Model_1.LinkageR.MARKER_46  &
   width = 5.0E-002  &
   depth = 5.0E-002
!
part attributes  &
   part_name = .Model_1.LinkageR  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchL_cyl -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.PART_Cyl_HitchL_cyl  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.PART_Cyl_HitchL_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master  &
   adams_id = 49  &
   location = 0.25, -0.525, -0.5  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cm  &
   adams_id = 50  &
   location = 0.2637361272, -0.5438871749, -0.414149205  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_2  &
   adams_id = 51  &
   location = 0.2525154332, -0.451709425, -0.4842785428  &
   orientation = 102.1069652012d, -1.9220098262d, -8.8864325542d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_6  &
   adams_id = 52  &
   location = 0.25, -0.525, -0.5  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_11  &
   adams_id = 53  &
   location = 0.25, -0.525, -0.5  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.PART_Cyl_HitchL_cyl  &
   material_type = .Model_1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_cyl.CYLINDER  &
   adams_id = 92  &
   center_marker = .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master  &
   angle_extent = 360.0  &
   length = 0.275  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_cyl.CYLINDER_2  &
   adams_id = 93  &
   center_marker = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Model_1.PART_Cyl_HitchL_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchL_pis -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.PART_Cyl_HitchL_pis  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.PART_Cyl_HitchL_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave  &
   adams_id = 54  &
   location = 0.33, -0.635, 0.0  &
   orientation = -167.5925814726d, -8.8813926566d, 1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cm  &
   adams_id = 55  &
   location = 0.3192216037, -0.6201797051, -6.7364976985E-002  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_4  &
   adams_id = 56  &
   location = 0.3274845668, -0.708290575, -1.572145719E-002  &
   orientation = -77.8930347988d, 1.9220098262d, 8.8864325542d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_5  &
   adams_id = 57  &
   location = 0.33, -0.635, 0.0  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_12  &
   adams_id = 58  &
   location = 0.25, -0.525, -0.5  &
   orientation = 12.4074185274d, 8.8813926566d, -1.9453431856d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.PART_Cyl_HitchL_pis  &
   material_type = .Model_1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_pis.CYLINDER_3  &
   adams_id = 94  &
   center_marker = .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_pis.CYLINDER_4  &
   adams_id = 95  &
   center_marker = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Model_1.PART_Cyl_HitchL_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchR_cyl -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.PART_Cyl_HitchR_cyl  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.PART_Cyl_HitchR_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master  &
   adams_id = 59  &
   location = 0.25, 0.525, -0.5  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cm  &
   adams_id = 60  &
   location = 0.2637361272, 0.5438871749, -0.414149205  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_2  &
   adams_id = 61  &
   location = 0.2474845668, 0.598290575, -0.5157214572  &
   orientation = 77.8930347988d, 1.9220098262d, -8.8864325542d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_6  &
   adams_id = 62  &
   location = 0.25, 0.525, -0.5  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_11  &
   adams_id = 63  &
   location = 0.25, 0.525, -0.5  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.PART_Cyl_HitchR_cyl  &
   material_type = .Model_1.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_cyl.CYLINDER  &
   adams_id = 96  &
   center_marker = .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master  &
   angle_extent = 360.0  &
   length = 0.275  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_cyl.CYLINDER_2  &
   adams_id = 97  &
   center_marker = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Model_1.PART_Cyl_HitchR_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchR_pis -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Model_1.PART_Cyl_HitchR_pis  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.PART_Cyl_HitchR_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave  &
   adams_id = 64  &
   location = 0.33, 0.635, 0.0  &
   orientation = 167.5925814726d, -8.8813926566d, -1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cm  &
   adams_id = 65  &
   location = 0.3192216037, 0.6201797051, -6.7364976985E-002  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_4  &
   adams_id = 66  &
   location = 0.3325154332, 0.561709425, 1.572145719E-002  &
   orientation = -102.1069652012d, -1.9220098262d, 8.8864325542d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_5  &
   adams_id = 67  &
   location = 0.33, 0.635, 0.0  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
marker create  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_12  &
   adams_id = 68  &
   location = 0.25, 0.525, -0.5  &
   orientation = -12.4074185274d, 8.8813926566d, 1.9453431856d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.PART_Cyl_HitchR_pis  &
   material_type = .Model_1.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_pis.CYLINDER_3  &
   adams_id = 98  &
   center_marker = .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_pis.CYLINDER_4  &
   adams_id = 99  &
   center_marker = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Model_1.PART_Cyl_HitchR_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- Equations ----------------------------------!
!
!
part create equation differential_equation  &
   differential_equation_name = .Model_1.DIFF_cyl_HitchL_ForceStatic  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .Model_1.DIFF_cyl_HitchR_ForceStatic  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .Model_1.Jt_HitchL_Pis  &
   adams_id = 13  &
   i_marker_name = .Model_1.TopLinkL.Mkr_CylMount  &
   j_marker_name = .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave
!
constraint attributes  &
   constraint_name = .Model_1.Jt_HitchL_Pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .Model_1.JT_Cyl_HitchL_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_11  &
   j_marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .Model_1.JT_Cyl_HitchL_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.Jt_HitchL_Cyl  &
   adams_id = 14  &
   i_marker_name = .Model_1.MainBody.CylL1  &
   j_marker_name = .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master
!
constraint attributes  &
   constraint_name = .Model_1.Jt_HitchL_Cyl  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.Jt_HitchR_Pis  &
   adams_id = 15  &
   i_marker_name = .Model_1.TopLinkR.Mkr_CylMount  &
   j_marker_name = .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave
!
constraint attributes  &
   constraint_name = .Model_1.Jt_HitchR_Pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .Model_1.JT_Cyl_HitchR_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_11  &
   j_marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .Model_1.JT_Cyl_HitchR_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.Jt_HitchR_Cyl  &
   adams_id = 16  &
   i_marker_name = .Model_1.MainBody.CylR1  &
   j_marker_name = .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master
!
constraint attributes  &
   constraint_name = .Model_1.Jt_HitchR_Cyl  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Model_1.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .Model_1.MainBody.MARKER_69  &
   j_marker_name = .Model_1.TopLinkL.MARKER_70
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_4  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Model_1.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .Model_1.MainBody.MARKER_71  &
   j_marker_name = .Model_1.TopLinkR.MARKER_72
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_5  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .Model_1.MainBody.MARKER_73  &
   j_marker_name = .Model_1.LowerLinkL.MARKER_74
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_6  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .Model_1.MainBody.MARKER_75  &
   j_marker_name = .Model_1.LowerLinkR.MARKER_76
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_7  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .Model_1.LowerLinkL.MARKER_77  &
   j_marker_name = .Model_1.LinkageL.MARKER_78
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_8  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .Model_1.TopLinkL.MARKER_79  &
   j_marker_name = .Model_1.LinkageL.MARKER_80
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_9  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .Model_1.LowerLinkR.MARKER_81  &
   j_marker_name = .Model_1.LinkageR.MARKER_82
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_10  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Model_1.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .Model_1.TopLinkR.MARKER_83  &
   j_marker_name = .Model_1.LinkageR.MARKER_84
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_11  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Model_1.JOINT_12  &
   adams_id = 12  &
   i_marker_name = .Model_1.MainBody.MARKER_93  &
   j_marker_name = .Model_1.ground.MARKER_94
!
constraint attributes  &
   constraint_name = .Model_1.JOINT_12  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .Model_1.SFORCE_ChainL  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .Model_1.LowerLinkL.MARKER_89  &
   j_marker_name = .Model_1.MainBody.MARKER_90  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Model_1.F_Cyl_HitchL_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_5  &
   j_marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Model_1.F_Cyl_HitchR_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_5  &
   j_marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Model_1.SFORCE_ChainR  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .Model_1.LowerLinkR.MARKER_91  &
   j_marker_name = .Model_1.MainBody.MARKER_92  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Model_1.Last_Sim  &
   commands = "simulation single_run equilibrium model_name=.Model_1"
!
simulation script create  &
   sim_script_name = .Model_1.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry create shape force  &
   force_name = .Model_1.SFORCE_3_force_graphic_1  &
   adams_id = 100  &
   force_element_name = .Model_1.SFORCE_ChainL  &
   applied_at_marker_name = .Model_1.LowerLinkL.MARKER_89
!
geometry create shape force  &
   force_name = .Model_1.SFORCE_4_force_graphic_1  &
   adams_id = 101  &
   force_element_name = .Model_1.SFORCE_ChainR  &
   applied_at_marker_name = .Model_1.LowerLinkR.MARKER_91
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = -9.80665
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Model_1.DV_TopLinkWidth  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .Model_1.DV_CylMountBodyWidth  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.05
!
variable create  &
   variable_name = .Model_1.DV_BottLinkMountWidth  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .Model_1.DV_CylMountBodyOffset  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .Model_1.DV_BottLinkMountOffset  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.7
!
variable create  &
   variable_name = .Model_1.DV_TopLinkOffsetX  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .Model_1.DV_TopLink1OffsetZ  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .Model_1.DV_TopLink2OffsetZ  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .Model_1.DV_TopLink3OffsetZ  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .Model_1.DV_BottLinkMountOffsetX  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .Model_1.DV_CylMountOffsetX  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .Model_1.DV_L1  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .Model_1.DV_R1  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.5E-002
!
variable create  &
   variable_name = .Model_1.DV_L2  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .Model_1.DV_L3  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .Model_1.DV_L4  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .Model_1.DV_L5  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .Model_1.DV_L6  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchL_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchL_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.5E-002
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchL_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchL_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5181
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchL_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchR_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchR_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.5E-002
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchR_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchR_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5181
!
variable create  &
   variable_name = .Model_1.DV_Cyl_HitchR_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .Model_1.DV_ChainX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .Model_1.DV_ChainY  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .Model_1.DV_ChainZ  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .Model_1.DV_LowerLinkChain  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.27
!
variable create  &
   variable_name = .Model_1.DV_ChainMax  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .Model_1.DV_ChainMin  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Model_1.SV_Cyl_HitchL_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Model_1.SV_Cyl_HitchL_P  &
   function = "DZ( .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master)"
!
data_element modify variable  &
   variable_name = .Model_1.SV_Cyl_HitchL_V  &
   function = "VZ( .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master)"
!
data_element modify variable  &
   variable_name = .Model_1.SV_cyl_HitchL_Fstatic  &
   function = "DIF(.Model_1.DIFF_cyl_HitchL_ForceStatic)"
!
data_element modify variable  &
   variable_name = .Model_1.SV_cyl_HitchL_pa  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Model_1.SV_cyl_HitchL_pb  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Model_1.SV_Cyl_HitchR_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Model_1.SV_Cyl_HitchR_P  &
   function = "DZ( .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master)"
!
data_element modify variable  &
   variable_name = .Model_1.SV_Cyl_HitchR_V  &
   function = "VZ( .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master)"
!
data_element modify variable  &
   variable_name = .Model_1.SV_cyl_HitchR_Fstatic  &
   function = "DIF(.Model_1.DIFF_cyl_HitchR_ForceStatic)"
!
data_element modify variable  &
   variable_name = .Model_1.SV_cyl_HitchR_pa  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Model_1.SV_cyl_HitchR_pb  &
   function = "0"
!
part modify equation differential_equation  &
   differential_equation_name = .Model_1.DIFF_cyl_HitchL_ForceStatic  &
   function = "IF(MODE-5:0,1,0)*(.Model_1.DV_Cyl_HitchL_ini_length-DM(.Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))"
!
part modify equation differential_equation  &
   differential_equation_name = .Model_1.DIFF_cyl_HitchR_ForceStatic  &
   function = "IF(MODE-5:0,1,0)*(.Model_1.DV_Cyl_HitchR_ini_length-DM(.Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))"
!
force modify direct single_component_force  &
   single_component_force_name = .Model_1.SFORCE_ChainL  &
   function = "BISTOP( DM(.Model_1.LowerLinkL.Chain, .Model_1.MainBody.ChainL),VR(.Model_1.LowerLinkL.Chain, .Model_1.MainBody.ChainL) , .Model_1.DV_ChainMin , .Model_1.DV_ChainMax , 1e5 , 1.1 , 2.5e3 , 1e-3 )"
!
force modify direct single_component_force  &
   single_component_force_name = .Model_1.F_Cyl_HitchL_force  &
   function = "VARVAL( .Model_1.SV_Cyl_HitchL_F) + ",  &
              "BISTOP( ",  &
              "DZ( .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master) , ",  &
              "VZ( .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master) , ",  &
              ".Model_1.DV_Cyl_HitchL_min_length , .Model_1.DV_Cyl_HitchL_max_length , 50e6 , 1.0 , 20e6 , 0.01 ) +",  &
              "VARVAL(.Model_1.SV_cyl_HitchL_Fstatic)*IF(MODE-5:0,1,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .Model_1.F_Cyl_HitchR_force  &
   function = "VARVAL( .Model_1.SV_Cyl_HitchR_F) + ",  &
              "BISTOP( ",  &
              "DZ( .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master) , ",  &
              "VZ( .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master) , ",  &
              ".Model_1.DV_Cyl_HitchR_min_length , .Model_1.DV_Cyl_HitchR_max_length , 50e6 , 1.0 , 20e6 , 0.01 ) +",  &
              "VARVAL(.Model_1.SV_cyl_HitchR_Fstatic)*IF(MODE-5:0,1,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .Model_1.SFORCE_ChainR  &
   function = "BISTOP( DM(.Model_1.LowerLinkR.Chain, .Model_1.MainBody.ChainR),VR(.Model_1.LowerLinkR.Chain, .Model_1.MainBody.ChainR) ,.Model_1.DV_ChainMin , .Model_1.DV_ChainMax  , 1e5 , 1.1 , 2.5e3 , 1e-3 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .Model_1.MainBody.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.MainBody.TopLinkL1))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape block  &
   block_name = .Model_1.MainBody.BOX_11  &
   diag_corner_coords =   &
      (0.2meter),  &
      (.Model_1.DV_BottLinkMountOffset),  &
      (.Model_1.DV_BottLinkMountWidth)
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLinkR1  &
   location =   &
      (LOC_RELATIVE_TO({0, .Model_1.DV_TopLinkWidth / 2, 0}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLinkL1  &
   location =   &
      (LOC_RELATIVE_TO({0, -.Model_1.DV_TopLinkWidth / 2, 0}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.BottLinkR1  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_BottLinkMountOffsetX, .Model_1.DV_BottLinkMountWidth / 2, -.Model_1.DV_BottLinkMountOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.BottLinkL1  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_BottLinkMountOffsetX, -.Model_1.DV_BottLinkMountWidth / 2, -.Model_1.DV_BottLinkMountOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.CylL1  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_CylMountOffsetX, -.Model_1.DV_CylMountBodyWidth / 2, -.Model_1.DV_CylMountBodyOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.CylR1  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_CylMountOffsetX, .Model_1.DV_CylMountBodyWidth / 2, -.Model_1.DV_CylMountBodyOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLink11  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_TopLinkOffsetX, 0, -.Model_1.DV_TopLink1OffsetZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLink21  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_TopLinkOffsetX, 0, -.Model_1.DV_TopLink2OffsetZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLink31  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_TopLinkOffsetX, 0, -.Model_1.DV_TopLink3OffsetZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.MARKER_91  &
   location =   &
      (LOC_RELATIVE_TO({0, -7.0E-002, 0}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape block  &
   block_name = .Model_1.MainBody.BOX_21  &
   diag_corner_coords =   &
      (.Model_1.DV_TopLinkOffsetX + 5.0E-002),  &
      0.15,  &
      0.14
!
marker modify  &
   marker_name = .Model_1.MainBody.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, -5.0E-002}, .Model_1.MainBody.CylL1))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape block  &
   block_name = .Model_1.MainBody.BOX_3  &
   diag_corner_coords =   &
      (.Model_1.DV_CylMountOffsetX - .Model_1.DV_BottLinkMountOffsetX),  &
      (-0.1meter),  &
      (.Model_1.DV_CylMountBodyWidth)
!
marker modify  &
   marker_name = .Model_1.MainBody.ChainL  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_ChainX, -.Model_1.DV_ChainY / 2, -.Model_1.DV_ChainZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.ChainR  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_ChainX, .Model_1.DV_ChainY / 2, -.Model_1.DV_ChainZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
material modify  &
   material_name = .Model_1.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.MainBody.TopLinkL1))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Model_1.MainBody.TopLinkL1))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_1))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_1, .Model_1.TopLinkL.POINT_2, "X"))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.MARKER_3))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_2))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_2, .Model_1.TopLinkL.POINT_3, "X"))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_2, .Model_1.TopLinkL.POINT_3, "X"))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_3, .Model_1.TopLinkL.POINT_4, "X"))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_3, .Model_1.TopLinkL.POINT_4, "X"))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.TopLinkL.CYLINDER_1  &
   length = (.Model_1.DV_L1)  &
   radius = (.Model_1.DV_R1)
!
geometry modify shape link  &
   link_name = .Model_1.TopLinkL.LINK_6  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .Model_1.TopLinkL.LINK_7  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .Model_1.TopLinkL.LINK_8  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.TopLinkL.Mkr_CylMount  &
   location =   &
      (LOC_RELATIVE_TO({0.33, 0, 0.185}, .Model_1.TopLinkL.MARKER_2))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkL.MARKER_79  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_4))  &
   relative_to = .Model_1.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.MainBody.TopLinkR1))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Model_1.MainBody.TopLinkR1))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_1))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_1, .Model_1.TopLinkR.POINT_2, "X"))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.MARKER_3))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_2))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_2, .Model_1.TopLinkR.POINT_3, "X"))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_2, .Model_1.TopLinkR.POINT_3, "X"))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_3, .Model_1.TopLinkR.POINT_4, "X"))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_3, .Model_1.TopLinkR.POINT_4, "X"))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.TopLinkR.CYLINDER_1  &
   length = (-.Model_1.DV_L1)  &
   radius = (.Model_1.DV_R1)
!
geometry modify shape link  &
   link_name = .Model_1.TopLinkR.LINK_6  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .Model_1.TopLinkR.LINK_7  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .Model_1.TopLinkR.LINK_8  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.TopLinkR.Mkr_CylMount  &
   location =   &
      (LOC_RELATIVE_TO({0.33, 0, -0.185}, .Model_1.TopLinkR.MARKER_2))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.TopLinkR.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_4))  &
   relative_to = .Model_1.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.POINT_51))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkL.POINT_51, .Model_1.LowerLinkL.POINT_52, "X"))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkL.POINT_51, .Model_1.LowerLinkL.POINT_52, "X"))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LowerLinkL.LINK_54  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkL.POINT_52, .Model_1.LowerLinkL.POINT_53, "X"))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkL.POINT_52, .Model_1.LowerLinkL.POINT_53, "X"))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LowerLinkL.LINK_55  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkL.POINT_53, .Model_1.LowerLinkL.POINT_54, "X"))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.POINT_54))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkL.POINT_53, .Model_1.LowerLinkL.POINT_54, "X"))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LowerLinkL.LINK_56  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.MARKER_77  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.LinkagePoint))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkL.Chain  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_LowerLinkChain, 0, 0}, .Model_1.LowerLinkL.MARKER_32))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.cm))  &
   relative_to = .Model_1.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.POINT_51))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkR.POINT_51, .Model_1.LowerLinkR.POINT_52, "X"))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkR.POINT_51, .Model_1.LowerLinkR.POINT_52, "X"))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LowerLinkR.LINK_54  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkR.POINT_52, .Model_1.LowerLinkR.POINT_53, "X"))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkR.POINT_52, .Model_1.LowerLinkR.POINT_53, "X"))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LowerLinkR.LINK_55  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkR.POINT_53, .Model_1.LowerLinkR.POINT_54, "X"))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.POINT_54))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.LowerLinkR.POINT_53, .Model_1.LowerLinkR.POINT_54, "X"))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LowerLinkR.LINK_56  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.MARKER_81  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.LinkagePoint))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LowerLinkR.Chain  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_LowerLinkChain, 0, 0}, .Model_1.LowerLinkR.MARKER_32))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.cm))  &
   relative_to = .Model_1.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LinkageL.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_4, .Model_1.LowerLinkL.LinkagePoint, "X"))  &
   relative_to = .Model_1.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LinkageL.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.LinkagePoint))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkL.POINT_4, .Model_1.LowerLinkL.LinkagePoint, "X"))  &
   relative_to = .Model_1.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LinkageL.LINK_92  &
   width = (5.0cm)  &
   depth = (5.0cm)
!
marker modify  &
   marker_name = .Model_1.LinkageL.MARKER_78  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkL.LinkagePoint))  &
   relative_to = .Model_1.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LinkageL.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.POINT_4))  &
   relative_to = .Model_1.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LinkageR.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_4, .Model_1.LowerLinkR.LinkagePoint, "X"))  &
   relative_to = .Model_1.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LinkageR.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.LinkagePoint))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.TopLinkR.POINT_4, .Model_1.LowerLinkR.LinkagePoint, "X"))  &
   relative_to = .Model_1.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape link  &
   link_name = .Model_1.LinkageR.LINK_94  &
   width = (5.0cm)  &
   depth = (5.0cm)
!
marker modify  &
   marker_name = .Model_1.LinkageR.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.LowerLinkR.LinkagePoint))  &
   relative_to = .Model_1.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.LinkageR.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.POINT_4))  &
   relative_to = .Model_1.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
material modify  &
   material_name = .Model_1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .Model_1.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.MainBody.CylL1))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.MainBody.CylL1, .Model_1.TopLinkL.Mkr_CylMount, "z"))  &
   relative_to = .Model_1.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .Model_1.DV_Cyl_HitchL_rc, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_cyl.CYLINDER  &
   length = (.Model_1.DV_Cyl_HitchL_min_length - .Model_1.DV_Cyl_HitchL_rc)  &
   radius = (.Model_1.DV_Cyl_HitchL_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_cyl.CYLINDER_2  &
   length = (.Model_1.DV_Cyl_HitchL_rc * 2)  &
   radius = (.Model_1.DV_Cyl_HitchL_rc)
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkL.Mkr_CylMount))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .Model_1.DV_Cyl_HitchL_rc, 0}, .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave))  &
   relative_to = .Model_1.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchL_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_pis.CYLINDER_3  &
   length = (.Model_1.DV_Cyl_HitchL_min_length)  &
   radius = (.Model_1.DV_Cyl_HitchL_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchL_pis.CYLINDER_4  &
   length = (.Model_1.DV_Cyl_HitchL_rc * 2)  &
   radius = (.Model_1.DV_Cyl_HitchL_rc)
!
material modify  &
   material_name = .Model_1.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.MainBody.CylR1))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Model_1.MainBody.CylR1, .Model_1.TopLinkR.Mkr_CylMount, "z"))  &
   relative_to = .Model_1.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .Model_1.DV_Cyl_HitchR_rc, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_cyl.CYLINDER  &
   length = (.Model_1.DV_Cyl_HitchR_min_length - .Model_1.DV_Cyl_HitchR_rc)  &
   radius = (.Model_1.DV_Cyl_HitchR_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_cyl.CYLINDER_2  &
   length = (.Model_1.DV_Cyl_HitchR_rc * 2)  &
   radius = (.Model_1.DV_Cyl_HitchR_rc)
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.TopLinkR.Mkr_CylMount))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .Model_1.DV_Cyl_HitchR_rc, 0}, .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave))  &
   relative_to = .Model_1.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.PART_Cyl_HitchR_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Model_1.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .Model_1.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_pis.CYLINDER_3  &
   length = (.Model_1.DV_Cyl_HitchR_min_length)  &
   radius = (.Model_1.DV_Cyl_HitchR_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .Model_1.PART_Cyl_HitchR_pis.CYLINDER_4  &
   length = (.Model_1.DV_Cyl_HitchR_rc * 2)  &
   radius = (.Model_1.DV_Cyl_HitchR_rc)
!
geometry modify shape force  &
   force_name = .Model_1.SFORCE_3_force_graphic_1  &
   applied_at_marker_name = (.Model_1.SFORCE_ChainL.i)
!
geometry modify shape force  &
   force_name = .Model_1.SFORCE_4_force_graphic_1  &
   applied_at_marker_name = (.Model_1.SFORCE_ChainR.i)
!
model display  &
   model_name = Model_1
