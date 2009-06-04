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
   orientation_type = body313
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
   model_name = RearHitch
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .RearHitch.SV_Cyl_HitchL_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_Cyl_HitchL_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_Cyl_HitchL_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_cyl_HitchL_Fstatic  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_cyl_HitchL_pa  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_cyl_HitchL_pb  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_Cyl_HitchR_F  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_Cyl_HitchR_P  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_Cyl_HitchR_V  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_cyl_HitchR_Fstatic  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_cyl_HitchR_pa  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RearHitch.SV_cyl_HitchR_pb  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .RearHitch.steel  &
   adams_id = 4  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .RearHitch.steel_2  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .RearHitch.steel_3  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .RearHitch.steel_4  &
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
   default_coordinate_system = .RearHitch.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.ground.Mkr_master  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
!---------------------------------- MainBody ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.MainBody  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.MainBody
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_11  &
   adams_id = 1  &
   location = 0.0, -0.25, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.cm  &
   adams_id = 95  &
   location = 0.1203436572, -7.3777558469E-003, -0.3808002754  &
   orientation = 0.4388015054d, 98.9820830076d, 0.8147637591d
!
marker create  &
   marker_name = .RearHitch.MainBody.TopLinkR  &
   adams_id = 3  &
   location = 0.0, 0.25, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.TopLinkL  &
   adams_id = 4  &
   location = 0.0, -0.25, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.BottLinkR  &
   adams_id = 5  &
   location = 0.15, 0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.BottLinkL  &
   adams_id = 6  &
   location = 0.15, -0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.CylL  &
   adams_id = 7  &
   location = 0.25, -0.525, -0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.CylR  &
   adams_id = 8  &
   location = 0.25, 0.525, -0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_91  &
   adams_id = 9  &
   location = 0.0, -7.0E-002, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_13  &
   adams_id = 13  &
   location = 0.3, -0.575, -0.55  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.TopLink1  &
   adams_id = 10  &
   location = 0.3, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.TopLink2  &
   adams_id = 11  &
   location = 0.3, 0.0, -5.0E-002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.TopLink3  &
   adams_id = 12  &
   location = 0.3, 0.0, -0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_69  &
   adams_id = 69  &
   location = 0.0, 0.25, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_71  &
   adams_id = 71  &
   location = 0.0, -0.25, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_102  &
   adams_id = 102  &
   location = 0.15, -0.375, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_104  &
   adams_id = 104  &
   location = 0.15, 0.375, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.ChainL  &
   adams_id = 85  &
   location = 0.0, -0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.ChainR  &
   adams_id = 86  &
   location = 0.0, 0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_90  &
   adams_id = 90  &
   location = 0.0, 0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_92  &
   adams_id = 92  &
   location = 0.0, -0.6, -0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.MainBody.MARKER_107  &
   adams_id = 107  &
   location = 0.15, -0.375, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.MainBody  &
   material_type = .RearHitch.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .RearHitch.MainBody.BOX_11  &
   adams_id = 1  &
   corner_marker = .RearHitch.MainBody.MARKER_11  &
   diag_corner_coords = 0.2, 0.5, -0.7
!
geometry create shape block  &
   block_name = .RearHitch.MainBody.BOX_21  &
   adams_id = 2  &
   corner_marker = .RearHitch.MainBody.MARKER_91  &
   diag_corner_coords = 0.35, 0.14, -0.15
!
geometry create shape block  &
   block_name = .RearHitch.MainBody.BOX_3  &
   adams_id = 3  &
   corner_marker = .RearHitch.MainBody.MARKER_13  &
   diag_corner_coords = -0.3, 1.1, 0.1
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.MainBody.CYLINDER_104  &
   adams_id = 104  &
   center_marker = .RearHitch.MainBody.MARKER_107  &
   angle_extent = 360.0  &
   length = 0.75  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .RearHitch.MainBody  &
   color = CYAN  &
   name_visibility = off
!
!---------------------------------- TopLinkR ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.TopLinkR  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.TopLinkR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_2  &
   adams_id = 22  &
   location = 0.0, 0.25, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.cm  &
   adams_id = 23  &
   location = 0.1516501389, 0.3841546951, 0.0  &
   orientation = 103.162971859d, 89.9999999988d, 9.1867837767E-008d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_3  &
   adams_id = 24  &
   location = -5.0E-002, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_4  &
   adams_id = 25  &
   location = 0.2, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_5  &
   adams_id = 26  &
   location = 0.2, 0.4, 0.0  &
   orientation = 11.309932474d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_6  &
   adams_id = 27  &
   location = 0.45, 0.45, 0.0  &
   orientation = 11.309932474d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_7  &
   adams_id = 28  &
   location = 0.45, 0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_8  &
   adams_id = 29  &
   location = 0.5, 0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.Mkr_CylMount  &
   adams_id = 48  &
   location = 0.33, 0.435, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_70  &
   adams_id = 70  &
   location = 0.0, 0.25, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkR.MARKER_83  &
   adams_id = 83  &
   location = 0.5, 0.45, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.TopLinkR  &
   material_type = .RearHitch.steel_2
!
! ****** Points for current part ******
!
point create  &
   point_name = .RearHitch.TopLinkR.POINT_2  &
   location = 0.2, 0.4, 0.0
!
point create  &
   point_name = .RearHitch.TopLinkR.POINT_3  &
   location = 0.45, 0.45, 0.0
!
point create  &
   point_name = .RearHitch.TopLinkR.POINT_4  &
   location = 0.5, 0.45, 0.0
!
point create  &
   point_name = .RearHitch.TopLinkR.POINT_1  &
   location = -5.0E-002, 0.4, 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.TopLinkR.CYLINDER_1  &
   adams_id = 40  &
   center_marker = .RearHitch.TopLinkR.MARKER_2  &
   angle_extent = 360.0  &
   length = -0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .RearHitch.TopLinkR.LINK_6  &
   i_marker = .RearHitch.TopLinkR.MARKER_3  &
   j_marker = .RearHitch.TopLinkR.MARKER_4  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.TopLinkR.LINK_7  &
   i_marker = .RearHitch.TopLinkR.MARKER_5  &
   j_marker = .RearHitch.TopLinkR.MARKER_6  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.TopLinkR.LINK_8  &
   i_marker = .RearHitch.TopLinkR.MARKER_7  &
   j_marker = .RearHitch.TopLinkR.MARKER_8  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .RearHitch.TopLinkR  &
   color = MAIZE  &
   name_visibility = off
!
!--------------------------------- LowerLinkL ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.LowerLinkL  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.LowerLinkL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_30  &
   adams_id = 30  &
   location = 0.15, -0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_31  &
   adams_id = 31  &
   location = 0.25, -0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.cm  &
   adams_id = 97  &
   location = 0.5149924874, -0.5677490352, -0.7  &
   orientation = 58.3467785901d, 89.9999999959d, 4.0197441138E-008d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_101  &
   adams_id = 101  &
   location = 0.15, -0.375, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_32  &
   adams_id = 32  &
   location = 0.25, -0.375, -0.7  &
   orientation = 322.1250163489d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_33  &
   adams_id = 33  &
   location = 0.7, -0.725, -0.7  &
   orientation = 322.1250163489d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_34  &
   adams_id = 34  &
   location = 0.7, -0.725, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_35  &
   adams_id = 35  &
   location = 0.9, -0.725, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_105  &
   adams_id = 105  &
   location = 0.15, -0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_77  &
   adams_id = 77  &
   location = 0.5, -0.585, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.Chain  &
   adams_id = 87  &
   location = 0.4631250987, -0.5407639656, -0.7  &
   orientation = 58.3467785901d, 89.9999999959d, 4.0197441138E-008d
!
marker create  &
   marker_name = .RearHitch.LowerLinkL.MARKER_91  &
   adams_id = 91  &
   location = 0.4631250987, -0.5407639656, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.LowerLinkL  &
   material_type = .RearHitch.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .RearHitch.LowerLinkL.POINT_51  &
   location = 0.15, -0.375, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkL.POINT_52  &
   location = 0.25, -0.375, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkL.POINT_53  &
   location = 0.7, -0.725, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkL.POINT_54  &
   location = 0.9, -0.725, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkL.LinkagePoint  &
   location = 0.5, -0.585, -0.7
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .RearHitch.LowerLinkL.LINK_54  &
   i_marker = .RearHitch.LowerLinkL.MARKER_30  &
   j_marker = .RearHitch.LowerLinkL.MARKER_31  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.LowerLinkL.LINK_55  &
   i_marker = .RearHitch.LowerLinkL.MARKER_32  &
   j_marker = .RearHitch.LowerLinkL.MARKER_33  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.LowerLinkL.LINK_56  &
   i_marker = .RearHitch.LowerLinkL.MARKER_34  &
   j_marker = .RearHitch.LowerLinkL.MARKER_35  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .RearHitch.LowerLinkL  &
   color = MAGENTA  &
   visibility = on  &
   name_visibility = off
!
!---------------------------------- TopLinkL ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.TopLinkL  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.TopLinkL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_2  &
   adams_id = 15  &
   location = 0.0, -0.25, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.cm  &
   adams_id = 96  &
   location = 0.1516501389, -0.3841546951, 0.0  &
   orientation = 76.837028141d, 89.9999999987d, 359.9999999804d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_3  &
   adams_id = 16  &
   location = -5.0E-002, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_4  &
   adams_id = 17  &
   location = 0.2, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_5  &
   adams_id = 18  &
   location = 0.2, -0.4, 0.0  &
   orientation = 348.690067526d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_6  &
   adams_id = 19  &
   location = 0.45, -0.45, 0.0  &
   orientation = 348.690067526d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_7  &
   adams_id = 20  &
   location = 0.45, -0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_8  &
   adams_id = 21  &
   location = 0.5, -0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.Mkr_CylMount  &
   adams_id = 47  &
   location = 0.33, -0.435, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_72  &
   adams_id = 72  &
   location = 0.0, -0.25, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.TopLinkL.MARKER_79  &
   adams_id = 79  &
   location = 0.5, -0.45, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.TopLinkL  &
   material_type = .RearHitch.steel_2
!
! ****** Points for current part ******
!
point create  &
   point_name = .RearHitch.TopLinkL.POINT_2  &
   location = 0.2, -0.4, 0.0
!
point create  &
   point_name = .RearHitch.TopLinkL.POINT_3  &
   location = 0.45, -0.45, 0.0
!
point create  &
   point_name = .RearHitch.TopLinkL.POINT_4  &
   location = 0.5, -0.45, 0.0
!
point create  &
   point_name = .RearHitch.TopLinkL.POINT_1  &
   location = -5.0E-002, -0.4, 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.TopLinkL.CYLINDER_1  &
   adams_id = 4  &
   center_marker = .RearHitch.TopLinkL.MARKER_2  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .RearHitch.TopLinkL.LINK_6  &
   i_marker = .RearHitch.TopLinkL.MARKER_3  &
   j_marker = .RearHitch.TopLinkL.MARKER_4  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.TopLinkL.LINK_7  &
   i_marker = .RearHitch.TopLinkL.MARKER_5  &
   j_marker = .RearHitch.TopLinkL.MARKER_6  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.TopLinkL.LINK_8  &
   i_marker = .RearHitch.TopLinkL.MARKER_7  &
   j_marker = .RearHitch.TopLinkL.MARKER_8  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .RearHitch.TopLinkL  &
   color = MAIZE  &
   visibility = on  &
   name_visibility = off
!
!--------------------------------- LowerLinkR ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.LowerLinkR  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.LowerLinkR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.cm  &
   adams_id = 36  &
   location = 0.5149924874, 0.5677490352, -0.7  &
   orientation = 121.6532214099d, 89.9999999959d, 359.9999999919d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_30  &
   adams_id = 37  &
   location = 0.15, 0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_31  &
   adams_id = 38  &
   location = 0.25, 0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_32  &
   adams_id = 39  &
   location = 0.25, 0.375, -0.7  &
   orientation = 37.8749836511d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_33  &
   adams_id = 40  &
   location = 0.7, 0.725, -0.7  &
   orientation = 37.8749836511d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_34  &
   adams_id = 41  &
   location = 0.7, 0.725, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_35  &
   adams_id = 42  &
   location = 0.9, 0.725, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_103  &
   adams_id = 103  &
   location = 0.15, 0.375, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_81  &
   adams_id = 81  &
   location = 0.5, 0.585, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.Chain  &
   adams_id = 88  &
   location = 0.4631250987, 0.5407639656, -0.7  &
   orientation = 121.6532214099d, 89.9999999959d, 359.9999999919d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_89  &
   adams_id = 89  &
   location = 0.4631250987, 0.5407639656, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RearHitch.LowerLinkR.MARKER_105  &
   adams_id = 106  &
   location = 0.15, 0.375, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.LowerLinkR  &
   material_type = .RearHitch.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .RearHitch.LowerLinkR.POINT_51  &
   location = 0.15, 0.375, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkR.POINT_52  &
   location = 0.25, 0.375, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkR.POINT_53  &
   location = 0.7, 0.725, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkR.POINT_54  &
   location = 0.9, 0.725, -0.7
!
point create  &
   point_name = .RearHitch.LowerLinkR.LinkagePoint  &
   location = 0.5, 0.585, -0.7
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .RearHitch.LowerLinkR.LINK_54  &
   i_marker = .RearHitch.LowerLinkR.MARKER_30  &
   j_marker = .RearHitch.LowerLinkR.MARKER_31  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.LowerLinkR.LINK_55  &
   i_marker = .RearHitch.LowerLinkR.MARKER_32  &
   j_marker = .RearHitch.LowerLinkR.MARKER_33  &
   width = 5.0E-002  &
   depth = 0.14
!
geometry create shape link  &
   link_name = .RearHitch.LowerLinkR.LINK_56  &
   i_marker = .RearHitch.LowerLinkR.MARKER_34  &
   j_marker = .RearHitch.LowerLinkR.MARKER_35  &
   width = 5.0E-002  &
   depth = 0.14
!
part attributes  &
   part_name = .RearHitch.LowerLinkR  &
   color = MAGENTA  &
   name_visibility = off
!
!---------------------------------- LinkageL ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.LinkageL  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.LinkageL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.LinkageL.MARKER_43  &
   adams_id = 43  &
   location = 0.5, -0.45, 0.0  &
   orientation = 90.0d, 90.0d, 259.0841175683d
!
marker create  &
   marker_name = .RearHitch.LinkageL.MARKER_44  &
   adams_id = 44  &
   location = 0.5, -0.585, -0.7  &
   orientation = 90.0d, 90.0d, 259.0841175683d
!
marker create  &
   marker_name = .RearHitch.LinkageL.cm  &
   adams_id = 99  &
   location = 0.5, -0.5175, -0.35  &
   orientation = 7.456551636E-008d, 169.0841175683d, 270.0000115423d
!
marker create  &
   marker_name = .RearHitch.LinkageL.MARKER_78  &
   adams_id = 78  &
   location = 0.5, -0.585, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.LinkageL.MARKER_80  &
   adams_id = 80  &
   location = 0.5, -0.45, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.LinkageL  &
   material_type = .RearHitch.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .RearHitch.LinkageL.LINK_92  &
   i_marker = .RearHitch.LinkageL.MARKER_43  &
   j_marker = .RearHitch.LinkageL.MARKER_44  &
   width = 5.0E-002  &
   depth = 5.0E-002
!
part attributes  &
   part_name = .RearHitch.LinkageL  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------------- LinkageR ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.LinkageR  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.LinkageR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.LinkageR.MARKER_45  &
   adams_id = 45  &
   location = 0.5, 0.45, 0.0  &
   orientation = 90.0d, 90.0d, 280.9158824317d
!
marker create  &
   marker_name = .RearHitch.LinkageR.MARKER_46  &
   adams_id = 46  &
   location = 0.5, 0.585, -0.7  &
   orientation = 90.0d, 90.0d, 280.9158824317d
!
marker create  &
   marker_name = .RearHitch.LinkageR.cm  &
   adams_id = 100  &
   location = 0.5, 0.5175, -0.35  &
   orientation = 179.9999999254d, 169.0841175683d, 90.0000113954d
!
marker create  &
   marker_name = .RearHitch.LinkageR.MARKER_82  &
   adams_id = 82  &
   location = 0.5, 0.585, -0.7  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .RearHitch.LinkageR.MARKER_84  &
   adams_id = 84  &
   location = 0.5, 0.45, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.LinkageR  &
   material_type = .RearHitch.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .RearHitch.LinkageR.LINK_94  &
   i_marker = .RearHitch.LinkageR.MARKER_45  &
   j_marker = .RearHitch.LinkageR.MARKER_46  &
   width = 5.0E-002  &
   depth = 5.0E-002
!
part attributes  &
   part_name = .RearHitch.LinkageR  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchL_cyl -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.PART_Cyl_HitchL_cyl  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.PART_Cyl_HitchL_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master  &
   adams_id = 49  &
   location = 0.25, -0.525, -0.5  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cm  &
   adams_id = 50  &
   location = 0.2638396023, -0.5094304474, -0.4135024855  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_2  &
   adams_id = 51  &
   location = 0.2479264147, -0.4511573225, -0.5129599083  &
   orientation = 1.608507139d, 80.0494140724d, 350.7696867135d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_6  &
   adams_id = 52  &
   location = 0.25, -0.525, -0.5  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_11  &
   adams_id = 53  &
   location = 0.25, -0.525, -0.5  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.PART_Cyl_HitchL_cyl  &
   material_type = .RearHitch.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_cyl.CYLINDER  &
   adams_id = 92  &
   center_marker = .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master  &
   angle_extent = 360.0  &
   length = 0.275  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_cyl.CYLINDER_2  &
   adams_id = 93  &
   center_marker = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .RearHitch.PART_Cyl_HitchL_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchL_pis -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.PART_Cyl_HitchL_pis  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.PART_Cyl_HitchL_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave  &
   adams_id = 54  &
   location = 0.33, -0.435, 0.0  &
   orientation = 318.3664606634d, 166.4592072731d, 317.5632198117d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cm  &
   adams_id = 55  &
   location = 0.3191404093, -0.4472170395, -6.7872441611E-002  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_4  &
   adams_id = 56  &
   location = 0.3320735853, -0.5088426775, 1.2959908298E-002  &
   orientation = 181.608507139d, 99.9505859276d, 189.2303132865d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_5  &
   adams_id = 57  &
   location = 0.33, -0.435, 0.0  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_12  &
   adams_id = 58  &
   location = 0.25, -0.525, -0.5  &
   orientation = 138.3664606634d, 13.5407927269d, 222.4367801883d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.PART_Cyl_HitchL_pis  &
   material_type = .RearHitch.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_pis.CYLINDER_3  &
   adams_id = 94  &
   center_marker = .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_pis.CYLINDER_4  &
   adams_id = 95  &
   center_marker = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .RearHitch.PART_Cyl_HitchL_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchR_cyl -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.PART_Cyl_HitchR_cyl  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.PART_Cyl_HitchR_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master  &
   adams_id = 59  &
   location = 0.25, 0.525, -0.5  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cm  &
   adams_id = 60  &
   location = 0.2638396023, 0.5094304474, -0.4135024855  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_2  &
   adams_id = 61  &
   location = 0.2520735853, 0.5988426775, -0.4870400917  &
   orientation = 358.391492861d, 99.9505859276d, 350.7696867135d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_6  &
   adams_id = 62  &
   location = 0.25, 0.525, -0.5  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_11  &
   adams_id = 63  &
   location = 0.25, 0.525, -0.5  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.PART_Cyl_HitchR_cyl  &
   material_type = .RearHitch.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_cyl.CYLINDER  &
   adams_id = 96  &
   center_marker = .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master  &
   angle_extent = 360.0  &
   length = 0.275  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_cyl.CYLINDER_2  &
   adams_id = 97  &
   center_marker = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .RearHitch.PART_Cyl_HitchR_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_HitchR_pis -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
part create rigid_body name_and_position  &
   part_name = .RearHitch.PART_Cyl_HitchR_pis  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.PART_Cyl_HitchR_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave  &
   adams_id = 64  &
   location = 0.33, 0.435, 0.0  &
   orientation = 221.6335393366d, 166.4592072731d, 222.4367801883d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cm  &
   adams_id = 65  &
   location = 0.3191404093, 0.4472170395, -6.7872441611E-002  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_4  &
   adams_id = 66  &
   location = 0.3279264147, 0.3611573225, -1.2959908298E-002  &
   orientation = 178.391492861d, 80.0494140724d, 189.2303132865d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_5  &
   adams_id = 67  &
   location = 0.33, 0.435, 0.0  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
marker create  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_12  &
   adams_id = 68  &
   location = 0.25, 0.525, -0.5  &
   orientation = 41.6335393366d, 13.5407927269d, 317.5632198117d
!
part create rigid_body mass_properties  &
   part_name = .RearHitch.PART_Cyl_HitchR_pis  &
   material_type = .RearHitch.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_pis.CYLINDER_3  &
   adams_id = 98  &
   center_marker = .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_pis.CYLINDER_4  &
   adams_id = 99  &
   center_marker = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 7.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .RearHitch.PART_Cyl_HitchR_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- Equations ----------------------------------!
!
!
part create equation differential_equation  &
   differential_equation_name = .RearHitch.DIFF_cyl_HitchL_ForceStatic  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .RearHitch.DIFF_cyl_HitchR_ForceStatic  &
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
   joint_name = .RearHitch.Jt_HitchL_Pis  &
   adams_id = 13  &
   i_marker_name = .RearHitch.TopLinkL.Mkr_CylMount  &
   j_marker_name = .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave
!
constraint attributes  &
   constraint_name = .RearHitch.Jt_HitchL_Pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .RearHitch.JT_Cyl_HitchL_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_11  &
   j_marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .RearHitch.JT_Cyl_HitchL_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.Jt_HitchL_Cyl  &
   adams_id = 14  &
   i_marker_name = .RearHitch.MainBody.CylL  &
   j_marker_name = .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master
!
constraint attributes  &
   constraint_name = .RearHitch.Jt_HitchL_Cyl  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.Jt_HitchR_Pis  &
   adams_id = 15  &
   i_marker_name = .RearHitch.TopLinkR.Mkr_CylMount  &
   j_marker_name = .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave
!
constraint attributes  &
   constraint_name = .RearHitch.Jt_HitchR_Pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .RearHitch.JT_Cyl_HitchR_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_11  &
   j_marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .RearHitch.JT_Cyl_HitchR_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.Jt_HitchR_Cyl  &
   adams_id = 16  &
   i_marker_name = .RearHitch.MainBody.CylR  &
   j_marker_name = .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master
!
constraint attributes  &
   constraint_name = .RearHitch.Jt_HitchR_Cyl  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .RearHitch.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .RearHitch.MainBody.MARKER_69  &
   j_marker_name = .RearHitch.TopLinkR.MARKER_70
!
constraint attributes  &
   constraint_name = .RearHitch.JOINT_4  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .RearHitch.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .RearHitch.MainBody.MARKER_71  &
   j_marker_name = .RearHitch.TopLinkL.MARKER_72
!
constraint attributes  &
   constraint_name = .RearHitch.JOINT_5  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .RearHitch.LowerLinkL.MARKER_77  &
   j_marker_name = .RearHitch.LinkageL.MARKER_78
!
constraint attributes  &
   constraint_name = .RearHitch.JOINT_8  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .RearHitch.TopLinkL.MARKER_79  &
   j_marker_name = .RearHitch.LinkageL.MARKER_80
!
constraint attributes  &
   constraint_name = .RearHitch.JOINT_9  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .RearHitch.LowerLinkR.MARKER_81  &
   j_marker_name = .RearHitch.LinkageR.MARKER_82
!
constraint attributes  &
   constraint_name = .RearHitch.JOINT_10  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .RearHitch.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .RearHitch.TopLinkR.MARKER_83  &
   j_marker_name = .RearHitch.LinkageR.MARKER_84
!
constraint attributes  &
   constraint_name = .RearHitch.JOINT_11  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like bushing  &
   bushing_name = .RearHitch.BUSHING_1  &
   adams_id = 1  &
   i_marker_name = .RearHitch.LowerLinkL.MARKER_101  &
   j_marker_name = .RearHitch.MainBody.MARKER_102  &
   damping = 1.2E+005, 1.2E+005, 1.2E+005  &
   stiffness = 4.7E+006, 4.7E+006, 4.7E+006  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 2000.0943951024, 20.0043951024, 2.0943951024  &
   tstiffness = 8000.72664626, 8000.72664626, 2.72664626  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .RearHitch.BUSHING_2  &
   adams_id = 2  &
   i_marker_name = .RearHitch.LowerLinkR.MARKER_103  &
   j_marker_name = .RearHitch.MainBody.MARKER_104  &
   damping = 1.2E+005, 1.2E+005, 1.2E+005  &
   stiffness = 4.7E+006, 4.7E+006, 4.7E+006  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 2000.0943951024, 20.0043951024, 2.0943951024  &
   tstiffness = 8000.72664626, 8000.72664626, 2.72664626  &
   torque_preload = 0.0, 0.0, 0.0
!
force create direct single_component_force  &
   single_component_force_name = .RearHitch.SFORCE_ChainR  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .RearHitch.LowerLinkR.MARKER_89  &
   j_marker_name = .RearHitch.MainBody.MARKER_90  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .RearHitch.F_Cyl_HitchL_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_5  &
   j_marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .RearHitch.F_Cyl_HitchR_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_5  &
   j_marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .RearHitch.SFORCE_ChainL  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .RearHitch.LowerLinkL.MARKER_91  &
   j_marker_name = .RearHitch.MainBody.MARKER_92  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .RearHitch.Last_Sim  &
   commands = "simulation single_run equilibrium model_name=.Model_1",  &
              "simulation single_run equilibrium model_name=.Model_1",  &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=500 model_name=.Model_1 initial_static=no"
!
simulation script create  &
   sim_script_name = .RearHitch.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry create shape force  &
   force_name = .RearHitch.SFORCE_3_force_graphic_1  &
   adams_id = 100  &
   force_element_name = .RearHitch.SFORCE_ChainR  &
   applied_at_marker_name = .RearHitch.LowerLinkR.MARKER_89
!
geometry create shape force  &
   force_name = .RearHitch.SFORCE_4_force_graphic_1  &
   adams_id = 101  &
   force_element_name = .RearHitch.SFORCE_ChainL  &
   applied_at_marker_name = .RearHitch.LowerLinkL.MARKER_91
!
geometry create shape force  &
   force_name = .RearHitch.BUSHING_1_force_graphic_1  &
   adams_id = 102  &
   force_element_name = .RearHitch.BUSHING_1  &
   applied_at_marker_name = .RearHitch.LowerLinkL.MARKER_101
!
geometry create shape force  &
   force_name = .RearHitch.BUSHING_2_force_graphic_1  &
   adams_id = 103  &
   force_element_name = .RearHitch.BUSHING_2  &
   applied_at_marker_name = .RearHitch.LowerLinkR.MARKER_103
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .RearHitch.DV_TopLinkWidth  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .RearHitch.DV_CylMountBodyWidth  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.05
!
variable create  &
   variable_name = .RearHitch.DV_BottLinkMountWidth  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.75
!
variable create  &
   variable_name = .RearHitch.DV_CylMountBodyOffset  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .RearHitch.DV_BottLinkMountOffset  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.7
!
variable create  &
   variable_name = .RearHitch.DV_TopLinkOffsetX  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .RearHitch.DV_TopLink1OffsetZ  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .RearHitch.DV_TopLink2OffsetZ  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .RearHitch.DV_TopLink3OffsetZ  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .RearHitch.DV_BottLinkMountOffsetX  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .RearHitch.DV_CylMountOffsetX  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .RearHitch.DV_L1  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .RearHitch.DV_R1  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.5E-002
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchL_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchL_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.5E-002
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchL_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchL_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5181
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchL_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchR_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchR_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.5E-002
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchR_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchR_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5181
!
variable create  &
   variable_name = .RearHitch.DV_Cyl_HitchR_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .RearHitch.DV_ChainX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .RearHitch.DV_ChainY  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .RearHitch.DV_ChainZ  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .RearHitch.DV_LowerLinkChain  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.27
!
variable create  &
   variable_name = .RearHitch.DV_ChainMax  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .RearHitch.DV_ChainMin  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .RearHitch.DV_TopLinkLCylMount  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.33, 0.0, 0.185
!
variable create  &
   variable_name = .RearHitch.DV_TopLinkRCylMount  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.33, 0.0, -0.185
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .RearHitch.SV_Cyl_HitchL_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_Cyl_HitchL_P  &
   function = "DZ( .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master)"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_Cyl_HitchL_V  &
   function = "VZ( .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master)"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_cyl_HitchL_Fstatic  &
   function = "DIF(.RearHitch.DIFF_cyl_HitchL_ForceStatic)"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_cyl_HitchL_pa  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_cyl_HitchL_pb  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_Cyl_HitchR_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_Cyl_HitchR_P  &
   function = "DZ( .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master)"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_Cyl_HitchR_V  &
   function = "VZ( .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master)"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_cyl_HitchR_Fstatic  &
   function = "DIF(.RearHitch.DIFF_cyl_HitchR_ForceStatic)"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_cyl_HitchR_pa  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RearHitch.SV_cyl_HitchR_pb  &
   function = "0"
!
part modify equation differential_equation  &
   differential_equation_name = .RearHitch.DIFF_cyl_HitchL_ForceStatic  &
   function = "IF(MODE-5:0,1,0)*(.RearHitch.DV_Cyl_HitchL_ini_length-DM(.RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))"
!
part modify equation differential_equation  &
   differential_equation_name = .RearHitch.DIFF_cyl_HitchR_ForceStatic  &
   function = "IF(MODE-5:0,1,0)*(.RearHitch.DV_Cyl_HitchR_ini_length-DM(.RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))"
!
force modify direct single_component_force  &
   single_component_force_name = .RearHitch.SFORCE_ChainR  &
   function = "BISTOP( DM(.RearHitch.LowerLinkR.Chain, .RearHitch.MainBody.ChainR),VR(.RearHitch.LowerLinkR.Chain, .RearHitch.MainBody.ChainR) , .RearHitch.DV_ChainMin , .RearHitch.DV_ChainMax , 1e5 , 1.1 , 2.5e3 , 1e-3 )"
!
force modify direct single_component_force  &
   single_component_force_name = .RearHitch.F_Cyl_HitchL_force  &
   function = "VARVAL( .RearHitch.SV_Cyl_HitchL_F) + ",  &
              "BISTOP( ",  &
              "DZ( .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master) , ",  &
              "VZ( .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master) , ",  &
              ".RearHitch.DV_Cyl_HitchL_min_length , .RearHitch.DV_Cyl_HitchL_max_length , 50e6 , 1.0 , 20e6 , 0.01 ) +",  &
              "VARVAL(.RearHitch.SV_cyl_HitchL_Fstatic)*IF(MODE-5:0,1,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .RearHitch.F_Cyl_HitchR_force  &
   function = "VARVAL( .RearHitch.SV_Cyl_HitchR_F) + ",  &
              "BISTOP( ",  &
              "DZ( .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master) , ",  &
              "VZ( .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master) , ",  &
              ".RearHitch.DV_Cyl_HitchR_min_length , .RearHitch.DV_Cyl_HitchR_max_length , 50e6 , 1.0 , 20e6 , 0.01 ) +",  &
              "VARVAL(.RearHitch.SV_cyl_HitchR_Fstatic)*IF(MODE-5:0,1,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .RearHitch.SFORCE_ChainL  &
   function = "BISTOP( DM(.RearHitch.LowerLinkL.Chain, .RearHitch.MainBody.ChainL),VR(.RearHitch.LowerLinkL.Chain, .RearHitch.MainBody.ChainL) ,.RearHitch.DV_ChainMin , .RearHitch.DV_ChainMax  , 1e5 , 1.1 , 2.5e3 , 1e-3 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .RearHitch.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .RearHitch.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .RearHitch.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .RearHitch.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.TopLinkL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.TopLinkR  &
   location =   &
      (LOC_RELATIVE_TO({0, .RearHitch.DV_TopLinkWidth / 2, 0}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.TopLinkL  &
   location =   &
      (LOC_RELATIVE_TO({0, -.RearHitch.DV_TopLinkWidth / 2, 0}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.BottLinkR  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_BottLinkMountOffsetX, .RearHitch.DV_BottLinkMountWidth / 2, -.RearHitch.DV_BottLinkMountOffset}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.BottLinkL  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_BottLinkMountOffsetX, -.RearHitch.DV_BottLinkMountWidth / 2, -.RearHitch.DV_BottLinkMountOffset}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.CylL  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_CylMountOffsetX, -.RearHitch.DV_CylMountBodyWidth / 2, -.RearHitch.DV_CylMountBodyOffset}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.CylR  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_CylMountOffsetX, .RearHitch.DV_CylMountBodyWidth / 2, -.RearHitch.DV_CylMountBodyOffset}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_91  &
   location =   &
      (LOC_RELATIVE_TO({0, -7.0E-002, 0}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_CylMountOffsetX + 5.0E-002, -.RearHitch.DV_CylMountBodyWidth / 2 - 5.0E-002, -.RearHitch.DV_CylMountBodyOffset - 5.0E-002}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.TopLink1  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_TopLinkOffsetX, 0, -.RearHitch.DV_TopLink1OffsetZ}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.TopLink2  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_TopLinkOffsetX, 0, -.RearHitch.DV_TopLink2OffsetZ}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.TopLink3  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_TopLinkOffsetX, 0, -.RearHitch.DV_TopLink3OffsetZ}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_69  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.TopLinkR))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_71  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.TopLinkL))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_102  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_51))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_104  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_51))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.ChainL  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_ChainX, -.RearHitch.DV_ChainY / 2, -.RearHitch.DV_ChainZ}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.ChainR  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_ChainX, .RearHitch.DV_ChainY / 2, -.RearHitch.DV_ChainZ}, .RearHitch.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.ground.Mkr_master))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_90  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.ChainR))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_92  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.ChainL))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.MainBody.MARKER_107  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.BottLinkL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, 0}, .RearHitch.MainBody.BottLinkL))  &
   relative_to = .RearHitch.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape block  &
   block_name = .RearHitch.MainBody.BOX_11  &
   diag_corner_coords =   &
      (0.2meter),  &
      (.RearHitch.DV_TopLinkWidth),  &
      (-.RearHitch.DV_BottLinkMountOffset)
!
geometry modify shape block  &
   block_name = .RearHitch.MainBody.BOX_21  &
   diag_corner_coords =   &
      (.RearHitch.DV_TopLinkOffsetX + 5.0E-002),  &
      0.14,  &
      -0.15
!
geometry modify shape block  &
   block_name = .RearHitch.MainBody.BOX_3  &
   diag_corner_coords =   &
      (-DX(.RearHitch.MainBody.MARKER_13, .RearHitch.ground.Mkr_master, .RearHitch.ground.Mkr_master)),  &
      (.RearHitch.DV_CylMountBodyWidth + 5.0E-002),  &
      (0.1meter)
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.MainBody.CYLINDER_104  &
   length = (.RearHitch.DV_BottLinkMountWidth)  &
   radius = (2.5E-002meter)
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.TopLinkR))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .RearHitch.MainBody.TopLinkR))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_1))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_1, .RearHitch.TopLinkR.POINT_2, "X"))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.MARKER_3))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_2))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_2, .RearHitch.TopLinkR.POINT_3, "X"))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_2, .RearHitch.TopLinkR.POINT_3, "X"))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_3, .RearHitch.TopLinkR.POINT_4, "X"))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_3, .RearHitch.TopLinkR.POINT_4, "X"))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.Mkr_CylMount  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_TopLinkRCylMount}, .RearHitch.TopLinkR.MARKER_2))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_70  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.MARKER_2))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkR.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_4))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkR.POINT_2  &
   location =   &
      (LOC_RELATIVE_TO({0.2, 0, -0.15}, .RearHitch.TopLinkR.MARKER_2))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkR.POINT_3  &
   location =   &
      (LOC_RELATIVE_TO({0.45, 0, -0.2}, .RearHitch.TopLinkR.MARKER_2))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkR.POINT_4  &
   location =   &
      (LOC_RELATIVE_TO({0.5, 0, -0.2}, .RearHitch.TopLinkR.MARKER_2))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkR.POINT_1  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, -0.15}, .RearHitch.TopLinkR.MARKER_2))  &
   relative_to = .RearHitch.TopLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.TopLinkR.CYLINDER_1  &
   length = (-.RearHitch.DV_L1)  &
   radius = (.RearHitch.DV_R1)
!
geometry modify shape link  &
   link_name = .RearHitch.TopLinkR.LINK_6  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.TopLinkR.LINK_7  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.TopLinkR.LINK_8  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_51))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkL.POINT_51, .RearHitch.LowerLinkL.POINT_52, "X"))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkL.POINT_51, .RearHitch.LowerLinkL.POINT_52, "X"))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_101  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_51))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkL.POINT_52, .RearHitch.LowerLinkL.POINT_53, "X"))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkL.POINT_52, .RearHitch.LowerLinkL.POINT_53, "X"))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkL.POINT_53, .RearHitch.LowerLinkL.POINT_54, "X"))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.POINT_54))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkL.POINT_53, .RearHitch.LowerLinkL.POINT_54, "X"))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_105  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.BottLinkL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.BottLinkL))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_77  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.LinkagePoint))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.Chain  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_LowerLinkChain, 0, 0}, .RearHitch.LowerLinkL.MARKER_32))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.cm))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkL.MARKER_91  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.Chain))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkL.POINT_51  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .RearHitch.LowerLinkL.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkL.POINT_52  &
   location =   &
      (LOC_RELATIVE_TO({0.1, 0.0, 0.0}, .RearHitch.LowerLinkL.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkL.POINT_53  &
   location =   &
      (LOC_RELATIVE_TO({0.55, -0.35, 0.0}, .RearHitch.LowerLinkL.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkL.POINT_54  &
   location =   &
      (LOC_RELATIVE_TO({0.75, -0.35, 0.0}, .RearHitch.LowerLinkL.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkL.LinkagePoint  &
   location =   &
      (LOC_RELATIVE_TO({0.35, -0.21, 0.0}, .RearHitch.LowerLinkL.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape link  &
   link_name = .RearHitch.LowerLinkL.LINK_54  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.LowerLinkL.LINK_55  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.LowerLinkL.LINK_56  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.TopLinkL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .RearHitch.MainBody.TopLinkL))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_1))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_1, .RearHitch.TopLinkL.POINT_2, "X"))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.MARKER_3))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_2))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_2, .RearHitch.TopLinkL.POINT_3, "X"))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_2, .RearHitch.TopLinkL.POINT_3, "X"))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_3, .RearHitch.TopLinkL.POINT_4, "X"))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_3, .RearHitch.TopLinkL.POINT_4, "X"))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.Mkr_CylMount  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_TopLinkLCylMount}, .RearHitch.TopLinkL.MARKER_2))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_72  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.MARKER_2))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.TopLinkL.MARKER_79  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_4))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkL.POINT_2  &
   location =   &
      (LOC_RELATIVE_TO({0.2, 0, 0.15}, .RearHitch.TopLinkL.MARKER_2))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkL.POINT_3  &
   location =   &
      (LOC_RELATIVE_TO({0.45, 0, 0.2}, .RearHitch.TopLinkL.MARKER_2))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkL.POINT_4  &
   location =   &
      (LOC_RELATIVE_TO({0.5, 0, 0.2}, .RearHitch.TopLinkL.MARKER_2))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.TopLinkL.POINT_1  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, 0.15}, .RearHitch.TopLinkL.MARKER_2))  &
   relative_to = .RearHitch.TopLinkL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.TopLinkL.CYLINDER_1  &
   length = (.RearHitch.DV_L1)  &
   radius = (.RearHitch.DV_R1)
!
geometry modify shape link  &
   link_name = .RearHitch.TopLinkL.LINK_6  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.TopLinkL.LINK_7  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.TopLinkL.LINK_8  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_51))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkR.POINT_51, .RearHitch.LowerLinkR.POINT_52, "X"))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkR.POINT_51, .RearHitch.LowerLinkR.POINT_52, "X"))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_52))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkR.POINT_52, .RearHitch.LowerLinkR.POINT_53, "X"))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkR.POINT_52, .RearHitch.LowerLinkR.POINT_53, "X"))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_53))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkR.POINT_53, .RearHitch.LowerLinkR.POINT_54, "X"))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_54))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.LowerLinkR.POINT_53, .RearHitch.LowerLinkR.POINT_54, "X"))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_103  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.POINT_51))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_81  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.LinkagePoint))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.Chain  &
   location =   &
      (LOC_RELATIVE_TO({.RearHitch.DV_LowerLinkChain, 0, 0}, .RearHitch.LowerLinkR.MARKER_32))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.cm))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_89  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.Chain))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LowerLinkR.MARKER_105  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.BottLinkR))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.BottLinkR))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkR.POINT_51  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .RearHitch.LowerLinkR.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkR.POINT_52  &
   location =   &
      (LOC_RELATIVE_TO({0.1, 0.0, 0.0}, .RearHitch.LowerLinkR.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkR.POINT_53  &
   location =   &
      (LOC_RELATIVE_TO({0.55, 0.35, 0.0}, .RearHitch.LowerLinkR.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkR.POINT_54  &
   location =   &
      (LOC_RELATIVE_TO({0.75, 0.35, 0.0}, .RearHitch.LowerLinkR.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
point modify  &
   point_name = .RearHitch.LowerLinkR.LinkagePoint  &
   location =   &
      (LOC_RELATIVE_TO({0.35, 0.21, 0.0}, .RearHitch.LowerLinkR.MARKER_105))  &
   relative_to = .RearHitch.LowerLinkR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape link  &
   link_name = .RearHitch.LowerLinkR.LINK_54  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.LowerLinkR.LINK_55  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
geometry modify shape link  &
   link_name = .RearHitch.LowerLinkR.LINK_56  &
   width = (5.0cm)  &
   depth = (14.0cm)
!
marker modify  &
   marker_name = .RearHitch.LinkageL.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_4, .RearHitch.LowerLinkL.LinkagePoint, "X"))  &
   relative_to = .RearHitch.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LinkageL.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.LinkagePoint))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkL.POINT_4, .RearHitch.LowerLinkL.LinkagePoint, "X"))  &
   relative_to = .RearHitch.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LinkageL.MARKER_78  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkL.LinkagePoint))  &
   relative_to = .RearHitch.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LinkageL.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.POINT_4))  &
   relative_to = .RearHitch.LinkageL
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape link  &
   link_name = .RearHitch.LinkageL.LINK_92  &
   width = (5.0cm)  &
   depth = (5.0cm)
!
marker modify  &
   marker_name = .RearHitch.LinkageR.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_4))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_4, .RearHitch.LowerLinkR.LinkagePoint, "X"))  &
   relative_to = .RearHitch.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LinkageR.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.LinkagePoint))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.TopLinkR.POINT_4, .RearHitch.LowerLinkR.LinkagePoint, "X"))  &
   relative_to = .RearHitch.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LinkageR.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.LowerLinkR.LinkagePoint))  &
   relative_to = .RearHitch.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.LinkageR.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.POINT_4))  &
   relative_to = .RearHitch.LinkageR
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape link  &
   link_name = .RearHitch.LinkageR.LINK_94  &
   width = (5.0cm)  &
   depth = (5.0cm)
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.CylL))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.MainBody.CylL, .RearHitch.TopLinkL.Mkr_CylMount, "z"))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .RearHitch.DV_Cyl_HitchL_rc, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_cyl.CYLINDER  &
   length = (.RearHitch.DV_Cyl_HitchL_min_length - .RearHitch.DV_Cyl_HitchL_rc)  &
   radius = (.RearHitch.DV_Cyl_HitchL_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_cyl.CYLINDER_2  &
   length = (.RearHitch.DV_Cyl_HitchL_rc * 2)  &
   radius = (.RearHitch.DV_Cyl_HitchL_rc)
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkL.Mkr_CylMount))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .RearHitch.DV_Cyl_HitchL_rc, 0}, .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchL_pis.MKR_HitchL_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchL_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchL_cyl.MKR_HitchL_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchL_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_pis.CYLINDER_3  &
   length = (.RearHitch.DV_Cyl_HitchL_min_length)  &
   radius = (.RearHitch.DV_Cyl_HitchL_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchL_pis.CYLINDER_4  &
   length = (.RearHitch.DV_Cyl_HitchL_rc * 2)  &
   radius = (.RearHitch.DV_Cyl_HitchL_rc)
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.MainBody.CylR))  &
   orientation =   &
      (ORI_ALONG_AXIS(.RearHitch.MainBody.CylR, .RearHitch.TopLinkR.Mkr_CylMount, "z"))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .RearHitch.DV_Cyl_HitchR_rc, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_cyl.CYLINDER  &
   length = (.RearHitch.DV_Cyl_HitchR_min_length - .RearHitch.DV_Cyl_HitchR_rc)  &
   radius = (.RearHitch.DV_Cyl_HitchR_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_cyl.CYLINDER_2  &
   length = (.RearHitch.DV_Cyl_HitchR_rc * 2)  &
   radius = (.RearHitch.DV_Cyl_HitchR_rc)
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.TopLinkR.Mkr_CylMount))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .RearHitch.DV_Cyl_HitchR_rc, 0}, .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchR_pis.MKR_HitchR_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
marker modify  &
   marker_name = .RearHitch.PART_Cyl_HitchR_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .RearHitch.PART_Cyl_HitchR_cyl.MKR_HitchR_cyl_master))  &
   relative_to = .RearHitch.PART_Cyl_HitchR_pis
!
defaults coordinate_system  &
   default_coordinate_system = .RearHitch.ground
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_pis.CYLINDER_3  &
   length = (.RearHitch.DV_Cyl_HitchR_min_length)  &
   radius = (.RearHitch.DV_Cyl_HitchR_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .RearHitch.PART_Cyl_HitchR_pis.CYLINDER_4  &
   length = (.RearHitch.DV_Cyl_HitchR_rc * 2)  &
   radius = (.RearHitch.DV_Cyl_HitchR_rc)
!
force modify element_like bushing  &
   bushing_name = .RearHitch.BUSHING_1  &
   damping =   &
      (1.2E+005(newton-sec/meter)),  &
      (1.2E+005(newton-sec/meter)),  &
      (1.2E+005(newton-sec/meter))  &
   stiffness =   &
      (4.7E+006(newton/meter)),  &
      (4.7E+006(newton/meter)),  &
      (4.7E+006(newton/meter))  &
   tdamping =   &
      (2000.0943951024(newton-meter-sec/deg)),  &
      (20.0043951024(newton-meter-sec/deg)),  &
      (2.0943951024(newton-meter-sec/deg))  &
   tstiffness =   &
      (8000.72664626(newton-meter/deg)),  &
      (8000.72664626(newton-meter/deg)),  &
      (2.72664626(newton-meter/deg))
!
force modify element_like bushing  &
   bushing_name = .RearHitch.BUSHING_2  &
   damping =   &
      (1.2E+005(newton-sec/meter)),  &
      (1.2E+005(newton-sec/meter)),  &
      (1.2E+005(newton-sec/meter))  &
   stiffness =   &
      (4.7E+006(newton/meter)),  &
      (4.7E+006(newton/meter)),  &
      (4.7E+006(newton/meter))  &
   tdamping =   &
      (2000.0943951024(newton-meter-sec/deg)),  &
      (20.0043951024(newton-meter-sec/deg)),  &
      (2.0943951024(newton-meter-sec/deg))  &
   tstiffness =   &
      (8000.72664626(newton-meter/deg)),  &
      (8000.72664626(newton-meter/deg)),  &
      (2.72664626(newton-meter/deg))
!
geometry modify shape force  &
   force_name = .RearHitch.SFORCE_3_force_graphic_1  &
   applied_at_marker_name = (.RearHitch.SFORCE_ChainR.i)
!
geometry modify shape force  &
   force_name = .RearHitch.SFORCE_4_force_graphic_1  &
   applied_at_marker_name = (.RearHitch.SFORCE_ChainL.i)
!
geometry modify shape force  &
   force_name = .RearHitch.BUSHING_1_force_graphic_1  &
   applied_at_marker_name = (.RearHitch.BUSHING_1.i)
!
geometry modify shape force  &
   force_name = .RearHitch.BUSHING_2_force_graphic_1  &
   applied_at_marker_name = (.RearHitch.BUSHING_2.i)
!
variable modify  &
   variable_name = .RearHitch.DV_TopLinkLCylMount  &
   real_value = ({0.33, 0.0, 0.185})
!
variable modify  &
   variable_name = .RearHitch.DV_TopLinkRCylMount  &
   real_value = ({0.33, 0, -0.185})
!
model display  &
   model_name = RearHitch
