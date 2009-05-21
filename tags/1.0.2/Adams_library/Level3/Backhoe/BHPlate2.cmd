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
   model_name = BHPlate2
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .BHPlate2.SV_Cyl_R_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate2.SV_Cyl_R_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate2.SV_Cyl_R_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate2.SV_Cyl_L_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate2.SV_Cyl_L_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate2.SV_Cyl_L_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .BHPlate2.steel  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BHPlate2.steel_2  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BHPlate2.steel_3  &
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
   default_coordinate_system = .BHPlate2.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.ground.Mkr_cylmount  &
   adams_id = 78  &
   location = -0.25, 0.0, 0.2  &
   orientation = -180.0d, 0.0d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.ground.Mkr_slave  &
   adams_id = 79  &
   location = -0.25, 0.0, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.ground.MKR_Master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.ground.MARKER_42  &
   adams_id = 42  &
   location = -0.1, -0.125, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.ground.MARKER_43  &
   adams_id = 43  &
   location = -0.1, 0.125, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.ground.MARKER_44  &
   adams_id = 44  &
   location = 0.2, -0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.ground.MARKER_45  &
   adams_id = 45  &
   location = 0.2, 0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
!--------------------------------- Part_To_Cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate2.Part_To_Cs  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.Part_To_Cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_12  &
   adams_id = 12  &
   location = 0.0, 0.0, -0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_13  &
   adams_id = 13  &
   location = 0.2, -0.2, -0.25  &
   orientation = 0.0d, 0.0d, 45.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_18  &
   adams_id = 18  &
   location = 0.0, 0.0, -0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_9  &
   adams_id = 9  &
   location = 0.2, 0.2, 0.25  &
   orientation = 0.0d, 0.0d, 135.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.cm  &
   adams_id = 65  &
   location = 0.1293222997, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_10  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_11  &
   adams_id = 11  &
   location = 0.2, -0.2, 0.25  &
   orientation = 0.0d, 0.0d, 45.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_14  &
   adams_id = 14  &
   location = 0.0, 0.0, -0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_15  &
   adams_id = 15  &
   location = 0.2, 0.2, -0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_19  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.25  &
   orientation = -180.0d, 0.0d, -180.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_36  &
   adams_id = 36  &
   location = 0.2, -0.2, -0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_41  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_37  &
   adams_id = 37  &
   location = 0.2, 0.2, -0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_71  &
   adams_id = 71  &
   location = 0.2, -0.2, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_73  &
   adams_id = 73  &
   location = 0.2, 0.2, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate2.Part_To_Cs  &
   material_type = .BHPlate2.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_1  &
   i_marker = .BHPlate2.Part_To_Cs.MARKER_8  &
   j_marker = .BHPlate2.Part_To_Cs.MARKER_9  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_2  &
   i_marker = .BHPlate2.Part_To_Cs.MARKER_10  &
   j_marker = .BHPlate2.Part_To_Cs.MARKER_11  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_4  &
   i_marker = .BHPlate2.Part_To_Cs.MARKER_14  &
   j_marker = .BHPlate2.Part_To_Cs.MARKER_15  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_3  &
   i_marker = .BHPlate2.Part_To_Cs.MARKER_12  &
   j_marker = .BHPlate2.Part_To_Cs.MARKER_13  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_6  &
   adams_id = 6  &
   center_marker = .BHPlate2.Part_To_Cs.MARKER_18  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_8  &
   adams_id = 8  &
   center_marker = .BHPlate2.Part_To_Cs.MARKER_19  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_19  &
   adams_id = 19  &
   center_marker = .BHPlate2.Part_To_Cs.MARKER_37  &
   angle_extent = 360.0  &
   length = 0.5  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_18  &
   adams_id = 18  &
   center_marker = .BHPlate2.Part_To_Cs.MARKER_36  &
   angle_extent = 360.0  &
   length = 0.5  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate2.Part_To_Cs  &
   color = RED  &
   name_visibility = off
!
!--------------------------------- Part_Plate ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate2.Part_Plate  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.Part_Plate
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_38  &
   adams_id = 38  &
   location = -0.1, -0.125, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_40  &
   adams_id = 40  &
   location = 0.0, 0.0, 0.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_39  &
   adams_id = 39  &
   location = -0.1, 0.125, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_20  &
   adams_id = 20  &
   location = 0.0, 0.0, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_21  &
   adams_id = 21  &
   location = -0.1, -0.125, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_28  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_22  &
   adams_id = 22  &
   location = 0.0, 0.0, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_23  &
   adams_id = 23  &
   location = -0.1, 0.125, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_24  &
   adams_id = 24  &
   location = -0.1, 0.125, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MKR_Slave  &
   adams_id = 25  &
   location = -0.25, 0.0, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BHPlate2.Part_Plate.MKR_Slave  &
   color = SILVER
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_29  &
   adams_id = 29  &
   location = -0.1, 0.125, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_26  &
   adams_id = 26  &
   location = -0.1, -0.125, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_27  &
   adams_id = 27  &
   location = -0.25, 0.0, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BHPlate2.Part_Plate.MARKER_27  &
   color = SILVER
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_32  &
   adams_id = 32  &
   location = 0.0, 0.0, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_33  &
   adams_id = 33  &
   location = -0.1, -0.125, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.cm  &
   adams_id = 66  &
   location = -0.1053692418, 0.0, -8.0019990475E-003  &
   orientation = -1.635858465E-010d, 2.9209478001d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_75  &
   adams_id = 75  &
   location = -0.1, -0.125, 0.2  &
   orientation = -180.0d, 0.0d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_76  &
   adams_id = 76  &
   location = -0.1, 0.125, 0.2  &
   orientation = -180.0d, 0.0d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_67  &
   adams_id = 67  &
   location = -0.1, 0.125, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MARKER_69  &
   adams_id = 69  &
   location = -0.1, -0.125, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.Part_Plate.MKR_Cylmount  &
   adams_id = 77  &
   location = -0.25, 0.0, 0.2  &
   orientation = -180.0d, 0.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate2.Part_Plate  &
   material_type = .BHPlate2.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_16  &
   i_marker = .BHPlate2.Part_Plate.MARKER_32  &
   j_marker = .BHPlate2.Part_Plate.MARKER_33  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_14  &
   i_marker = .BHPlate2.Part_Plate.MARKER_28  &
   j_marker = .BHPlate2.Part_Plate.MARKER_29  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_11  &
   i_marker = .BHPlate2.Part_Plate.MARKER_22  &
   j_marker = .BHPlate2.Part_Plate.MARKER_23  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_12  &
   i_marker = .BHPlate2.Part_Plate.MARKER_24  &
   j_marker = .BHPlate2.Part_Plate.MKR_Slave  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_13  &
   i_marker = .BHPlate2.Part_Plate.MARKER_26  &
   j_marker = .BHPlate2.Part_Plate.MARKER_27  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_10  &
   i_marker = .BHPlate2.Part_Plate.MARKER_20  &
   j_marker = .BHPlate2.Part_Plate.MARKER_21  &
   width = 0.1  &
   depth = 3.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.Part_Plate.CYLINDER_29  &
   adams_id = 29  &
   center_marker = .BHPlate2.Part_Plate.MARKER_39  &
   angle_extent = 360.0  &
   length = 0.4  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.Part_Plate.CYLINDER_28  &
   adams_id = 28  &
   center_marker = .BHPlate2.Part_Plate.MARKER_38  &
   angle_extent = 360.0  &
   length = 0.4  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape plate  &
   plate_name = .BHPlate2.Part_Plate.PLATE_35  &
   marker_name = .BHPlate2.Part_Plate.MARKER_75,  &
                 .BHPlate2.Part_Plate.MARKER_76,  &
                 .BHPlate2.Part_Plate.MKR_Cylmount  &
   width = 4.0E-002  &
   radius = 2.0E-002
!
part attributes  &
   part_name = .BHPlate2.Part_Plate  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- PART_R_Cyl ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate2.PART_R_Cyl  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.PART_R_Cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.MARKER_72  &
   adams_id = 72  &
   location = 0.2, -0.2, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master  &
   adams_id = 46  &
   location = 0.2, -0.2, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.cm  &
   adams_id = 47  &
   location = 0.1854478625, -0.1963619656, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_2  &
   adams_id = 2  &
   location = 0.2121267813, -0.151492875, 0.0  &
   orientation = 90.0d, -14.0362434679d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_6  &
   adams_id = 6  &
   location = 0.2, -0.2, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.MARKER_13  &
   adams_id = 48  &
   location = 0.2, -0.2, 0.0  &
   orientation = 90.0d, 75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_11  &
   adams_id = 49  &
   location = 0.2, -0.2, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate2.PART_R_Cyl  &
   material_type = .BHPlate2.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master  &
   angle_extent = 360.0  &
   length = 0.17  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .BHPlate2.PART_R_Cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Cyl.CYLINDER_5  &
   adams_id = 5  &
   center_marker = .BHPlate2.PART_R_Cyl.MARKER_13  &
   angle_extent = 360.0  &
   length = 0.13  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate2.PART_R_Cyl  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- PART_R_Pis ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate2.PART_R_Pis  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.PART_R_Pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.PART_R_Pis.MARKER_70  &
   adams_id = 70  &
   location = -0.1, -0.125, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Pis.MKR_R_pis_slave  &
   adams_id = 3  &
   location = -0.1, -0.125, 0.0  &
   orientation = 90.0d, 75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Pis.cm  &
   adams_id = 50  &
   location = -2.0771695821E-002, -0.144807076, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_4  &
   adams_id = 4  &
   location = -0.1121267813, -0.173507125, 0.0  &
   orientation = -90.0d, 14.0362434679d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_5  &
   adams_id = 5  &
   location = -0.1, -0.125, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_12  &
   adams_id = 51  &
   location = 0.2, -0.2, 0.0  &
   orientation = -90.0d, -75.9637565321d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate2.PART_R_Pis  &
   material_type = .BHPlate2.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .BHPlate2.PART_R_Pis.MKR_R_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .BHPlate2.PART_R_Pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate2.PART_R_Pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- PART_L_Cyl ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate2.PART_L_Cyl  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.PART_L_Cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.MARKER_74  &
   adams_id = 74  &
   location = 0.2, 0.2, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master  &
   adams_id = 52  &
   location = 0.2, 0.2, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.cm  &
   adams_id = 53  &
   location = 0.1854478625, 0.1963619656, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_2  &
   adams_id = 54  &
   location = 0.1878732187, 0.248507125, 0.0  &
   orientation = 90.0d, 14.0362434679d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_6  &
   adams_id = 55  &
   location = 0.2, 0.2, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.MARKER_13  &
   adams_id = 56  &
   location = 0.2, 0.2, 0.0  &
   orientation = -90.0d, 75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_11  &
   adams_id = 57  &
   location = 0.2, 0.2, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate2.PART_L_Cyl  &
   material_type = .BHPlate2.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Cyl.CYLINDER  &
   adams_id = 30  &
   center_marker = .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master  &
   angle_extent = 360.0  &
   length = 0.17  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Cyl.CYLINDER_2  &
   adams_id = 31  &
   center_marker = .BHPlate2.PART_L_Cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Cyl.CYLINDER_5  &
   adams_id = 32  &
   center_marker = .BHPlate2.PART_L_Cyl.MARKER_13  &
   angle_extent = 360.0  &
   length = 0.13  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate2.PART_L_Cyl  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- PART_L_Pis ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate2.PART_L_Pis  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.PART_L_Pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate2.PART_L_Pis.MARKER_68  &
   adams_id = 68  &
   location = -0.1, 0.125, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave  &
   adams_id = 58  &
   location = -0.1, 0.125, 0.0  &
   orientation = -90.0d, 75.9637565321d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Pis.cm  &
   adams_id = 59  &
   location = -2.0771695821E-002, 0.144807076, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_4  &
   adams_id = 60  &
   location = -8.7873218748E-002, 7.6492874993E-002, 0.0  &
   orientation = -90.0d, -14.0362434679d, -90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_5  &
   adams_id = 61  &
   location = -0.1, 0.125, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
marker create  &
   marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_12  &
   adams_id = 62  &
   location = 0.2, 0.2, 0.0  &
   orientation = 90.0d, -75.9637565321d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate2.PART_L_Pis  &
   material_type = .BHPlate2.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Pis.CYLINDER_3  &
   adams_id = 33  &
   center_marker = .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Pis.CYLINDER_4  &
   adams_id = 34  &
   center_marker = .BHPlate2.PART_L_Pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate2.PART_L_Pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .BHPlate2.Jt_To_Cs_Plate  &
   adams_id = 1  &
   i_marker_name = .BHPlate2.Part_Plate.MARKER_40  &
   j_marker_name = .BHPlate2.Part_To_Cs.MARKER_41
!
constraint attributes  &
   constraint_name = .BHPlate2.Jt_To_Cs_Plate  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BHPlate2.JT_R_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_11  &
   j_marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BHPlate2.JT_R_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BHPlate2.JT_L_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_11  &
   j_marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BHPlate2.JT_L_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate2.Jt_L_Pis_Plate  &
   adams_id = 5  &
   i_marker_name = .BHPlate2.Part_Plate.MARKER_67  &
   j_marker_name = .BHPlate2.PART_L_Pis.MARKER_68
!
constraint attributes  &
   constraint_name = .BHPlate2.Jt_L_Pis_Plate  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate2.Jt_R_Pis_Plate  &
   adams_id = 6  &
   i_marker_name = .BHPlate2.Part_Plate.MARKER_69  &
   j_marker_name = .BHPlate2.PART_R_Pis.MARKER_70
!
constraint attributes  &
   constraint_name = .BHPlate2.Jt_R_Pis_Plate  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate2.Jt_R_To_Cs_Cyl  &
   adams_id = 7  &
   i_marker_name = .BHPlate2.Part_To_Cs.MARKER_71  &
   j_marker_name = .BHPlate2.PART_R_Cyl.MARKER_72
!
constraint attributes  &
   constraint_name = .BHPlate2.Jt_R_To_Cs_Cyl  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate2.Jt_L_To_Cs_Cyl  &
   adams_id = 8  &
   i_marker_name = .BHPlate2.Part_To_Cs.MARKER_73  &
   j_marker_name = .BHPlate2.PART_L_Cyl.MARKER_74
!
constraint attributes  &
   constraint_name = .BHPlate2.Jt_L_To_Cs_Cyl  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .BHPlate2.F_Cyl_R_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_5  &
   j_marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .BHPlate2.F_Cyl_L_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_5  &
   j_marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .BHPlate2.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=50 model_name=.BHPlateNA initial_static=no"
!
simulation script create  &
   sim_script_name = .BHPlate2.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
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
   variable_name = .BHPlate2.DV_dist_y_CylToCs  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .BHPlate2.DV_dist_y_CylPlate  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .BHPlate2.DV_dist_x_Boom  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .BHPlate2.DV_dist_x_CylToCs  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .BHPlate2.DV_dist_x_CylPlate  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .BHPlate2.DV_Height_Plate  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .BHPlate2.DV_RefSize  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_R_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.22
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_R_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_R_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_R_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.5E-002
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_L_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.22
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_L_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_L_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_L_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .BHPlate2.DV_Cyl_L_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.5E-002
!
variable create  &
   variable_name = .BHPlate2.DV_dist_z_Boom  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .BHPlate2.SV_Cyl_R_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BHPlate2.SV_Cyl_R_P  &
   function = "DZ( .BHPlate2.PART_R_Pis.MKR_R_pis_slave, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .BHPlate2.SV_Cyl_R_V  &
   function = "VZ( .BHPlate2.PART_R_Pis.MKR_R_pis_slave, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .BHPlate2.SV_Cyl_L_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BHPlate2.SV_Cyl_L_P  &
   function = "DZ( .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master)"
!
data_element modify variable  &
   variable_name = .BHPlate2.SV_Cyl_L_V  &
   function = "VZ( .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .BHPlate2.F_Cyl_R_force  &
   function = "VARVAL( .BHPlate2.SV_Cyl_R_F) +",  &
              "BISTOP( ",  &
              "DZ( .BHPlate2.PART_R_Pis.MKR_R_pis_slave, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master) , ",  &
              "VZ( .BHPlate2.PART_R_Pis.MKR_R_pis_slave, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master) , ",  &
              ".BHPlate2.DV_Cyl_R_min_length , .BHPlate2.DV_Cyl_R_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .BHPlate2.F_Cyl_L_force  &
   function = "VARVAL( .BHPlate2.SV_Cyl_L_F) +",  &
              "BISTOP( ",  &
              "DZ( .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master) , ",  &
              "VZ( .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master) , ",  &
              ".BHPlate2.DV_Cyl_L_min_length , .BHPlate2.DV_Cyl_L_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .BHPlate2.ground.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_CylPlate, -.BHPlate2.DV_dist_y_CylPlate / 2, 0}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 90}, .BHPlate2.ground.MKR_Master))
!
marker modify  &
   marker_name = .BHPlate2.ground.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_CylPlate, .BHPlate2.DV_dist_y_CylPlate / 2, 0}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))
!
marker modify  &
   marker_name = .BHPlate2.ground.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate2.DV_dist_x_CylToCs, -.BHPlate2.DV_dist_y_CylToCs / 2, 0}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))
!
marker modify  &
   marker_name = .BHPlate2.ground.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate2.DV_dist_x_CylToCs, .BHPlate2.DV_dist_y_CylToCs / 2, 0}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))
!
marker modify  &
   marker_name = .BHPlate2.ground.Mkr_cylmount  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_Boom, 0 / 2, .BHPlate2.DV_Height_Plate / 2 - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_IN_PLANE(.BHPlate2.Part_Plate.MARKER_76, .BHPlate2.Part_Plate.MARKER_75, .BHPlate2.Part_Plate.MKR_Cylmount, "x_xy"))
!
marker modify  &
   marker_name = .BHPlate2.ground.Mkr_slave  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_Boom, 0, -.BHPlate2.DV_dist_z_Boom}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))
!
material modify  &
   material_name = .BHPlate2.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BHPlate2.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BHPlate2.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -.BHPlate2.DV_dist_z_Boom - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate2.DV_dist_x_CylToCs, -.BHPlate2.DV_dist_y_CylToCs / 2, -.BHPlate2.DV_dist_z_Boom - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_To_Cs.MARKER_13, .BHPlate2.Part_To_Cs.MARKER_14, "y"))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_12))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .BHPlate2.DV_Height_Plate - .BHPlate2.DV_dist_z_Boom - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate2.DV_dist_x_CylToCs, .BHPlate2.DV_dist_y_CylToCs / 2, .BHPlate2.DV_Height_Plate - .BHPlate2.DV_dist_z_Boom - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_To_Cs.MARKER_9, .BHPlate2.Part_To_Cs.MARKER_8, "y"))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate2.DV_dist_x_CylToCs, -.BHPlate2.DV_dist_y_CylToCs / 2, .BHPlate2.DV_Height_Plate - .BHPlate2.DV_dist_z_Boom - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_To_Cs.MARKER_11, .BHPlate2.Part_To_Cs.MARKER_10, "y"))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_12))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate2.DV_dist_x_CylToCs, .BHPlate2.DV_dist_y_CylToCs / 2, -.BHPlate2.DV_dist_z_Boom - 5.0E-002}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_8))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_To_Cs.MARKER_19, .BHPlate2.Part_To_Cs.MARKER_18, "z"))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_36  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_13))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_To_Cs.MARKER_36, .BHPlate2.Part_To_Cs.MARKER_11, "z"))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_15))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_To_Cs.MARKER_37, .BHPlate2.Part_To_Cs.MARKER_9, "z"))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_71  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_44))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_To_Cs.MARKER_73  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_45))  &
   relative_to = .BHPlate2.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_1  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_2  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_4  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_To_Cs.LINK_3  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_6  &
   radius = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_8  &
   radius = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_19  &
   length = (.BHPlate2.DV_Height_Plate)  &
   radius = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.Part_To_Cs.CYLINDER_18  &
   length = (.BHPlate2.DV_Height_Plate)  &
   radius = (.BHPlate2.DV_RefSize * 0.3)
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_38  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_21))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_40  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_To_Cs.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_39  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_23))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.Part_Plate.MARKER_39, .BHPlate2.Part_Plate.MARKER_29, "z"))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -.BHPlate2.DV_dist_z_Boom}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_CylPlate, -.BHPlate2.DV_dist_y_CylPlate / 2, -.BHPlate2.DV_dist_z_Boom}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .BHPlate2.DV_Height_Plate - .BHPlate2.DV_dist_z_Boom - 0.1}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_20))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_CylPlate, .BHPlate2.DV_dist_y_CylPlate / 2, -.BHPlate2.DV_dist_z_Boom}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_23))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MKR_Slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.Mkr_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.Mkr_slave))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_29  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_CylPlate, .BHPlate2.DV_dist_y_CylPlate / 2, .BHPlate2.DV_Height_Plate - .BHPlate2.DV_dist_z_Boom - 0.1}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_21))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MKR_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_28))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate2.DV_dist_x_CylPlate, -.BHPlate2.DV_dist_y_CylPlate / 2, .BHPlate2.DV_Height_Plate - .BHPlate2.DV_dist_z_Boom - 0.1}, .BHPlate2.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MKR_Master))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_75  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_33))  &
   orientation =   &
      (ORI_IN_PLANE(.BHPlate2.Part_Plate.MARKER_76, .BHPlate2.Part_Plate.MARKER_75, .BHPlate2.Part_Plate.MKR_Cylmount, "x_xy"))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_76  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.Part_Plate.MARKER_29))  &
   orientation =   &
      (ORI_IN_PLANE(.BHPlate2.Part_Plate.MARKER_76, .BHPlate2.Part_Plate.MARKER_75, .BHPlate2.Part_Plate.MKR_Cylmount, "x_xy"))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_67  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_43))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MARKER_69  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_42))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.Part_Plate.MKR_Cylmount  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.Mkr_cylmount))  &
   orientation =   &
      (ORI_IN_PLANE(.BHPlate2.Part_Plate.MARKER_76, .BHPlate2.Part_Plate.MARKER_75, .BHPlate2.Part_Plate.MKR_Cylmount, "x_xy"))  &
   relative_to = .BHPlate2.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_16  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_14  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_11  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_12  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_13  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape link  &
   link_name = .BHPlate2.Part_Plate.LINK_10  &
   width = (.BHPlate2.DV_RefSize)  &
   depth = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.Part_Plate.CYLINDER_29  &
   length = (.BHPlate2.DV_Height_Plate - 0.1)  &
   radius = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.Part_Plate.CYLINDER_28  &
   length = (.BHPlate2.DV_Height_Plate - 0.1)  &
   radius = (.BHPlate2.DV_RefSize * 0.3)
!
geometry modify shape plate  &
   plate_name = .BHPlate2.Part_Plate.PLATE_35  &
   width = (.BHPlate2.DV_RefSize * 0.4)  &
   radius = (2.0cm)
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Cyl.MARKER_72  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_44))  &
   relative_to = .BHPlate2.PART_R_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_44))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.ground.MARKER_44, .BHPlate2.ground.MARKER_42, "z"))  &
   relative_to = .BHPlate2.PART_R_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate2.DV_Cyl_R_rc, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Cyl.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Cyl.CYLINDER  &
   length = (.BHPlate2.DV_Cyl_R_min_length - .BHPlate2.DV_Cyl_R_rc)  &
   radius = (.BHPlate2.DV_Cyl_R_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Cyl.CYLINDER_2  &
   length = (.BHPlate2.DV_Cyl_R_rc * 2)  &
   radius = (.BHPlate2.DV_Cyl_R_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Cyl.CYLINDER_5  &
   length = (.BHPlate2.DV_Cyl_R_max_length - .BHPlate2.DV_Cyl_R_min_length - .BHPlate2.DV_Cyl_R_rc)  &
   radius = (.BHPlate2.DV_Cyl_R_rc)
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Pis.MARKER_70  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_42))  &
   relative_to = .BHPlate2.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Pis.MKR_R_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_42))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate2.DV_Cyl_R_rc, 0}, .BHPlate2.PART_R_Pis.MKR_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate2.PART_R_Pis.MKR_R_pis_slave))  &
   relative_to = .BHPlate2.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_R_Pis.MKR_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_R_Pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_R_Cyl.MKR_BHPlateNA_R_cyl_master))  &
   relative_to = .BHPlate2.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Pis.CYLINDER_3  &
   length = (.BHPlate2.DV_Cyl_R_max_length - .BHPlate2.DV_Cyl_R_rc)  &
   radius = (.BHPlate2.DV_Cyl_R_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_R_Pis.CYLINDER_4  &
   length = (.BHPlate2.DV_Cyl_R_rc * 2)  &
   radius = (.BHPlate2.DV_Cyl_R_rc)
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Cyl.MARKER_74  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_45))  &
   relative_to = .BHPlate2.PART_L_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_45))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate2.ground.MARKER_45, .BHPlate2.ground.MARKER_43, "z"))  &
   relative_to = .BHPlate2.PART_L_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate2.DV_Cyl_L_rc, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Cyl.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Cyl.CYLINDER  &
   length = (.BHPlate2.DV_Cyl_L_min_length - .BHPlate2.DV_Cyl_L_rc)  &
   radius = (.BHPlate2.DV_Cyl_L_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Cyl.CYLINDER_2  &
   length = (.BHPlate2.DV_Cyl_L_rc * 2)  &
   radius = (.BHPlate2.DV_Cyl_L_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Cyl.CYLINDER_5  &
   length = (.BHPlate2.DV_Cyl_L_max_length - .BHPlate2.DV_Cyl_L_min_length - .BHPlate2.DV_Cyl_L_rc)  &
   radius = (.BHPlate2.DV_Cyl_L_rc)
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Pis.MARKER_68  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_43))  &
   relative_to = .BHPlate2.PART_L_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.ground.MARKER_43))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate2.DV_Cyl_L_rc, 0}, .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave))  &
   relative_to = .BHPlate2.PART_L_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_L_Pis.MKR_BHPlateNA_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
marker modify  &
   marker_name = .BHPlate2.PART_L_Pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate2.PART_L_Cyl.MKR_BHPlateNA_L_cyl_master))  &
   relative_to = .BHPlate2.PART_L_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate2.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Pis.CYLINDER_3  &
   length = (.BHPlate2.DV_Cyl_L_max_length - .BHPlate2.DV_Cyl_L_rc)  &
   radius = (.BHPlate2.DV_Cyl_L_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate2.PART_L_Pis.CYLINDER_4  &
   length = (.BHPlate2.DV_Cyl_L_rc * 2)  &
   radius = (.BHPlate2.DV_Cyl_L_rc)
!
model display  &
   model_name = BHPlate2
