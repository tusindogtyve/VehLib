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
   model_name = BHPlate1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_R_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_R_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_R_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate1.SV_Cyl_L_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_L_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_L_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .BHPlate1.steel  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BHPlate1.steel_2  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BHPlate1.steel_3  &
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
   default_coordinate_system = .BHPlate1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.ground.MKR_Master  &
   adams_id = 1  &
   location = 3.0, 3.0, 3.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.ground.Mkr_slave  &
   adams_id = 58  &
   location = 2.7, 3.0, 3.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.ground.Mkr_Cylmount  &
   adams_id = 59  &
   location = 2.75, 3.0, 3.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.ground  &
   material_type = .BHPlate1.steel
!
part attributes  &
   part_name = .BHPlate1.ground  &
   name_visibility = off
!
!--------------------------------- Part_Plate ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate1.Part_Plate  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.Part_Plate
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MARKER_2  &
   adams_id = 2  &
   location = 3.0, 3.0, 3.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt  &
   adams_id = 3  &
   location = 2.9, 3.0, 3.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MARKER_4  &
   adams_id = 4  &
   location = 3.0, 3.0, 3.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MKR_Cylmount  &
   adams_id = 5  &
   location = 2.75, 3.0, 3.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MARKER_99  &
   adams_id = 6  &
   location = 2.7, 3.0, 3.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.cm  &
   location = 2.8620008978, 3.0, 3.293732187  &
   orientation = -180.0d, -4.0654103899d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MARKER_11  &
   adams_id = 11  &
   location = 3.0, 3.0, 3.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MARKER_45  &
   adams_id = 45  &
   location = 2.9, 3.0, 3.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_Plate.MARKER_47  &
   adams_id = 47  &
   location = 2.9, 3.0, 3.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.Part_Plate  &
   material_type = .BHPlate1.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .BHPlate1.Part_Plate.PLATE_1  &
   marker_name = .BHPlate1.Part_Plate.MARKER_2,  &
                 .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt,  &
                 .BHPlate1.Part_Plate.MARKER_4,  &
                 .BHPlate1.Part_Plate.MKR_Cylmount,  &
                 .BHPlate1.Part_Plate.MARKER_99  &
   width = 5.0E-002  &
   radius = 2.0E-002
!
part attributes  &
   part_name = .BHPlate1.Part_Plate  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- Part_To_Cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate1.Part_To_Cs  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.Part_To_Cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_55  &
   adams_id = 55  &
   location = 3.0, 3.0, 3.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_56  &
   adams_id = 56  &
   location = 3.15, 3.0, 3.6  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_57  &
   adams_id = 57  &
   location = 3.15, 3.0, 3.6  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.cm  &
   location = 3.1371703836, 3.0, 3.2859225064  &
   orientation = 7.6928138528E-011d, -0.333850378d, 1.3202568858E-008d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_12  &
   adams_id = 12  &
   location = 3.0, 3.0, 3.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_41  &
   adams_id = 41  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_L  &
   adams_id = 18  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_R  &
   adams_id = 19  &
   location = 3.15, 2.7, 3.25  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_43  &
   adams_id = 43  &
   location = 3.15, 2.7, 3.25  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_50  &
   adams_id = 50  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_51  &
   adams_id = 51  &
   location = 3.15, 2.7, 3.25  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_52  &
   adams_id = 52  &
   location = 3.0, 3.0, 3.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_53  &
   adams_id = 53  &
   location = 3.15, 3.0, 3.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.Part_To_Cs  &
   material_type = .BHPlate1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BHPlate1.Part_To_Cs.LINK_5  &
   i_marker = .BHPlate1.Part_To_Cs.MARKER_50  &
   j_marker = .BHPlate1.Part_To_Cs.MARKER_51  &
   width = 6.0E-002  &
   depth = 1.0E-002
!
geometry create shape link  &
   link_name = .BHPlate1.Part_To_Cs.LINK_2  &
   i_marker = .BHPlate1.Part_To_Cs.MARKER_52  &
   j_marker = .BHPlate1.Part_To_Cs.MARKER_53  &
   width = 6.0E-002  &
   depth = 1.0E-002
!
geometry create shape link  &
   link_name = .BHPlate1.Part_To_Cs.LINK_3  &
   i_marker = .BHPlate1.Part_To_Cs.MARKER_55  &
   j_marker = .BHPlate1.Part_To_Cs.MARKER_56  &
   width = 6.0E-002  &
   depth = 1.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.Part_To_Cs.CYLINDER_4  &
   adams_id = 30  &
   center_marker = .BHPlate1.Part_To_Cs.MARKER_57  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate1.Part_To_Cs  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- PART_R_cyl ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate1.PART_R_cyl  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.PART_R_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.PART_R_cyl.MARKER_42  &
   adams_id = 42  &
   location = 3.15, 2.7, 3.25  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master  &
   adams_id = 20  &
   location = 3.15, 2.7, 3.25  &
   orientation = -90.0d, -39.8055710923d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_cyl.cm  &
   adams_id = 21  &
   location = 3.0946697769, 2.7663962677, 3.25  &
   orientation = -90.0d, -39.8055710922d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_2  &
   adams_id = 22  &
   location = 3.1730466384, 2.719205532, 3.25  &
   orientation = 90.0d, -50.1944289077d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_6  &
   adams_id = 23  &
   location = 3.15, 2.7, 3.25  &
   orientation = -90.0d, -39.8055710923d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_11  &
   adams_id = 24  &
   location = 3.15, 2.7, 3.25  &
   orientation = -90.0d, -39.8055710923d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.PART_R_cyl  &
   material_type = .BHPlate1.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master  &
   angle_extent = 360.0  &
   length = 0.22  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .BHPlate1.PART_R_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate1.PART_R_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- PART_R_Pis ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate1.PART_R_Pis  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.PART_R_Pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.PART_R_Pis.MARKER_46  &
   adams_id = 46  &
   location = 2.9, 3.0, 3.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave  &
   adams_id = 25  &
   location = 2.9, 3.0, 3.25  &
   orientation = 90.0d, 39.8055710923d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_Pis.cm  &
   adams_id = 26  &
   location = 2.94801383, 2.942383404, 3.25  &
   orientation = -90.0d, -39.8055710923d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_4  &
   adams_id = 27  &
   location = 2.8769533616, 2.980794468, 3.25  &
   orientation = -90.0d, 50.1944289077d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_5  &
   adams_id = 28  &
   location = 2.9, 3.0, 3.25  &
   orientation = -90.0d, -39.8055710923d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_12  &
   adams_id = 29  &
   location = 3.15, 2.7, 3.25  &
   orientation = -90.0d, -39.8055710923d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.PART_R_Pis  &
   material_type = .BHPlate1.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_Pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave  &
   angle_extent = 360.0  &
   length = 0.25  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_Pis.CYLINDER_4  &
   adams_id = 5  &
   center_marker = .BHPlate1.PART_R_Pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate1.PART_R_Pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- PART_L_cyl ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate1.PART_L_cyl  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.PART_L_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.PART_L_cyl.MARKER_40  &
   adams_id = 40  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master  &
   adams_id = 30  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_cyl.cm  &
   adams_id = 31  &
   location = 3.0946697769, 3.2336037323, 3.25  &
   orientation = -90.0d, 39.8055710923d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_2  &
   adams_id = 32  &
   location = 3.1269533616, 3.319205532, 3.25  &
   orientation = 90.0d, 50.1944289077d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_6  &
   adams_id = 33  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_11  &
   adams_id = 34  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.PART_L_cyl  &
   material_type = .BHPlate1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_cyl.CYLINDER  &
   adams_id = 6  &
   center_marker = .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master  &
   angle_extent = 360.0  &
   length = 0.22  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_cyl.CYLINDER_2  &
   adams_id = 7  &
   center_marker = .BHPlate1.PART_L_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate1.PART_L_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- PART_L_pis ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
part create rigid_body name_and_position  &
   part_name = .BHPlate1.PART_L_pis  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.PART_L_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BHPlate1.PART_L_pis.MARKER_44  &
   adams_id = 44  &
   location = 2.9, 3.0, 3.25  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave  &
   adams_id = 35  &
   location = 2.9, 3.0, 3.25  &
   orientation = -90.0d, 39.8055710923d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_pis.cm  &
   adams_id = 36  &
   location = 2.94801383, 3.057616596, 3.25  &
   orientation = -90.0d, 39.8055710922d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_pis.cyl_MKR_4  &
   adams_id = 37  &
   location = 2.9230466384, 2.980794468, 3.25  &
   orientation = -90.0d, -50.1944289077d, -90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_pis.cyl_MKR_5  &
   adams_id = 38  &
   location = 2.9, 3.0, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
marker create  &
   marker_name = .BHPlate1.PART_L_pis.cyl_MKR_12  &
   adams_id = 39  &
   location = 3.15, 3.3, 3.25  &
   orientation = 90.0d, -39.8055710923d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .BHPlate1.PART_L_pis  &
   material_type = .BHPlate1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_pis.CYLINDER_3  &
   adams_id = 8  &
   center_marker = .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave  &
   angle_extent = 360.0  &
   length = 0.25  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_pis.CYLINDER_4  &
   adams_id = 9  &
   center_marker = .BHPlate1.PART_L_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BHPlate1.PART_L_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .BHPlate1.Jt_To_Cs_Plate  &
   adams_id = 1  &
   i_marker_name = .BHPlate1.Part_Plate.MARKER_11  &
   j_marker_name = .BHPlate1.Part_To_Cs.MARKER_12
!
constraint attributes  &
   constraint_name = .BHPlate1.Jt_To_Cs_Plate  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate1.Jt_L_Pis_Plate  &
   adams_id = 7  &
   i_marker_name = .BHPlate1.PART_L_pis.MARKER_44  &
   j_marker_name = .BHPlate1.Part_Plate.MARKER_45
!
constraint attributes  &
   constraint_name = .BHPlate1.Jt_L_Pis_Plate  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate1.Jt_L_To_Cs_Cyl  &
   adams_id = 5  &
   i_marker_name = .BHPlate1.PART_L_cyl.MARKER_40  &
   j_marker_name = .BHPlate1.Part_To_Cs.MARKER_41
!
constraint attributes  &
   constraint_name = .BHPlate1.Jt_L_To_Cs_Cyl  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BHPlate1.JT_R_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_11  &
   j_marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BHPlate1.JT_R_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BHPlate1.JT_L_cyl_pis  &
   adams_id = 4  &
   i_marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_11  &
   j_marker_name = .BHPlate1.PART_L_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BHPlate1.JT_L_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate1.Jt_R_To_Cs_Cyl  &
   adams_id = 6  &
   i_marker_name = .BHPlate1.PART_R_cyl.MARKER_42  &
   j_marker_name = .BHPlate1.Part_To_Cs.MARKER_43
!
constraint attributes  &
   constraint_name = .BHPlate1.Jt_R_To_Cs_Cyl  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BHPlate1.Jt_R_Pis_Plate  &
   adams_id = 8  &
   i_marker_name = .BHPlate1.PART_R_Pis.MARKER_46  &
   j_marker_name = .BHPlate1.Part_Plate.MARKER_47
!
constraint attributes  &
   constraint_name = .BHPlate1.Jt_R_Pis_Plate  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .BHPlate1.F_Cyl_R_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_5  &
   j_marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .BHPlate1.F_Cyl_L_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .BHPlate1.PART_L_pis.cyl_MKR_5  &
   j_marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .BHPlate1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BHPlate1.Last_Sim_2  &
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
   variable_name = .BHPlate1.DV_Dist_x_To_Cs  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .BHPlate1.DV_Dist_y_Cylinders  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .BHPlate1.DV_Dist_x_CylJt  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .BHPlate1.DV_Height_Plate  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .BHPlate1.DV_Dist_x_Boom  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .BHPlate1.DV_Dist_z_Boom  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .BHPlate1.DV_Dist_z_CylJt  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_R_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_R_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_R_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_R_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_L_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_L_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_L_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_L_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .BHPlate1.DV_Cyl_L_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_R_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_R_P  &
   function = "DZ( .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_R_V  &
   function = "VZ( .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .BHPlate1.SV_Cyl_L_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_L_P  &
   function = "DZ( .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master)"
!
data_element modify variable  &
   variable_name = .BHPlate1.SV_BHPlate_Cyl_L_V  &
   function = "VZ( .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .BHPlate1.F_Cyl_R_force  &
   function = "VARVAL( .BHPlate1.SV_BHPlate_Cyl_R_F) + ",  &
              "BISTOP( ",  &
              "DZ( .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master) , ",  &
              "VZ( .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master) , ",  &
              ".BHPlate1.DV_Cyl_R_min_length , .BHPlate1.DV_Cyl_R_max_length , 50e6 , 1.0 , 20e6 , 0.1 )"
!
force modify direct single_component_force  &
   single_component_force_name = .BHPlate1.F_Cyl_L_force  &
   function = "VARVAL( .BHPlate1.SV_Cyl_L_F) + ",  &
              "BISTOP( ",  &
              "DZ( .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master) , ",  &
              "VZ( .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master) , ",  &
              ".BHPlate1.DV_Cyl_L_min_length , .BHPlate1.DV_Cyl_L_max_length , 50e6 , 1.0 , 20e6 , 0.1 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .BHPlate1.ground.Mkr_slave  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_Boom, 0, .BHPlate1.DV_Dist_z_Boom}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))
!
marker modify  &
   marker_name = .BHPlate1.ground.Mkr_Cylmount  &
   location =   &
      (LOC_RELATIVE_TO({-0.25, 0, 0.4}, .BHPlate1.ground.MKR_Master))
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_CylJt, 0, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .BHPlate1.DV_Height_Plate}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MKR_Cylmount  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.Mkr_Cylmount))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MARKER_99  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_Boom, 0, .BHPlate1.DV_Dist_z_Boom}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape plate  &
   plate_name = .BHPlate1.Part_Plate.PLATE_1  &
   width = (5.0cm)  &
   radius = (2.0cm)
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_CylJt, 0, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_Plate.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_CylJt, 0, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_L  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, .BHPlate1.DV_Dist_y_Cylinders / 2, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_R  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, -.BHPlate1.DV_Dist_y_Cylinders / 2, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, -.BHPlate1.DV_Dist_y_Cylinders / 2, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape link  &
   link_name = .BHPlate1.Part_To_Cs.LINK_5  &
   width = (6.0E-002meter)  &
   depth = (1.0E-002meter)
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, .BHPlate1.DV_Dist_y_Cylinders / 2, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, -.BHPlate1.DV_Dist_y_Cylinders / 2, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape link  &
   link_name = .BHPlate1.Part_To_Cs.LINK_2  &
   width = (6.0E-002meter)  &
   depth = (1.0E-002meter)
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_53  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape link  &
   link_name = .BHPlate1.Part_To_Cs.LINK_3  &
   width = (6.0E-002meter)  &
   depth = (1.0E-002meter)
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_55  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.Part_Plate.MARKER_4))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_56  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, 0, .BHPlate1.DV_Height_Plate}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.Part_To_Cs.CYLINDER_4  &
   length = (.BHPlate1.DV_Height_Plate)  &
   radius = (2.0E-002meter)
!
marker modify  &
   marker_name = .BHPlate1.Part_To_Cs.MARKER_57  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, 0, .BHPlate1.DV_Height_Plate}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.Part_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
material modify  &
   material_name = .BHPlate1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BHPlate1.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_R))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_R, .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt, "z"))  &
   relative_to = .BHPlate1.PART_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate1.DV_Cyl_R_rc, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   relative_to = .BHPlate1.PART_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   relative_to = .BHPlate1.PART_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   relative_to = .BHPlate1.PART_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_cyl.CYLINDER  &
   length = (.BHPlate1.DV_Cyl_R_min_length - .BHPlate1.DV_Cyl_R_rc)  &
   radius = (.BHPlate1.DV_Cyl_R_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_cyl.CYLINDER_2  &
   length = (.BHPlate1.DV_Cyl_R_rc * 2)  &
   radius = (.BHPlate1.DV_Cyl_R_rc)
!
marker modify  &
   marker_name = .BHPlate1.PART_R_cyl.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({.BHPlate1.DV_Dist_x_To_Cs, -.BHPlate1.DV_Dist_y_Cylinders / 2, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.PART_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   relative_to = .BHPlate1.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate1.DV_Cyl_R_rc, 0}, .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave))  &
   relative_to = .BHPlate1.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_R_Pis.MKR_BHPlateCase_Plate_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   relative_to = .BHPlate1.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_R_Pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_R_cyl.MKR_BHPlateCase_Plate_R_cyl_master))  &
   relative_to = .BHPlate1.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_Pis.CYLINDER_3  &
   length = (.BHPlate1.DV_Cyl_R_min_length)  &
   radius = (.BHPlate1.DV_Cyl_R_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_R_Pis.CYLINDER_4  &
   length = (.BHPlate1.DV_Cyl_R_rc * 2)  &
   radius = (.BHPlate1.DV_Cyl_R_rc)
!
marker modify  &
   marker_name = .BHPlate1.PART_R_Pis.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_CylJt, 0, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.PART_R_Pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
material modify  &
   material_name = .BHPlate1.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_L))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BHPlate1.Part_To_Cs.MKR_BHPlatecase_CylCs_L, .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt, "z"))  &
   relative_to = .BHPlate1.PART_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate1.DV_Cyl_L_rc, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_cyl.CYLINDER  &
   length = (.BHPlate1.DV_Cyl_L_min_length - .BHPlate1.DV_Cyl_L_rc)  &
   radius = (.BHPlate1.DV_Cyl_L_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_cyl.CYLINDER_2  &
   length = (.BHPlate1.DV_Cyl_L_rc * 2)  &
   radius = (.BHPlate1.DV_Cyl_L_rc)
!
marker modify  &
   marker_name = .BHPlate1.PART_L_cyl.MARKER_40  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.Part_Plate.MKR_BHPlateCase_CylJt))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BHPlate1.DV_Cyl_L_rc, 0}, .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave))  &
   relative_to = .BHPlate1.PART_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_pis.MKR_BHPlateCase_Plate_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
marker modify  &
   marker_name = .BHPlate1.PART_L_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.PART_L_cyl.MKR_BHPlateCase_Plate_L_cyl_master))  &
   relative_to = .BHPlate1.PART_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_pis.CYLINDER_3  &
   length = (.BHPlate1.DV_Cyl_L_min_length)  &
   radius = (.BHPlate1.DV_Cyl_L_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BHPlate1.PART_L_pis.CYLINDER_4  &
   length = (.BHPlate1.DV_Cyl_L_rc * 2)  &
   radius = (.BHPlate1.DV_Cyl_L_rc)
!
marker modify  &
   marker_name = .BHPlate1.PART_L_pis.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({-.BHPlate1.DV_Dist_x_CylJt, 0, .BHPlate1.DV_Dist_z_CylJt}, .BHPlate1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BHPlate1.ground.MKR_Master))  &
   relative_to = .BHPlate1.PART_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BHPlate1.ground
!
model display  &
   model_name = BHPlate1
