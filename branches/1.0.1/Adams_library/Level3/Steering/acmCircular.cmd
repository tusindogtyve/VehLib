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
   model_name = acmCircular
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .acmCircular.SV_steering_F  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmCircular.SV_steering_P  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmCircular.SV_steering_V  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .acmCircular.steel  &
   adams_id = 1  &
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
   default_coordinate_system = .acmCircular.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.ground.Mkr_master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.ground.MKR_slaveR  &
   adams_id = 18  &
   location = 0.0, -0.7, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.ground.MKR_slaveL  &
   adams_id = 19  &
   location = 0.0, 0.7, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.ground  &
   material_type = .acmCircular.steel
!
part attributes  &
   part_name = .acmCircular.ground  &
   name_visibility = off
!
!--------------------------------- PART_axle ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_axle  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_axle
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_2  &
   adams_id = 2  &
   location = 0.0, -0.14, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.cm  &
   adams_id = 32  &
   location = 5.4586154132E-003, 0.0, 1.9488175974E-002  &
   orientation = 180.0d, 90.0d, 45.237717507d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_3  &
   adams_id = 3  &
   location = 0.0, -0.7, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.2  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_6  &
   adams_id = 6  &
   location = 0.26, 0.0, 0.2  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_10  &
   adams_id = 10  &
   location = 0.26, 0.0, 0.2  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_23  &
   adams_id = 23  &
   location = 0.0, -0.7, 0.0  &
   orientation = 225.0d, 7.0532266568d, 315.2176150012d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_25  &
   adams_id = 25  &
   location = 0.0, 0.7, 0.0  &
   orientation = 315.0d, 7.0532266568d, 224.7823849988d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_26  &
   adams_id = 26  &
   location = -0.15, -0.275, 0.1  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_29  &
   adams_id = 29  &
   location = -0.15, -0.275, 0.1  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_38  &
   adams_id = 38  &
   location = -0.15, -0.275, 0.1  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_41  &
   adams_id = 41  &
   location = -0.15, 0.0, 0.1  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_axle.MARKER_62  &
   adams_id = 62  &
   location = 0.14, 0.0, 0.2  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_axle  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_axle.CYLINDER_1  &
   adams_id = 1  &
   center_marker = .acmCircular.PART_axle.MARKER_2  &
   angle_extent = 360.0  &
   length = 0.28  &
   radius = 0.168  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_axle.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .acmCircular.PART_axle.MARKER_3  &
   angle_extent = 360.0  &
   length = 1.4  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape plate  &
   plate_name = .acmCircular.PART_axle.PLATE_3  &
   marker_name = .acmCircular.PART_axle.MARKER_4,  &
                 .acmCircular.PART_axle.MARKER_5,  &
                 .acmCircular.PART_axle.MARKER_6  &
   width = 0.15  &
   radius = 3.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_axle.CYLINDER_10  &
   adams_id = 10  &
   center_marker = .acmCircular.PART_axle.MARKER_26  &
   angle_extent = 360.0  &
   length = 0.55  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmCircular.PART_axle  &
   color = MAIZE  &
   name_visibility = off
!
!--------------------------------- PART_to_cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_to_cs  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_to_cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_to_cs.MARKER_7  &
   adams_id = 7  &
   location = 0.14, 0.0, 0.2  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_to_cs.MARKER_8  &
   adams_id = 8  &
   location = 0.14, -0.2, 0.35  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_to_cs.MARKER_9  &
   adams_id = 9  &
   location = 0.14, 0.2, 0.35  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_to_cs.cm  &
   adams_id = 33  &
   location = 0.14, 0.0, 0.3035370215  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_to_cs.MARKER_11  &
   adams_id = 11  &
   location = 0.26, 0.0, 0.2  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_to_cs.MARKER_63  &
   adams_id = 63  &
   location = 0.14, -0.2, 0.35  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_to_cs  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .acmCircular.PART_to_cs.PLATE_4  &
   marker_name = .acmCircular.PART_to_cs.MARKER_7,  &
                 .acmCircular.PART_to_cs.MARKER_8,  &
                 .acmCircular.PART_to_cs.MARKER_9  &
   width = 0.15  &
   radius = 2.0E-002
!
part attributes  &
   part_name = .acmCircular.PART_to_cs  &
   color = GREEN  &
   name_visibility = off
!
!--------------------------------- PART_acmR ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_acmR  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_acmR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MARKER_12  &
   adams_id = 12  &
   location = 0.0, -0.7, 0.0  &
   orientation = 225.0d, 7.0532266568d, 315.2176150012d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.cm  &
   adams_id = 34  &
   location = -8.5044080992E-003, -0.7481887327, 6.6145396327E-003  &
   orientation = 6.464253142d, 95.7678483018d, 42.5313776374d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MARKER_14  &
   adams_id = 14  &
   location = 0.0, -0.7, 0.0  &
   orientation = 45.0d, 172.9467733432d, 224.7823849988d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MARKER_16  &
   adams_id = 16  &
   location = 0.0, -0.7, 0.0  &
   orientation = 270.0d, 142.1250163489d, 99.9491262972d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MARKER_17  &
   adams_id = 17  &
   location = -0.18, -0.66, 0.14  &
   orientation = 270.0d, 142.1250163489d, 99.9491262972d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MARKER_22  &
   adams_id = 22  &
   location = 0.0, -0.7, 0.0  &
   orientation = 225.0d, 7.0532266568d, 315.2176150012d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MARKER_58  &
   adams_id = 58  &
   location = -0.18, -0.66, 0.14  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_acmR.MKR_wheel_FR  &
   adams_id = 60  &
   location = 0.0, -1.0, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_acmR  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_acmR.CYLINDER_5  &
   adams_id = 5  &
   center_marker = .acmCircular.PART_acmR.MARKER_12  &
   angle_extent = 360.0  &
   length = 9.1E-002  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_acmR.CYLINDER_7  &
   adams_id = 7  &
   center_marker = .acmCircular.PART_acmR.MARKER_14  &
   angle_extent = 360.0  &
   length = 9.1E-002  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .acmCircular.PART_acmR.LINK_9  &
   i_marker = .acmCircular.PART_acmR.MARKER_16  &
   j_marker = .acmCircular.PART_acmR.MARKER_17  &
   width = 6.0E-002  &
   depth = 4.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_acmR.CYLINDER_20  &
   adams_id = 20  &
   center_marker = .acmCircular.PART_acmR.MKR_wheel_FR  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmCircular.PART_acmR  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- PART_acmL ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_acmL  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_acmL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MARKER_13  &
   adams_id = 13  &
   location = 0.0, 0.7, 0.0  &
   orientation = 315.0d, 7.0532266568d, 224.7823849988d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.cm  &
   adams_id = 35  &
   location = -8.5044080992E-003, 0.7481887327, 6.6145396327E-003  &
   orientation = 353.5357468578d, 84.2321516985d, 42.5313776369d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MARKER_15  &
   adams_id = 15  &
   location = 0.0, 0.7, 0.0  &
   orientation = 135.0d, 172.9467733432d, 315.2176150012d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MARKER_20  &
   adams_id = 20  &
   location = 0.0, 0.7, 0.0  &
   orientation = 270.0d, 142.1250163489d, 80.0508737028d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MARKER_21  &
   adams_id = 21  &
   location = -0.18, 0.66, 0.14  &
   orientation = 270.0d, 142.1250163489d, 80.0508737028d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MARKER_24  &
   adams_id = 24  &
   location = 0.0, 0.7, 0.0  &
   orientation = 315.0d, 7.0532266568d, 224.7823849988d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MARKER_48  &
   adams_id = 48  &
   location = -0.18, 0.66, 0.14  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_acmL.MKR_wheel_FL  &
   adams_id = 61  &
   location = 0.0, 1.0, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_acmL  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_acmL.CYLINDER_6  &
   adams_id = 6  &
   center_marker = .acmCircular.PART_acmL.MARKER_13  &
   angle_extent = 360.0  &
   length = 9.1E-002  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_acmL.CYLINDER_8  &
   adams_id = 8  &
   center_marker = .acmCircular.PART_acmL.MARKER_15  &
   angle_extent = 360.0  &
   length = 9.1E-002  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .acmCircular.PART_acmL.LINK_9  &
   i_marker = .acmCircular.PART_acmL.MARKER_20  &
   j_marker = .acmCircular.PART_acmL.MARKER_21  &
   width = 6.0E-002  &
   depth = 4.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_acmL.CYLINDER_22  &
   adams_id = 22  &
   center_marker = .acmCircular.PART_acmL.MKR_wheel_FL  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmCircular.PART_acmL  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------------- PART_piston ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_piston  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_piston
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_27  &
   adams_id = 27  &
   location = -0.15, -0.4, 0.1  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.cm  &
   adams_id = 36  &
   location = -0.15, 0.0, 0.1  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_28  &
   adams_id = 28  &
   location = -0.15, -0.275, 0.1  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_37  &
   adams_id = 37  &
   location = -0.15, -0.4, 0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_42  &
   adams_id = 42  &
   location = -0.15, 0.0, 0.1  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_43  &
   adams_id = 43  &
   location = -0.15, 0.4, 0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_51  &
   adams_id = 51  &
   location = -0.15, 0.4, 0.1  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_piston.MARKER_52  &
   adams_id = 52  &
   location = -0.15, -0.4, 0.1  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_piston  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_piston.CYLINDER_14  &
   adams_id = 14  &
   center_marker = .acmCircular.PART_piston.MARKER_27  &
   angle_extent = 360.0  &
   length = 0.8  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmCircular.PART_piston  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- PART_linkL ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_linkL  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_linkL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_linkL.MARKER_44  &
   adams_id = 44  &
   location = -0.18, 0.66, 0.14  &
   orientation = 6.5819446552d, 98.6893984625d, 217.3705082521d
!
marker create  &
   marker_name = .acmCircular.PART_linkL.cm  &
   adams_id = 56  &
   location = -0.165, 0.53, 0.12  &
   orientation = 6.5819446552d, 98.6893984625d, 0.0d
!
marker create  &
   marker_name = .acmCircular.PART_linkL.MARKER_46  &
   adams_id = 46  &
   location = -0.15, 0.4, 0.1  &
   orientation = 186.5819446552d, 81.3106015375d, 142.6294917479d
!
marker create  &
   marker_name = .acmCircular.PART_linkL.MARKER_49  &
   adams_id = 49  &
   location = -0.18, 0.66, 0.14  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_linkL.MARKER_50  &
   adams_id = 50  &
   location = -0.15, 0.4, 0.1  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_linkL  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_linkL.CYLINDER_16  &
   adams_id = 16  &
   center_marker = .acmCircular.PART_linkL.MARKER_44  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_linkL.CYLINDER_18  &
   adams_id = 18  &
   center_marker = .acmCircular.PART_linkL.MARKER_46  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmCircular.PART_linkL  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- PART_linkR ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
part create rigid_body name_and_position  &
   part_name = .acmCircular.PART_linkR  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.PART_linkR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmCircular.PART_linkR.MARKER_45  &
   adams_id = 45  &
   location = -0.18, -0.66, 0.14  &
   orientation = 173.4180553448d, 98.6893984625d, 322.6294917479d
!
marker create  &
   marker_name = .acmCircular.PART_linkR.cm  &
   adams_id = 57  &
   location = -0.165, -0.53, 0.12  &
   orientation = 173.4180553448d, 98.6893984625d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_linkR.MARKER_47  &
   adams_id = 47  &
   location = -0.15, -0.4, 0.1  &
   orientation = 353.4180553448d, 81.3106015375d, 37.3705082521d
!
marker create  &
   marker_name = .acmCircular.PART_linkR.MARKER_53  &
   adams_id = 53  &
   location = -0.15, -0.4, 0.1  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .acmCircular.PART_linkR.MARKER_59  &
   adams_id = 59  &
   location = -0.18, -0.66, 0.14  &
   orientation = 270.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmCircular.PART_linkR  &
   material_type = .acmCircular.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_linkR.CYLINDER_17  &
   adams_id = 17  &
   center_marker = .acmCircular.PART_linkR.MARKER_45  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmCircular.PART_linkR.CYLINDER_19  &
   adams_id = 19  &
   center_marker = .acmCircular.PART_linkR.MARKER_47  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmCircular.PART_linkR  &
   color = SILVER  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .acmCircular.JT_axle_to_cs  &
   adams_id = 1  &
   i_marker_name = .acmCircular.PART_axle.MARKER_10  &
   j_marker_name = .acmCircular.PART_to_cs.MARKER_11
!
constraint attributes  &
   constraint_name = .acmCircular.JT_axle_to_cs  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .acmCircular.JT_axle_to_acmR  &
   adams_id = 2  &
   i_marker_name = .acmCircular.PART_acmR.MARKER_22  &
   j_marker_name = .acmCircular.PART_axle.MARKER_23
!
constraint attributes  &
   constraint_name = .acmCircular.JT_axle_to_acmR  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .acmCircular.JT_axle_to_acmL  &
   adams_id = 3  &
   i_marker_name = .acmCircular.PART_acmL.MARKER_24  &
   j_marker_name = .acmCircular.PART_axle.MARKER_25
!
constraint attributes  &
   constraint_name = .acmCircular.JT_axle_to_acmL  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .acmCircular.JT_axle_to_piston  &
   adams_id = 4  &
   i_marker_name = .acmCircular.PART_piston.MARKER_28  &
   j_marker_name = .acmCircular.PART_axle.MARKER_29  &
   translational_ic = -3.0E-002  &
   velocity_ic = 0.0
!
constraint attributes  &
   constraint_name = .acmCircular.JT_axle_to_piston  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmCircular.JT_acmL_to_linkL  &
   adams_id = 6  &
   i_marker_name = .acmCircular.PART_acmL.MARKER_48  &
   j_marker_name = .acmCircular.PART_linkL.MARKER_49
!
constraint attributes  &
   constraint_name = .acmCircular.JT_acmL_to_linkL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmCircular.JT_linkL_to_piston  &
   adams_id = 7  &
   i_marker_name = .acmCircular.PART_linkL.MARKER_50  &
   j_marker_name = .acmCircular.PART_piston.MARKER_51
!
constraint attributes  &
   constraint_name = .acmCircular.JT_linkL_to_piston  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmCircular.JT_linkR_to_piston  &
   adams_id = 8  &
   i_marker_name = .acmCircular.PART_piston.MARKER_52  &
   j_marker_name = .acmCircular.PART_linkR.MARKER_53
!
constraint attributes  &
   constraint_name = .acmCircular.JT_linkR_to_piston  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmCircular.JT_acmR_to_linkR  &
   adams_id = 9  &
   i_marker_name = .acmCircular.PART_acmR.MARKER_58  &
   j_marker_name = .acmCircular.PART_linkR.MARKER_59
!
constraint attributes  &
   constraint_name = .acmCircular.JT_acmR_to_linkR  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .acmCircular.FORCE_cyl  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .acmCircular.PART_piston.MARKER_37  &
   j_marker_name = .acmCircular.PART_axle.MARKER_38  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .acmCircular.FORCE_mechanical_stop  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .acmCircular.PART_axle.MARKER_62  &
   j_marker_name = .acmCircular.PART_to_cs.MARKER_63  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .acmCircular.Last_Sim  &
   commands = "simulation single_run assemble model_name=.acmCase"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry create shape force  &
   force_name = .acmCircular.SFORCE_1_force_graphic_1  &
   adams_id = 15  &
   force_element_name = .acmCircular.FORCE_cyl  &
   applied_at_marker_name = .acmCircular.PART_piston.MARKER_37
!
geometry create shape force  &
   force_name = .acmCircular.SFORCE_2_force_graphic_1  &
   adams_id = 23  &
   force_element_name = .acmCircular.FORCE_mechanical_stop  &
   applied_at_marker_name = .acmCircular.PART_axle.MARKER_62
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
   variable_name = .acmCircular.DV_camber  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0
!
variable create  &
   variable_name = .acmCircular.DV_caster  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0
!
variable create  &
   variable_name = .acmCircular.DV_csX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.26
!
variable create  &
   variable_name = .acmCircular.DV_csZ  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .acmCircular.DV_cylX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .acmCircular.DV_cylZ  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .acmCircular.DV_ms_tiltAngle  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0
!
variable create  &
   variable_name = .acmCircular.DV_cyl_maxL  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.45
!
variable create  &
   variable_name = .acmCircular.DV_cyl_minL  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .acmCircular.DV_cyl_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.75E-002
!
variable create  &
   variable_name = .acmCircular.DV_cyl_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .acmCircular.DV_cyl_iniL  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.43
!
variable create  &
   variable_name = .acmCircular.DV_dst_y_axle  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.4
!
variable create  &
   variable_name = .acmCircular.DV_dst_y_wheels  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .acmCircular.DV_dst_x_acm  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.18
!
variable create  &
   variable_name = .acmCircular.DV_dst_y_acm  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .acmCircular.DV_dst_z_acm  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.14
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .acmCircular.SV_steering_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .acmCircular.SV_steering_P  &
   function = "0.0"
!
data_element modify variable  &
   variable_name = .acmCircular.SV_steering_V  &
   function = "VY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41)"
!
force modify direct single_component_force  &
   single_component_force_name = .acmCircular.FORCE_cyl  &
   function = "IF( (.acmCircular.DV_cyl_maxL - .acmCircular.DV_cyl_minL) - DY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41) : -((.acmCircular.DV_cyl_maxL - .acmCircular.DV_cyl_minL) - DY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41))*50000 - VY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41)*90000 , 0 , 0 ) +",  &
              "IF( (.acmCircular.DV_cyl_maxL - .acmCircular.DV_cyl_minL) + DY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41) :  ((.acmCircular.DV_cyl_maxL - .acmCircular.DV_cyl_minL) + DY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41))*50000 - VY( .acmCircular.PART_piston.MARKER_42, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41, .acmCircular.PART_axle.MARKER_41)*90000 , 0 , 0 ) +",  &
              "VARVAL( .acmCircular.SV_steering_F)"
!
force modify direct single_component_force  &
   single_component_force_name = .acmCircular.FORCE_mechanical_stop  &
   function = "IF( (.acmCircular.DV_ms_tiltAngle - (AZ( .acmCircular.PART_to_cs.MARKER_8, .acmCircular.PART_axle.MARKER_62)*57.26577 -90)) :  -(.acmCircular.DV_ms_tiltAngle - (AZ( .acmCircular.PART_to_cs.MARKER_8, .acmCircular.PART_axle.MARKER_62)*57.26577 -90))*20000 +WZ( .acmCircular.PART_to_cs.MARKER_8, .acmCircular.PART_axle.MARKER_62, .acmCircular.PART_axle.MARKER_62)*80000, 0 , 0 )  +",  &
              "IF( (.acmCircular.DV_ms_tiltAngle + (AZ( .acmCircular.PART_to_cs.MARKER_8, .acmCircular.PART_axle.MARKER_62)*57.26577 -90)) :   (.acmCircular.DV_ms_tiltAngle + (AZ( .acmCircular.PART_to_cs.MARKER_8, .acmCircular.PART_axle.MARKER_62)*57.26577 -90))*20000 +WZ( .acmCircular.PART_to_cs.MARKER_8, .acmCircular.PART_axle.MARKER_62, .acmCircular.PART_axle.MARKER_62)*80000, 0 , 0 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .acmCircular.ground.MKR_slaveR  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.Mkr_master))
!
marker modify  &
   marker_name = .acmCircular.ground.MKR_slaveL  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_13))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.Mkr_master))
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, -.acmCircular.DV_dst_y_axle * 0.1, 0.0}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 180.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_axle.CYLINDER_1  &
   length = (.acmCircular.DV_dst_y_axle * 0.2)  &
   radius = (.acmCircular.DV_dst_y_axle * 0.12)
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0.0, -.acmCircular.DV_dst_y_axle * 0.5, 0.0}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 180.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_axle.CYLINDER_2  &
   length = (.acmCircular.DV_dst_y_axle)  &
   radius = (.acmCircular.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 180.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, .acmCircular.DV_csZ}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 180.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({.acmCircular.DV_csX, 0.0, .acmCircular.DV_csZ}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 180.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 90}, .acmCircular.PART_axle.MARKER_6))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.MKR_slaveR))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmR.MARKER_12))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_13))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_cylX, -(.acmCircular.DV_cyl_minL - 2 * .acmCircular.DV_cyl_rc), .acmCircular.DV_cylZ}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_axle.CYLINDER_10  &
   length = ((.acmCircular.DV_cyl_minL - 2 * .acmCircular.DV_cyl_rc) * 2)  &
   radius = (.acmCircular.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_29  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.PART_axle.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.PART_axle.MARKER_26))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_38  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.PART_axle.MARKER_26))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_cylX, 0, .acmCircular.DV_cylZ}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 0.0, 0.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_axle.MARKER_62  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_to_cs.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({90.0, 90.0, 0.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_to_cs.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({-0.12, 0.0, 0.0}, .acmCircular.PART_axle.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({270.0, 90.0, 90.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_to_cs.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0.15, -0.2, 0.0}, .acmCircular.PART_to_cs.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.PART_to_cs.MARKER_7))  &
   relative_to = .acmCircular.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_to_cs.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0.15, 0.2, 0.0}, .acmCircular.PART_to_cs.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.PART_to_cs.MARKER_7))  &
   relative_to = .acmCircular.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape plate  &
   plate_name = .acmCircular.PART_to_cs.PLATE_4  &
   radius = (2.0cm)
!
marker modify  &
   marker_name = .acmCircular.PART_to_cs.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 90}, .acmCircular.PART_axle.MARKER_6))  &
   relative_to = .acmCircular.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_to_cs.MARKER_63  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_to_cs.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({90.0, 90.0, 0.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO(ORI_ALL_AXES({{0, 0, 0}, {-TAN(.acmCircular.DV_caster)d, TAN(.acmCircular.DV_camber)d, 1}, {-1, 0, 0}}, "zx"), .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_acmR.CYLINDER_5  &
   length = (.acmCircular.DV_dst_y_axle * 6.5E-002)  &
   radius = (.acmCircular.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmCircular.PART_acmR.MARKER_12))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_acmR.CYLINDER_7  &
   length = (.acmCircular.DV_dst_y_axle * 6.5E-002)  &
   radius = (.acmCircular.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_acmR.MARKER_16, .acmCircular.PART_acmR.MARKER_17, "x"))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_dst_x_acm, .acmCircular.DV_dst_y_acm, .acmCircular.DV_dst_z_acm}, .acmCircular.ground.MKR_slaveR))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_acmR.MARKER_16, .acmCircular.PART_acmR.MARKER_17, "x"))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.MKR_slaveR))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmR.MARKER_12))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MARKER_58  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmR.MARKER_17))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmR.MKR_wheel_FR  &
   location =   &
      (LOC_RELATIVE_TO({0, -.acmCircular.DV_dst_y_wheels / 2, 0}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_acmR.CYLINDER_20  &
   length = ((.acmCircular.DV_dst_y_wheels - .acmCircular.DV_dst_y_axle) / 2)
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .acmCircular.DV_dst_y_axle}, .acmCircular.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO(ORI_ALL_AXES({{0, 0, 0}, {-TAN(.acmCircular.DV_caster)d, -TAN(.acmCircular.DV_camber)d, 1}, {-1, 0, 0}}, "zx"), .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_acmL.CYLINDER_6  &
   length = (.acmCircular.DV_dst_y_axle * 6.5E-002)  &
   radius = (.acmCircular.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_13))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmCircular.PART_acmL.MARKER_13))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_acmL.CYLINDER_8  &
   length = (.acmCircular.DV_dst_y_axle * 6.5E-002)  &
   radius = (.acmCircular.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_acmL.MARKER_20, .acmCircular.PART_acmL.MARKER_21, "x"))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_dst_x_acm, -.acmCircular.DV_dst_y_acm, .acmCircular.DV_dst_z_acm}, .acmCircular.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_acmL.MARKER_20, .acmCircular.PART_acmL.MARKER_21, "x"))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_13))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_21))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_acmL.MKR_wheel_FL  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmCircular.DV_dst_y_wheels / 2, 0}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 90.0, 90.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_acmL.CYLINDER_22  &
   length = ((.acmCircular.DV_dst_y_wheels - .acmCircular.DV_dst_y_axle) / 2)
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_cylX, -(.acmCircular.DV_cyl_maxL + .acmCircular.DV_cyl_minL) / 2, .acmCircular.DV_cylZ}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmCircular.PART_piston.CYLINDER_14  &
   length = (.acmCircular.DV_cyl_maxL + .acmCircular.DV_cyl_minL)  &
   radius = (.acmCircular.DV_cyl_rp)
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_axle.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmCircular.PART_axle.MARKER_26))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_27))  &
   orientation =   &
      (ORI_RELATIVE_TO({90.0, 90.0, 0.0}, .acmCircular.PART_piston.MARKER_27))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_cylX, 0, .acmCircular.DV_cylZ}, .acmCircular.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 0.0, 0.0}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({-.acmCircular.DV_cylX, (.acmCircular.DV_cyl_maxL + .acmCircular.DV_cyl_minL) / 2, .acmCircular.DV_cylZ}, .acmCircular.ground.Mkr_master))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_43))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_piston.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_27))  &
   relative_to = .acmCircular.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
constraint modify joint cylindrical  &
   joint_name = .acmCircular.JT_axle_to_piston  &
   translational_ic = ((.acmCircular.DV_cyl_maxL + .acmCircular.DV_cyl_minL) / 2 - .acmCircular.DV_cyl_iniL)
!
geometry modify shape force  &
   force_name = .acmCircular.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.acmCircular.FORCE_cyl.i)
!
marker modify  &
   marker_name = .acmCircular.PART_linkL.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_21))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_acmL.MARKER_21, .acmCircular.PART_piston.MARKER_43, "z"))  &
   relative_to = .acmCircular.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkL.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_43))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_piston.MARKER_43, .acmCircular.PART_acmL.MARKER_21, "z"))  &
   relative_to = .acmCircular.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkL.MARKER_49  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmL.MARKER_21))  &
   relative_to = .acmCircular.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkL.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_43))  &
   relative_to = .acmCircular.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkR.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmR.MARKER_17))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_acmR.MARKER_17, .acmCircular.PART_piston.MARKER_27, "z"))  &
   relative_to = .acmCircular.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkR.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_27))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmCircular.PART_piston.MARKER_27, .acmCircular.PART_acmR.MARKER_17, "z"))  &
   relative_to = .acmCircular.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkR.MARKER_53  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_piston.MARKER_27))  &
   relative_to = .acmCircular.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
marker modify  &
   marker_name = .acmCircular.PART_linkR.MARKER_59  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmCircular.PART_acmR.MARKER_17))  &
   relative_to = .acmCircular.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmCircular.ground
!
material modify  &
   material_name = .acmCircular.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
geometry modify shape force  &
   force_name = .acmCircular.SFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.acmCircular.FORCE_mechanical_stop.i)
!
model display  &
   model_name = acmCircular
