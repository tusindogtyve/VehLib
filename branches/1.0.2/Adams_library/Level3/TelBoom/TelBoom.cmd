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
   model_name = TelBoom
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .TelBoom.SV_Cyl_boom_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .TelBoom.SV_Cyl_boom_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .TelBoom.SV_Cyl_boom_V  &
   adams_id = 40  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .TelBoom.steel  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .TelBoom.steel_2  &
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
   default_coordinate_system = .TelBoom.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.ground.Mkr_Master_Boom  &
   adams_id = 31  &
   location = 0.13461697, 0.0, 3.9811479899E-002  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_34  &
   adams_id = 34  &
   location = 0.8640022697, 0.0, 0.5125754005  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_35  &
   adams_id = 35  &
   location = 1.5933875694, 0.0, 0.9853393211  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_36  &
   adams_id = 36  &
   location = 2.3227728691, 0.0, 1.4581032416  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_37  &
   adams_id = 37  &
   location = 3.0521581688, 0.0, 1.9308671622  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_38  &
   adams_id = 38  &
   location = 3.3411598913, 0.0, 2.1181887157  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_39  &
   adams_id = 39  &
   location = 4.070545191, 0.0, 2.5909526362  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_40  &
   adams_id = 40  &
   location = 4.7999304906, 0.0, 3.0637165568  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_41  &
   adams_id = 41  &
   location = 5.5293157903, 0.0, 3.5364804774  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_42  &
   adams_id = 42  &
   location = 5.8183175129, 0.0, 3.7238020308  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_43  &
   adams_id = 43  &
   location = 6.5477028125, 0.0, 4.1965659514  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_44  &
   adams_id = 44  &
   location = 7.2770881122, 0.0, 4.669329872  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_45  &
   adams_id = 45  &
   location = 8.0064734119, 0.0, 5.1420937926  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.Mkr_Boom2  &
   adams_id = 96  &
   location = 2.6117745916, 0.0, 1.6454247951  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.Mkr_Boom3  &
   adams_id = 97  &
   location = 5.0889322132, 0.0, 3.2510381103  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.ground.MARKER_136  &
   adams_id = 136  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .TelBoom.ground.Mkr_Master  &
   adams_id = 156  &
   location = 0.0, 0.0, 0.2475  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.ground  &
   material_type = .TelBoom.steel
!
part attributes  &
   part_name = .TelBoom.ground  &
   name_visibility = off
!
!-------------------------------- PART_Boom1_1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom1_1  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom1_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_1  &
   adams_id = 1  &
   location = 0.2420385926, 0.144, -0.1259197634  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_1.cm  &
   adams_id = 106  &
   location = 0.4993096199, 0.0, 0.2761934402  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_6  &
   adams_id = 6  &
   location = 0.2365995231, 0.134, -0.1175283081  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_46  &
   adams_id = 46  &
   location = 0.8640022697, 0.0, 0.5125754005  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_70  &
   adams_id = 70  &
   location = 0.8640022697, 0.0, 0.5125754005  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_75  &
   adams_id = 75  &
   location = 0.0, 0.0, 0.2475  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_1  &
   density = 7801.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_1.BOX_1  &
   adams_id = 1  &
   corner_marker = .TelBoom.PART_Boom1_1.MARKER_1  &
   diag_corner_coords = 0.8692, 0.395, 0.288
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_1.BOX_6  &
   adams_id = 6  &
   corner_marker = .TelBoom.PART_Boom1_1.MARKER_6  &
   diag_corner_coords = 0.8692, 0.375, 0.268
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom1_1.CSG_11  &
   adams_id = 11  &
   base_object = .TelBoom.PART_Boom1_1.BOX_1  &
   object = .TelBoom.PART_Boom1_1.BOX_6  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom1_1  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom1_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom1_2  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_2  &
   adams_id = 2  &
   location = 0.9714238923, 0.144, 0.3468441572  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.cm  &
   adams_id = 107  &
   location = 1.2286949196, 0.0, 0.7489573608  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_7  &
   adams_id = 7  &
   location = 0.9659848228, 0.134, 0.3552356125  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_47  &
   adams_id = 47  &
   location = 0.8640022697, 0.0, 0.5125754005  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_48  &
   adams_id = 48  &
   location = 1.5933875694, 0.0, 0.9853393211  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_71  &
   adams_id = 71  &
   location = 0.8640022697, 0.0, 0.5125754005  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_72  &
   adams_id = 72  &
   location = 1.5933875694, 0.0, 0.9853393211  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_2  &
   density = 7801.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_2.BOX_2  &
   adams_id = 2  &
   corner_marker = .TelBoom.PART_Boom1_2.MARKER_2  &
   diag_corner_coords = 0.8692, 0.395, 0.288
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_2.BOX_7  &
   adams_id = 7  &
   corner_marker = .TelBoom.PART_Boom1_2.MARKER_7  &
   diag_corner_coords = 0.8692, 0.375, 0.268
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom1_2.CSG_12  &
   adams_id = 12  &
   base_object = .TelBoom.PART_Boom1_2.BOX_2  &
   object = .TelBoom.PART_Boom1_2.BOX_7  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom1_2  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom1_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom1_3  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_3  &
   adams_id = 3  &
   location = 1.7008091919, 0.144, 0.8196080777  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.cm  &
   adams_id = 108  &
   location = 1.9580802192, 0.0, 1.2217212814  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_8  &
   adams_id = 8  &
   location = 1.6953701224, 0.134, 0.8279995331  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_49  &
   adams_id = 49  &
   location = 1.5933875694, 0.0, 0.9853393211  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_50  &
   adams_id = 50  &
   location = 2.3227728691, 0.0, 1.4581032416  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_73  &
   adams_id = 73  &
   location = 1.5933875694, 0.0, 0.9853393211  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_76  &
   adams_id = 76  &
   location = 2.3227728691, 0.0, 1.4581032416  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_134  &
   adams_id = 134  &
   location = 1.5989259299, 0.0, 0.9889291069  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_135  &
   adams_id = 135  &
   location = 1.7552991779, 0.0, 0.7476747654  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_149  &
   adams_id = 149  &
   location = 1.7552991779, 0.0, 0.7476747654  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_3  &
   density = 7801.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_3.BOX_3  &
   adams_id = 3  &
   corner_marker = .TelBoom.PART_Boom1_3.MARKER_3  &
   diag_corner_coords = 0.8692, 0.395, 0.288
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_3.BOX_8  &
   adams_id = 8  &
   corner_marker = .TelBoom.PART_Boom1_3.MARKER_8  &
   diag_corner_coords = 0.8692, 0.375, 0.268
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom1_3.CSG_13  &
   adams_id = 13  &
   base_object = .TelBoom.PART_Boom1_3.BOX_3  &
   object = .TelBoom.PART_Boom1_3.BOX_8  &
   type = difference
!
geometry create shape link  &
   link_name = .TelBoom.PART_Boom1_3.LINK_75  &
   i_marker = .TelBoom.PART_Boom1_3.MARKER_134  &
   j_marker = .TelBoom.PART_Boom1_3.MARKER_135  &
   width = 0.1775079643  &
   depth = 8.8753982167E-002
!
geometry attributes  &
   geometry_name = .TelBoom.PART_Boom1_3.LINK_75  &
   active = off
!
part attributes  &
   part_name = .TelBoom.PART_Boom1_3  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom1_4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom1_4  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_4  &
   adams_id = 4  &
   location = 2.4301944916, 0.144, 1.2923719983  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.cm  &
   adams_id = 109  &
   location = 2.6874655189, 0.0, 1.6944852019  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_9  &
   adams_id = 9  &
   location = 2.4247554221, 0.134, 1.3007634537  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_51  &
   adams_id = 51  &
   location = 2.3227728691, 0.0, 1.4581032416  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_52  &
   adams_id = 52  &
   location = 3.0521581688, 0.0, 1.9308671622  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_77  &
   adams_id = 77  &
   location = 2.3227728691, 0.0, 1.4581032416  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_78  &
   adams_id = 78  &
   location = 3.0521581688, 0.0, 1.9308671622  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_4  &
   density = 7801.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_4.BOX_4  &
   adams_id = 4  &
   corner_marker = .TelBoom.PART_Boom1_4.MARKER_4  &
   diag_corner_coords = 0.8692, 0.395, 0.288
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_4.BOX_9  &
   adams_id = 9  &
   corner_marker = .TelBoom.PART_Boom1_4.MARKER_9  &
   diag_corner_coords = 0.8692, 0.375, 0.268
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom1_4.CSG_14  &
   adams_id = 14  &
   base_object = .TelBoom.PART_Boom1_4.BOX_4  &
   object = .TelBoom.PART_Boom1_4.BOX_9  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom1_4  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom1_5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom1_5  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_5  &
   adams_id = 5  &
   location = 3.1595797913, 0.144, 1.7651359189  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_5.cm  &
   adams_id = 110  &
   location = 3.4168508186, 0.0, 2.1672491225  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_10  &
   adams_id = 10  &
   location = 3.1541407218, 0.134, 1.7735273743  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_53  &
   adams_id = 53  &
   location = 3.0521581688, 0.0, 1.9308671622  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_79  &
   adams_id = 79  &
   location = 3.0521581688, 0.0, 1.9308671622  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_171  &
   adams_id = 171  &
   location = 3.7815434684, 0.0, 2.4036310828  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_5  &
   density = 7801.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_5.BOX_5  &
   adams_id = 5  &
   corner_marker = .TelBoom.PART_Boom1_5.MARKER_5  &
   diag_corner_coords = 0.8692, 0.395, 0.288
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom1_5.BOX_10  &
   adams_id = 10  &
   corner_marker = .TelBoom.PART_Boom1_5.MARKER_10  &
   diag_corner_coords = 0.8692, 0.375, 0.268
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom1_5.CSG_15  &
   adams_id = 15  &
   base_object = .TelBoom.PART_Boom1_5.BOX_5  &
   object = .TelBoom.PART_Boom1_5.BOX_10  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom1_5  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom2_1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom2_1  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom2_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_11  &
   adams_id = 11  &
   location = 2.7001594709, 0.121, 1.5090636455  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_1.cm  &
   adams_id = 111  &
   location = 2.9764672414, 0.0, 1.8818067554  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_17  &
   adams_id = 17  &
   location = 2.6958082153, 0.113, 1.5157768098  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_54  &
   adams_id = 54  &
   location = 3.3411598913, 0.0, 2.1181887157  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_62  &
   adams_id = 62  &
   location = 3.3411598913, 0.0, 2.1181887157  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_1  &
   density = 1.5E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_1.BOX_16  &
   adams_id = 16  &
   corner_marker = .TelBoom.PART_Boom2_1.MARKER_11  &
   diag_corner_coords = 0.8692, 0.325, 0.242
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_1.BOX_22  &
   adams_id = 22  &
   corner_marker = .TelBoom.PART_Boom2_1.MARKER_17  &
   diag_corner_coords = 0.8692, 0.309, 0.226
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom2_1.CSG_26  &
   adams_id = 26  &
   base_object = .TelBoom.PART_Boom2_1.BOX_16  &
   object = .TelBoom.PART_Boom2_1.BOX_22  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom2_1  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom2_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom2_2  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_12  &
   adams_id = 12  &
   location = 3.4295447706, 0.121, 1.9818275661  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.cm  &
   adams_id = 112  &
   location = 3.7058525411, 0.0, 2.354570676  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_18  &
   adams_id = 18  &
   location = 3.425193515, 0.113, 1.9885407304  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_55  &
   adams_id = 55  &
   location = 3.3411598913, 0.0, 2.1181887157  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_56  &
   adams_id = 56  &
   location = 4.070545191, 0.0, 2.5909526362  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_63  &
   adams_id = 63  &
   location = 3.3411598913, 0.0, 2.1181887157  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_64  &
   adams_id = 64  &
   location = 4.070545191, 0.0, 2.5909526362  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_172  &
   adams_id = 172  &
   location = 3.7815434684, 0.0, 2.4036310828  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_2  &
   density = 1.5E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_2.BOX_17  &
   adams_id = 17  &
   corner_marker = .TelBoom.PART_Boom2_2.MARKER_12  &
   diag_corner_coords = 0.8692, 0.325, 0.242
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_2.BOX_23  &
   adams_id = 23  &
   corner_marker = .TelBoom.PART_Boom2_2.MARKER_18  &
   diag_corner_coords = 0.8692, 0.309, 0.226
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom2_2.CSG_27  &
   adams_id = 27  &
   base_object = .TelBoom.PART_Boom2_2.BOX_17  &
   object = .TelBoom.PART_Boom2_2.BOX_23  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom2_2  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom2_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom2_3  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom2_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_13  &
   adams_id = 13  &
   location = 4.1589300703, 0.121, 2.4545914867  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.cm  &
   adams_id = 113  &
   location = 4.4352378408, 0.0, 2.8273345965  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_19  &
   adams_id = 19  &
   location = 4.1545788147, 0.113, 2.461304651  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_57  &
   adams_id = 57  &
   location = 4.070545191, 0.0, 2.5909526362  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_58  &
   adams_id = 58  &
   location = 4.7999304906, 0.0, 3.0637165568  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_65  &
   adams_id = 65  &
   location = 4.070545191, 0.0, 2.5909526362  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_66  &
   adams_id = 66  &
   location = 4.7999304906, 0.0, 3.0637165568  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_3  &
   density = 1.5E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_3.BOX_18  &
   adams_id = 18  &
   corner_marker = .TelBoom.PART_Boom2_3.MARKER_13  &
   diag_corner_coords = 0.8692, 0.325, 0.242
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_3.BOX_24  &
   adams_id = 24  &
   corner_marker = .TelBoom.PART_Boom2_3.MARKER_19  &
   diag_corner_coords = 0.8692, 0.309, 0.226
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom2_3.CSG_28  &
   adams_id = 28  &
   base_object = .TelBoom.PART_Boom2_3.BOX_18  &
   object = .TelBoom.PART_Boom2_3.BOX_24  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom2_3  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom2_4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom2_4  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom2_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_14  &
   adams_id = 14  &
   location = 4.88831537, 0.121, 2.9273554073  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.cm  &
   adams_id = 114  &
   location = 5.1646231405, 0.0, 3.3000985171  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_20  &
   adams_id = 20  &
   location = 4.8839641144, 0.113, 2.9340685715  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_59  &
   adams_id = 59  &
   location = 4.7999304906, 0.0, 3.0637165568  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_60  &
   adams_id = 60  &
   location = 5.5293157903, 0.0, 3.5364804774  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_67  &
   adams_id = 67  &
   location = 4.7999304906, 0.0, 3.0637165568  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_68  &
   adams_id = 68  &
   location = 5.5293157903, 0.0, 3.5364804774  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_4  &
   density = 1.5E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_4.BOX_19  &
   adams_id = 19  &
   corner_marker = .TelBoom.PART_Boom2_4.MARKER_14  &
   diag_corner_coords = 0.8692, 0.325, 0.242
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_4.BOX_25  &
   adams_id = 25  &
   corner_marker = .TelBoom.PART_Boom2_4.MARKER_20  &
   diag_corner_coords = 0.8692, 0.309, 0.226
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom2_4.CSG_29  &
   adams_id = 29  &
   base_object = .TelBoom.PART_Boom2_4.BOX_19  &
   object = .TelBoom.PART_Boom2_4.BOX_25  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom2_4  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom2_5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom2_5  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom2_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_15  &
   adams_id = 15  &
   location = 5.6177006696, 0.121, 3.4001193278  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_5.cm  &
   adams_id = 115  &
   location = 5.8940084402, 0.0, 3.7728624377  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_16  &
   adams_id = 16  &
   location = 5.613349414, 0.113, 3.4068324921  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_61  &
   adams_id = 61  &
   location = 5.5293157903, 0.0, 3.5364804774  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_69  &
   adams_id = 69  &
   location = 5.5293157903, 0.0, 3.5364804774  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_173  &
   adams_id = 173  &
   location = 6.25870109, 0.0, 4.009244398  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_5  &
   density = 1.5E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_5.BOX_20  &
   adams_id = 20  &
   corner_marker = .TelBoom.PART_Boom2_5.MARKER_15  &
   diag_corner_coords = 0.8692, 0.325, 0.242
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom2_5.BOX_21  &
   adams_id = 21  &
   corner_marker = .TelBoom.PART_Boom2_5.MARKER_16  &
   diag_corner_coords = 0.8692, 0.309, 0.226
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom2_5.CSG_30  &
   adams_id = 30  &
   base_object = .TelBoom.PART_Boom2_5.BOX_20  &
   object = .TelBoom.PART_Boom2_5.BOX_21  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom2_5  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom3_1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom3_1  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom3_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_21  &
   adams_id = 21  &
   location = 5.1656230931, 0.1, 3.1327185897  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_26  &
   adams_id = 26  &
   location = 5.1688865348, 0.106, 3.1276837165  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_1.cm  &
   adams_id = 116  &
   location = 5.453624863, 0.0, 3.4874200706  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_80  &
   adams_id = 80  &
   location = 5.8183175129, 0.0, 3.7238020308  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_88  &
   adams_id = 88  &
   location = 5.8183175129, 0.0, 3.7238020308  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_1  &
   density = 1.03E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_1.BOX_36  &
   adams_id = 36  &
   corner_marker = .TelBoom.PART_Boom3_1.MARKER_26  &
   diag_corner_coords = 0.8692, 0.294, 0.212
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_1.BOX_31  &
   adams_id = 31  &
   corner_marker = .TelBoom.PART_Boom3_1.MARKER_21  &
   diag_corner_coords = 0.8692, 0.282, 0.2
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom3_1.CSG_41  &
   adams_id = 41  &
   base_object = .TelBoom.PART_Boom3_1.BOX_36  &
   object = .TelBoom.PART_Boom3_1.BOX_31  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom3_1  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom3_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom3_2  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom3_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_174  &
   adams_id = 174  &
   location = 6.25870109, 0.0, 4.009244398  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_22  &
   adams_id = 22  &
   location = 5.8950083927, 0.1, 3.6054825103  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_27  &
   adams_id = 27  &
   location = 5.8982718344, 0.106, 3.6004476371  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.cm  &
   adams_id = 117  &
   location = 6.1830101627, 0.0, 3.9601839911  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_81  &
   adams_id = 81  &
   location = 5.8183175129, 0.0, 3.7238020308  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_82  &
   adams_id = 82  &
   location = 6.5477028125, 0.0, 4.1965659514  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_89  &
   adams_id = 89  &
   location = 5.8183175129, 0.0, 3.7238020308  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_90  &
   adams_id = 90  &
   location = 6.5477028125, 0.0, 4.1965659514  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_2  &
   density = 1.03E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_2.BOX_37  &
   adams_id = 37  &
   corner_marker = .TelBoom.PART_Boom3_2.MARKER_27  &
   diag_corner_coords = 0.8692, 0.294, 0.212
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_2.BOX_32  &
   adams_id = 32  &
   corner_marker = .TelBoom.PART_Boom3_2.MARKER_22  &
   diag_corner_coords = 0.8692, 0.282, 0.2
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom3_2.CSG_42  &
   adams_id = 42  &
   base_object = .TelBoom.PART_Boom3_2.BOX_37  &
   object = .TelBoom.PART_Boom3_2.BOX_32  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom3_2  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom3_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom3_3  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom3_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_23  &
   adams_id = 23  &
   location = 6.6243936924, 0.1, 4.0782464309  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_28  &
   adams_id = 28  &
   location = 6.6276571341, 0.106, 4.0732115577  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.cm  &
   adams_id = 118  &
   location = 6.9123954624, 0.0, 4.4329479117  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_83  &
   adams_id = 83  &
   location = 6.5477028125, 0.0, 4.1965659514  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_84  &
   adams_id = 84  &
   location = 7.2770881122, 0.0, 4.669329872  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_91  &
   adams_id = 91  &
   location = 6.5477028125, 0.0, 4.1965659514  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_92  &
   adams_id = 92  &
   location = 7.2770881122, 0.0, 4.669329872  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_3  &
   density = 1.03E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_3.BOX_38  &
   adams_id = 38  &
   corner_marker = .TelBoom.PART_Boom3_3.MARKER_28  &
   diag_corner_coords = 0.8692, 0.294, 0.212
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_3.BOX_33  &
   adams_id = 33  &
   corner_marker = .TelBoom.PART_Boom3_3.MARKER_23  &
   diag_corner_coords = 0.8692, 0.282, 0.2
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom3_3.CSG_43  &
   adams_id = 43  &
   base_object = .TelBoom.PART_Boom3_3.BOX_38  &
   object = .TelBoom.PART_Boom3_3.BOX_33  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom3_3  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom3_4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom3_4  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom3_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_24  &
   adams_id = 24  &
   location = 7.3537789921, 0.1, 4.5510103515  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_29  &
   adams_id = 29  &
   location = 7.3570424338, 0.106, 4.5459754782  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.cm  &
   adams_id = 119  &
   location = 7.6417807621, 0.0, 4.9057118323  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_85  &
   adams_id = 85  &
   location = 7.2770881122, 0.0, 4.669329872  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_86  &
   adams_id = 86  &
   location = 8.0064734119, 0.0, 5.1420937926  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_93  &
   adams_id = 93  &
   location = 7.2770881122, 0.0, 4.669329872  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_94  &
   adams_id = 94  &
   location = 8.0064734119, 0.0, 5.1420937926  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_4  &
   density = 1.03E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_4.BOX_39  &
   adams_id = 39  &
   corner_marker = .TelBoom.PART_Boom3_4.MARKER_29  &
   diag_corner_coords = 0.8692, 0.294, 0.212
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_4.BOX_34  &
   adams_id = 34  &
   corner_marker = .TelBoom.PART_Boom3_4.MARKER_24  &
   diag_corner_coords = 0.8692, 0.282, 0.2
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom3_4.CSG_44  &
   adams_id = 44  &
   base_object = .TelBoom.PART_Boom3_4.BOX_39  &
   object = .TelBoom.PART_Boom3_4.BOX_34  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom3_4  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_Boom3_5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Boom3_5  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Boom3_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_25  &
   adams_id = 25  &
   location = 8.0831642918, 0.1, 5.023774272  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_30  &
   adams_id = 30  &
   location = 8.0864277335, 0.106, 5.0187393988  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_5.cm  &
   adams_id = 120  &
   location = 8.3711660617, 0.0, 5.3784757529  &
   orientation = 0.0d, 57.05d, 90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_87  &
   adams_id = 87  &
   location = 8.0064734119, 0.0, 5.1420937926  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_95  &
   adams_id = 95  &
   location = 8.0064734119, 0.0, 5.1420937926  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_154  &
   adams_id = 154  &
   location = 8.65590439, 0.144, 5.7382121069  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_5  &
   density = 1.03E+004
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_5.BOX_40  &
   adams_id = 40  &
   corner_marker = .TelBoom.PART_Boom3_5.MARKER_30  &
   diag_corner_coords = 0.8692, 0.294, 0.212
!
geometry create shape block  &
   block_name = .TelBoom.PART_Boom3_5.BOX_35  &
   adams_id = 35  &
   corner_marker = .TelBoom.PART_Boom3_5.MARKER_25  &
   diag_corner_coords = 0.8692, 0.282, 0.2
!
geometry create shape csg  &
   csg_name = .TelBoom.PART_Boom3_5.CSG_45  &
   adams_id = 45  &
   base_object = .TelBoom.PART_Boom3_5.BOX_40  &
   object = .TelBoom.PART_Boom3_5.BOX_35  &
   type = difference
!
part attributes  &
   part_name = .TelBoom.PART_Boom3_5  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- PART_To_Cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_To_Cs  &
   adams_id = 24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_To_Cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_To_Cs.MARKER_133  &
   adams_id = 133  &
   location = 0.0, -0.144, 0.1975  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .TelBoom.PART_To_Cs.MARKER_74  &
   adams_id = 74  &
   location = 0.0, 0.0, 0.2475  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .TelBoom.PART_To_Cs.cm  &
   adams_id = 159  &
   location = -0.1, 0.0, -0.1975  &
   orientation = 0.0d, 0.0d, -2.4302350013E-007d
!
marker create  &
   marker_name = .TelBoom.PART_To_Cs.MARKER_147  &
   adams_id = 147  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_To_Cs  &
   material_type = .TelBoom.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_To_Cs.BOX_74  &
   adams_id = 74  &
   corner_marker = .TelBoom.PART_To_Cs.MARKER_133  &
   diag_corner_coords = -0.2, 0.79, 0.288
!
part attributes  &
   part_name = .TelBoom.PART_To_Cs  &
   color = GREEN  &
   name_visibility = off
!
!-------------------------------- PART_Weight ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Weight  &
   adams_id = 29  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Weight
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Weight.MARKER_155  &
   adams_id = 155  &
   location = 9.1998877813, 0.25, 4.9908761249  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Weight.cm  &
   adams_id = 160  &
   location = 9.2736974278, 0.0, 5.3366392462  &
   orientation = -180.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Weight.MARKER_158  &
   adams_id = 158  &
   location = 9.3677168884, 0.25, 5.0996575148  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Weight  &
   density = 7864.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Weight.BOX_81  &
   adams_id = 81  &
   corner_marker = .TelBoom.PART_Weight.MARKER_155  &
   diag_corner_coords = 0.5, 0.5, 0.5
!
part attributes  &
   part_name = .TelBoom.PART_Weight  &
   color = RED  &
   name_visibility = off
!
!--------------------------------- PART_Forks ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Forks  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Forks
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Forks.MARKER_151  &
   adams_id = 151  &
   location = 8.65590439, 0.144, 5.7382121069  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Forks.cm  &
   adams_id = 161  &
   location = 9.1243543008, 0.0, 5.3496686204  &
   orientation = -180.0d, 57.5741337614d, -90.0d
!
marker create  &
   marker_name = .TelBoom.PART_Forks.MARKER_152  &
   adams_id = 152  &
   location = 9.185125852, 0.144, 4.9217235006  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Forks.MARKER_153  &
   adams_id = 153  &
   location = 8.65590439, 0.144, 5.7382121069  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Forks.MARKER_157  &
   adams_id = 157  &
   location = 9.3677168884, 0.25, 5.0996575148  &
   orientation = 90.0d, 0.0d, 32.95d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Forks  &
   density = 5000.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .TelBoom.PART_Forks.BOX_79  &
   adams_id = 79  &
   corner_marker = .TelBoom.PART_Forks.MARKER_151  &
   diag_corner_coords = 0.2, -0.973, 0.288
!
geometry create shape block  &
   block_name = .TelBoom.PART_Forks.BOX_80  &
   adams_id = 80  &
   corner_marker = .TelBoom.PART_Forks.MARKER_152  &
   diag_corner_coords = 1.0, 5.0E-002, 0.288
!
part attributes  &
   part_name = .TelBoom.PART_Forks  &
   color = PEACH  &
   name_visibility = off
!
!----------------------------- PART_Cyl_boom_cyl ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Cyl_boom_cyl  &
   adams_id = 26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Cyl_boom_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.MARKER_148  &
   adams_id = 148  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master  &
   adams_id = 137  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 48.0981141565d, 0.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cm  &
   adams_id = 138  &
   location = 0.8257832486, 0.0, -8.6387405032E-002  &
   orientation = -180.0d, -48.0981141565d, -180.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_2  &
   adams_id = 139  &
   location = 0.42, 8.0E-002, -0.4505  &
   orientation = 90.0d, 0.0d, -48.0981141565d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_6  &
   adams_id = 140  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 48.0981141565d, 0.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_11  &
   adams_id = 141  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 48.0981141565d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Cyl_boom_cyl  &
   material_type = .TelBoom.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_cyl.CYLINDER  &
   adams_id = 75  &
   center_marker = .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master  &
   angle_extent = 360.0  &
   length = 1.232  &
   radius = 8.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_cyl.CYLINDER_2  &
   adams_id = 76  &
   center_marker = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.16  &
   radius = 8.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .TelBoom.PART_Cyl_boom_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!----------------------------- PART_Cyl_boom_pis ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part create rigid_body name_and_position  &
   part_name = .TelBoom.PART_Cyl_boom_pis  &
   adams_id = 27  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.PART_Cyl_boom_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.MARKER_150  &
   adams_id = 150  &
   location = 1.7552991779, 0.0, 0.7476747654  &
   orientation = 90.0d, 0.0d, 32.95d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave  &
   adams_id = 142  &
   location = 1.7552991779, 0.0, 0.7476747654  &
   orientation = -180.0d, -48.0981141565d, 0.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cm  &
   adams_id = 143  &
   location = 1.4383548869, 0.0, 0.4632780865  &
   orientation = -180.0d, -48.0981141565d, -180.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_4  &
   adams_id = 144  &
   location = 1.7552991779, -8.0E-002, 0.7476747654  &
   orientation = -90.0d, 0.0d, 48.0981141565d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_5  &
   adams_id = 145  &
   location = 1.7552991779, 0.0, 0.7476747654  &
   orientation = 0.0d, 48.0981141565d, 0.0d
!
marker create  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_12  &
   adams_id = 146  &
   location = 0.42, 0.0, -0.4505  &
   orientation = 0.0d, 48.0981141565d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .TelBoom.PART_Cyl_boom_pis  &
   material_type = .TelBoom.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_pis.CYLINDER_3  &
   adams_id = 77  &
   center_marker = .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave  &
   angle_extent = 360.0  &
   length = 1.312  &
   radius = 3.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_pis.CYLINDER_4  &
   adams_id = 78  &
   center_marker = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.16  &
   radius = 8.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .TelBoom.PART_Cyl_boom_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .TelBoom.PART_Boom2_1.MARKER_62  &
   j_marker_name = .TelBoom.PART_Boom2_2.MARKER_63
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .TelBoom.PART_Boom2_2.MARKER_64  &
   j_marker_name = .TelBoom.PART_Boom2_3.MARKER_65
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .TelBoom.PART_Boom2_3.MARKER_66  &
   j_marker_name = .TelBoom.PART_Boom2_4.MARKER_67
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .TelBoom.PART_Boom2_4.MARKER_68  &
   j_marker_name = .TelBoom.PART_Boom2_5.MARKER_69
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_4  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .TelBoom.PART_Boom1_1.MARKER_70  &
   j_marker_name = .TelBoom.PART_Boom1_2.MARKER_71
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_5  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .TelBoom.PART_Boom1_2.MARKER_72  &
   j_marker_name = .TelBoom.PART_Boom1_3.MARKER_73
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_6  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .TelBoom.PART_To_Cs.MARKER_74  &
   j_marker_name = .TelBoom.PART_Boom1_1.MARKER_75
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_7  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .TelBoom.PART_Boom1_3.MARKER_76  &
   j_marker_name = .TelBoom.PART_Boom1_4.MARKER_77
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_8  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .TelBoom.PART_Boom1_4.MARKER_78  &
   j_marker_name = .TelBoom.PART_Boom1_5.MARKER_79
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_9  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .TelBoom.PART_Boom3_1.MARKER_80  &
   j_marker_name = .TelBoom.PART_Boom3_2.MARKER_81
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_10  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .TelBoom.PART_Boom3_2.MARKER_82  &
   j_marker_name = .TelBoom.PART_Boom3_3.MARKER_83
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_11  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_12  &
   adams_id = 12  &
   i_marker_name = .TelBoom.PART_Boom3_3.MARKER_84  &
   j_marker_name = .TelBoom.PART_Boom3_4.MARKER_85
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_12  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_13  &
   adams_id = 13  &
   i_marker_name = .TelBoom.PART_Boom3_4.MARKER_86  &
   j_marker_name = .TelBoom.PART_Boom3_5.MARKER_87
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_13  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_26  &
   adams_id = 26  &
   i_marker_name = .TelBoom.PART_Boom1_5.MARKER_171  &
   j_marker_name = .TelBoom.PART_Boom2_2.MARKER_172
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_26  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .TelBoom.JOINT_27  &
   adams_id = 27  &
   i_marker_name = .TelBoom.PART_Boom2_5.MARKER_173  &
   j_marker_name = .TelBoom.PART_Boom3_2.MARKER_174
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_27  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .TelBoom.JOINT_21  &
   adams_id = 21  &
   i_marker_name = .TelBoom.PART_To_Cs.MARKER_147  &
   j_marker_name = .TelBoom.PART_Cyl_boom_cyl.MARKER_148
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_21  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .TelBoom.JT_Cyl_boom_cyl_pis  &
   adams_id = 20  &
   i_marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_11  &
   j_marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .TelBoom.JT_Cyl_boom_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .TelBoom.JOINT_22  &
   adams_id = 22  &
   i_marker_name = .TelBoom.PART_Boom1_3.MARKER_149  &
   j_marker_name = .TelBoom.PART_Cyl_boom_pis.MARKER_150
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_22  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .TelBoom.JOINT_23  &
   adams_id = 23  &
   i_marker_name = .TelBoom.PART_Forks.MARKER_153  &
   j_marker_name = .TelBoom.PART_Boom3_5.MARKER_154
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_23  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .TelBoom.JOINT_24  &
   adams_id = 24  &
   i_marker_name = .TelBoom.PART_Forks.MARKER_157  &
   j_marker_name = .TelBoom.PART_Weight.MARKER_158
!
constraint attributes  &
   constraint_name = .TelBoom.JOINT_24  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .TelBoom.F_Cyl_boom_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_5  &
   j_marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_kC  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.2538955541E+007
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_kC  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.1774279078E+007
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_kC  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.790549619E+007
!
variable create  &
   variable_name = .TelBoom.DV_Boom1_Damping  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E+005
!
variable create  &
   variable_name = .TelBoom.DV_Boom2_Damping  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E+005
!
variable create  &
   variable_name = .TelBoom.DV_Boom3_Damping  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E+005
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .TelBoom.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=5000 model_name=.TelBoom initial_static=no"
!
simulation script create  &
   sim_script_name = .TelBoom.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_2  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_3  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_4  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_5  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_6  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_7  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_8  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_9  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_10  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_11  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_12  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .TelBoom.TORSION_SPRING_13  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.i_marker  &
   object_value = (.TelBoom.PART_Boom1_1.MARKER_46)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.j_marker  &
   object_value = (.TelBoom.PART_Boom1_2.MARKER_47)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom1_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom1_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_2.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_2
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.i_marker  &
   object_value = (.TelBoom.PART_Boom1_2.MARKER_48)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.j_marker  &
   object_value = (.TelBoom.PART_Boom1_3.MARKER_49)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom1_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom1_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_3.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_3
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.i_marker  &
   object_value = (.TelBoom.PART_Boom1_3.MARKER_50)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.j_marker  &
   object_value = (.TelBoom.PART_Boom1_4.MARKER_51)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom1_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom1_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_4.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_4
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.i_marker  &
   object_value = (.TelBoom.PART_Boom1_4.MARKER_52)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.j_marker  &
   object_value = (.TelBoom.PART_Boom1_5.MARKER_53)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom1_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom1_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_5.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_5
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.i_marker  &
   object_value = (.TelBoom.PART_Boom2_1.MARKER_54)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.j_marker  &
   object_value = (.TelBoom.PART_Boom2_2.MARKER_55)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom2_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom2_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_6.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_6
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.i_marker  &
   object_value = (.TelBoom.PART_Boom2_2.MARKER_56)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.j_marker  &
   object_value = (.TelBoom.PART_Boom2_3.MARKER_57)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom2_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom2_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_7.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_7
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.i_marker  &
   object_value = (.TelBoom.PART_Boom2_3.MARKER_58)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.j_marker  &
   object_value = (.TelBoom.PART_Boom2_4.MARKER_59)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom2_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom2_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_8.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_8
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.i_marker  &
   object_value = (.TelBoom.PART_Boom2_4.MARKER_60)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.j_marker  &
   object_value = (.TelBoom.PART_Boom2_5.MARKER_61)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom2_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom2_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_9.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_9
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.i_marker  &
   object_value = (.TelBoom.PART_Boom3_1.MARKER_88)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.j_marker  &
   object_value = (.TelBoom.PART_Boom3_2.MARKER_89)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom3_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom3_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_10.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_10
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.i_marker  &
   object_value = (.TelBoom.PART_Boom3_2.MARKER_90)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.j_marker  &
   object_value = (.TelBoom.PART_Boom3_3.MARKER_91)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom3_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom3_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_11.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_11
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.i_marker  &
   object_value = (.TelBoom.PART_Boom3_3.MARKER_92)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.j_marker  &
   object_value = (.TelBoom.PART_Boom3_4.MARKER_93)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom3_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom3_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_12.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_12
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.i_marker  &
   object_value = (.TelBoom.PART_Boom3_4.MARKER_94)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.j_marker  &
   object_value = (.TelBoom.PART_Boom3_5.MARKER_95)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.stiffness_coefficient  &
   real_value = (.TelBoom.Dv_Boom3_kC(newton-meter/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.damping_coefficient  &
   real_value = (.TelBoom.DV_Boom3_Damping(newton-meter-sec/rad))
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.free_angle_mode  &
   string_value = "Design_Angle"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .TelBoom.TORSION_SPRING_13.j_dynamic_visibility  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_13
!
undo end_block
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_kS  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.5580266667E+007
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_Height  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.395
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.288
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8692
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8692
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8692
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_Height  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.325
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.242
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_Height  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.294
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.212
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_thickness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 6.0E-003
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_thickness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 8.0E-003
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_thickness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0E-002
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_kS  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.2857066667E+007
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_kS  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.2754666667E+007
!
variable create  &
   variable_name = .TelBoom.Dv_Boom1_Lengthtot  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.346
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_pos  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.952
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_pos  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.904
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_Lengthtot  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.346
!
variable create  &
   variable_name = .TelBoom.Dv_Boom3_Lengthtot  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.346
!
variable create  &
   variable_name = .TelBoom.DV_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0
!
variable create  &
   variable_name = .TelBoom.DV_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0
!
variable create  &
   variable_name = .TelBoom.Dv_Boom2_1  &
   string_value = "Dv_TelBoom_Boom3_1"
!
variable create  &
   variable_name = .TelBoom.DV_w  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .TelBoom.DV_z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .TelBoom.Dv_pis_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.745
!
variable create  &
   variable_name = .TelBoom.Dv_pis_z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 9.0E-002
!
variable create  &
   variable_name = .TelBoom.Dv_cyl_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.42
!
variable create  &
   variable_name = .TelBoom.Dv_cyl_z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.698
!
variable create  &
   variable_name = .TelBoom.DV_Cyl_boom_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.312
!
variable create  &
   variable_name = .TelBoom.DV_Cyl_boom_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 8.0E-002
!
variable create  &
   variable_name = .TelBoom.DV_Cyl_boom_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.3
!
variable create  &
   variable_name = .TelBoom.DV_Cyl_boom_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.3
!
variable create  &
   variable_name = .TelBoom.DV_Cyl_boom_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.8E-002
!
variable create  &
   variable_name = .TelBoom.Dv_Forks_Height  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.973
!
variable create  &
   variable_name = .TelBoom.Dv_Forks_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .TelBoom.DV_Angle  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 32.95
!
variable create  &
   variable_name = .TelBoom.DV_Lengthtot  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.25
!
variable create  &
   variable_name = .TelBoom.DV_Length_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.952
!
variable create  &
   variable_name = .TelBoom.DV_Boom1_2_Stiffness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0E+009
!
variable create  &
   variable_name = .TelBoom.DV_Boom2_3_Stiffness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0E+009
!
variable create  &
   variable_name = .TelBoom.DV_Density_Boom1  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7801.0
!
variable create  &
   variable_name = .TelBoom.DV_Density_Boom2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.5E+004
!
variable create  &
   variable_name = .TelBoom.DV_Density_Boom3  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.03E+004
!
variable create  &
   variable_name = .TelBoom.DV_Density_Forks  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5000.0
!
variable create  &
   variable_name = .TelBoom.DV_last_w  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .TelBoom.DV_last_z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .TelBoom.SV_Cyl_boom_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .TelBoom.SV_Cyl_boom_P  &
   function = "DZ( .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master)"
!
data_element modify variable  &
   variable_name = .TelBoom.SV_Cyl_boom_V  &
   function = "VZ( .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .TelBoom.F_Cyl_boom_force  &
   function = "VARVAL( .TelBoom.SV_Cyl_boom_F) + ",  &
              "BISTOP( ",  &
              "DZ( .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master) , ",  &
              "VZ( .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master) , ",  &
              "(.TelBoom.DV_Cyl_boom_min_length+0.48) , .TelBoom.DV_Cyl_boom_max_length , 4.18879e7*0.01 , 1.0 , 20e8 , 0.01 )"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_2
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_3
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_4
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_5
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_6
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_7
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_8
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_9
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_10
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_11
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_12
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .TelBoom.TORSION_SPRING_13
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .TelBoom.ground.Mkr_Master_Boom  &
   location =   &
      (LOC_RELATIVE_TO({(.TelBoom.Dv_Boom1_Height / 2 + 5.0E-002) * SIN(.TelBoom.DV_Angle), 0, -(.TelBoom.Dv_Boom1_Height / 2 + 5.0E-002) * COS(.TelBoom.DV_Angle)}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 90.0, .TelBoom.DV_Angle}, .TelBoom.ground.Mkr_Master))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_36  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_38  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_39  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_40  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.Mkr_Boom2  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_pos, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.Mkr_Boom3  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_pos, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.MARKER_136  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_cyl_x, 0, -.TelBoom.Dv_cyl_z}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master, "xx"))
!
marker modify  &
   marker_name = .TelBoom.ground.Mkr_Master  &
   location =   &
      0.0,  &
      0.0,  &
      (.TelBoom.Dv_Boom1_Height / 2 + 5.0E-002)
!
material modify  &
   material_name = .TelBoom.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_1  &
   location =   &
      (LOC_RELATIVE_TO({0, -.TelBoom.Dv_Boom1_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, -(.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness) / 2, -(.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness) / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_70  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_1.MARKER_75  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master, "xz"))  &
   relative_to = .TelBoom.PART_Boom1_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_1.CSG_11.BOX_1  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_1.CSG_11.BOX_6  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness),  &
      (.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_1  &
   density = (.TelBoom.DV_Density_Boom1(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, -.TelBoom.Dv_Boom1_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, -(.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness) / 2, -(.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness) / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_71  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_2.MARKER_72  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_2.CSG_12.BOX_2  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_2.CSG_12.BOX_7  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness),  &
      (.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_2  &
   density = (.TelBoom.DV_Density_Boom1(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, -.TelBoom.Dv_Boom1_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, -(.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness) / 2, -(.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness) / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_49  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_73  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_76  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_134  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_pis_x, 0, 0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_135  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_pis_x, -.TelBoom.Dv_Boom1_Height / 2 - .TelBoom.Dv_pis_z, 0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_3.MARKER_149  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_pis_x, -.TelBoom.Dv_Boom1_Height / 2 - .TelBoom.Dv_pis_z, 0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_3.CSG_13.BOX_3  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_3.CSG_13.BOX_8  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness),  &
      (.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness)
!
geometry modify shape link  &
   link_name = .TelBoom.PART_Boom1_3.LINK_75  &
   width = (0.1775079643meter)  &
   depth = (8.8753982167E-002meter)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_3  &
   density = (.TelBoom.DV_Density_Boom1(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, -.TelBoom.Dv_Boom1_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, -(.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness) / 2, -(.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness) / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_77  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_4.MARKER_78  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_4.CSG_14.BOX_4  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_4.CSG_14.BOX_9  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness),  &
      (.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_4  &
   density = (.TelBoom.DV_Density_Boom1(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, -.TelBoom.Dv_Boom1_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, -(.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness) / 2, -(.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness) / 2}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_53  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_79  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom1_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_5.CSG_15.BOX_5  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom1_5.CSG_15.BOX_10  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom1_Length),  &
      (.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness),  &
      (.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness)
!
marker modify  &
   marker_name = .TelBoom.PART_Boom1_5.MARKER_171  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Lengthtot, 0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom1_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom1_5  &
   density = (.TelBoom.DV_Density_Boom1(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, -.TelBoom.Dv_Boom2_Height / 2, -.TelBoom.Dv_Boom2_Width / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0, -(.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness) / 2, -(.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness) / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_54  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_1.MARKER_62  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_1.CSG_26.BOX_16  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height),  &
      (.TelBoom.Dv_Boom2_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_1.CSG_26.BOX_22  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness),  &
      (.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_1  &
   density = (.TelBoom.DV_Density_Boom2(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, -.TelBoom.Dv_Boom2_Height / 2, -.TelBoom.Dv_Boom2_Width / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, -(.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness) / 2, -(.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness) / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_55  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_56  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_63  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_64  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_2.CSG_27.BOX_17  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height),  &
      (.TelBoom.Dv_Boom2_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_2.CSG_27.BOX_23  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness),  &
      (.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness)
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_2.MARKER_172  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom1_Lengthtot, 0, 0.0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_2  &
   density = (.TelBoom.DV_Density_Boom2(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, -.TelBoom.Dv_Boom2_Height / 2, -.TelBoom.Dv_Boom2_Width / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, -(.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness) / 2, -(.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness) / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_57  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_58  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_65  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_3.MARKER_66  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_3.CSG_28.BOX_18  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height),  &
      (.TelBoom.Dv_Boom2_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_3.CSG_28.BOX_24  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness),  &
      (.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_3  &
   density = (.TelBoom.DV_Density_Boom2(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, -.TelBoom.Dv_Boom2_Height / 2, -.TelBoom.Dv_Boom2_Width / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, -(.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness) / 2, -(.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness) / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_59  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_60  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_67  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_4.MARKER_68  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_4.CSG_29.BOX_19  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height),  &
      (.TelBoom.Dv_Boom2_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_4.CSG_29.BOX_25  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness),  &
      (.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_4  &
   density = (.TelBoom.DV_Density_Boom2(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, -.TelBoom.Dv_Boom2_Height / 2, -.TelBoom.Dv_Boom2_Width / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, -(.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness) / 2, -(.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness) / 2}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_61  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_69  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom2_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_5.CSG_30.BOX_20  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height),  &
      (.TelBoom.Dv_Boom2_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom2_5.CSG_30.BOX_21  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom2_Length),  &
      (.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness),  &
      (.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness)
!
marker modify  &
   marker_name = .TelBoom.PART_Boom2_5.MARKER_173  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Lengthtot, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom2_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom2_5  &
   density = (.TelBoom.DV_Density_Boom2(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({0, -(.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness) / 2, -(.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness) / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({0, -.TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom3_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_1.MARKER_88  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_1
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_1.CSG_41.BOX_36  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height),  &
      (.TelBoom.Dv_Boom3_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_1.CSG_41.BOX_31  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness),  &
      (.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_1  &
   density = (.TelBoom.DV_Density_Boom3(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, -(.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness) / 2, -(.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness) / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, -.TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom3_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_81  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_89  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_90  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_2.CSG_42.BOX_37  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height),  &
      (.TelBoom.Dv_Boom3_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_2.CSG_42.BOX_32  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness),  &
      (.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness)
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_2.MARKER_174  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom2_Lengthtot, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom2))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_2
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_2  &
   density = (.TelBoom.DV_Density_Boom3(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, -(.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness) / 2, -(.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness) / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, -.TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom3_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_91  &
   location =   &
      (LOC_RELATIVE_TO({2 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_3.MARKER_92  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_3
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_3.CSG_43.BOX_38  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height),  &
      (.TelBoom.Dv_Boom3_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_3.CSG_43.BOX_33  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness),  &
      (.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_3  &
   density = (.TelBoom.DV_Density_Boom3(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, -(.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness) / 2, -(.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness) / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_29  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, -.TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom3_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_85  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_86  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_93  &
   location =   &
      (LOC_RELATIVE_TO({3 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_4.MARKER_94  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_4
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_4.CSG_44.BOX_39  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height),  &
      (.TelBoom.Dv_Boom3_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_4.CSG_44.BOX_34  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness),  &
      (.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_4  &
   density = (.TelBoom.DV_Density_Boom3(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, -(.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness) / 2, -(.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness) / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, -.TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom3_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_87  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_95  &
   location =   &
      (LOC_RELATIVE_TO({4 * .TelBoom.Dv_Boom3_Length, 0.0, 0.0}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Boom3_5.MARKER_154  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot, .TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Boom3_5
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_5.CSG_45.BOX_40  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height),  &
      (.TelBoom.Dv_Boom3_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Boom3_5.CSG_45.BOX_35  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Boom3_Length),  &
      (.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness),  &
      (.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness)
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Boom3_5  &
   density = (.TelBoom.DV_Density_Boom3(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_To_Cs.MARKER_133  &
   location =   &
      (LOC_RELATIVE_TO({0, -.TelBoom.Dv_Boom1_Width / 2, -5.0E-002}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master, "y-z"))  &
   relative_to = .TelBoom.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_To_Cs.MARKER_74  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master, "xz"))  &
   relative_to = .TelBoom.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_To_Cs.MARKER_147  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_cyl_x, 0, -.TelBoom.Dv_cyl_z}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master, "xx"))  &
   relative_to = .TelBoom.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_To_Cs.BOX_74  &
   diag_corner_coords =   &
      (-20.0cm),  &
      (2 * .TelBoom.Dv_Boom1_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
marker modify  &
   marker_name = .TelBoom.PART_Weight.MARKER_155  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot + .TelBoom.Dv_Forks_Length / 4 - 0.2, .TelBoom.Dv_Boom3_Height / 2 - .TelBoom.Dv_Forks_Height + 5.0E-002, -0.5 / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Weight
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Weight.BOX_81  &
   diag_corner_coords =   &
      (50cm),  &
      (50cm),  &
      (50cm)
!
marker modify  &
   marker_name = .TelBoom.PART_Weight.MARKER_158  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot + .TelBoom.Dv_Forks_Length / 4, .TelBoom.Dv_Boom3_Height / 2 - .TelBoom.Dv_Forks_Height + 5.0E-002, -0.5 / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Weight
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Weight  &
   density = (7864(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Forks.MARKER_151  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot, .TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Forks
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Forks.MARKER_152  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot, .TelBoom.Dv_Boom3_Height / 2 - .TelBoom.Dv_Forks_Height, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Forks
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Forks.MARKER_153  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot, .TelBoom.Dv_Boom3_Height / 2, -.TelBoom.Dv_Boom1_Width / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Forks
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Forks.BOX_79  &
   diag_corner_coords =   &
      (20.0cm),  &
      (-.TelBoom.Dv_Forks_Height),  &
      (.TelBoom.Dv_Boom1_Width)
!
geometry modify shape block  &
   block_name = .TelBoom.PART_Forks.BOX_80  &
   diag_corner_coords =   &
      (.TelBoom.Dv_Forks_Length),  &
      5.0E-002,  &
      (.TelBoom.Dv_Boom1_Width)
!
marker modify  &
   marker_name = .TelBoom.PART_Forks.MARKER_157  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_Boom3_Lengthtot + .TelBoom.Dv_Forks_Length / 4, .TelBoom.Dv_Boom3_Height / 2 - .TelBoom.Dv_Forks_Height + 5.0E-002, -0.5 / 2}, .TelBoom.ground.Mkr_Boom3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Forks
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
part modify rigid_body mass_properties  &
   part_name = .TelBoom.PART_Forks  &
   density = (.TelBoom.DV_Density_Forks(kg/meter**3))
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.MARKER_148  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_cyl_x, 0, -.TelBoom.Dv_cyl_z}, .TelBoom.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master, "xx"))  &
   relative_to = .TelBoom.PART_Cyl_boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .TelBoom.ground.MARKER_136))  &
   orientation =   &
      (ORI_ALONG_AXIS(.TelBoom.ground.MARKER_136, .TelBoom.PART_Boom1_3.MARKER_135, "z"))  &
   relative_to = .TelBoom.PART_Cyl_boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .TelBoom.DV_Cyl_boom_rc, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   relative_to = .TelBoom.PART_Cyl_boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   relative_to = .TelBoom.PART_Cyl_boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   relative_to = .TelBoom.PART_Cyl_boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_cyl.CYLINDER  &
   length = (.TelBoom.DV_Cyl_boom_min_length - .TelBoom.DV_Cyl_boom_rc)  &
   radius = (.TelBoom.DV_Cyl_boom_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_cyl.CYLINDER_2  &
   length = (.TelBoom.DV_Cyl_boom_rc * 2)  &
   radius = (.TelBoom.DV_Cyl_boom_rc)
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.MARKER_150  &
   location =   &
      (LOC_RELATIVE_TO({.TelBoom.Dv_pis_x, -.TelBoom.Dv_Boom1_Height / 2 - .TelBoom.Dv_pis_z, 0}, .TelBoom.ground.Mkr_Master_Boom))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.TelBoom.ground.Mkr_Master_Boom, "xx"))  &
   relative_to = .TelBoom.PART_Cyl_boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Boom1_3.MARKER_135))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   relative_to = .TelBoom.PART_Cyl_boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .TelBoom.DV_Cyl_boom_rc, 0}, .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave))  &
   relative_to = .TelBoom.PART_Cyl_boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Cyl_boom_pis.MKR_boom_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   relative_to = .TelBoom.PART_Cyl_boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
marker modify  &
   marker_name = .TelBoom.PART_Cyl_boom_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .TelBoom.PART_Cyl_boom_cyl.MKR_boom_cyl_master))  &
   relative_to = .TelBoom.PART_Cyl_boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .TelBoom.ground
!
geometry modify shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_pis.CYLINDER_3  &
   length = (.TelBoom.DV_Cyl_boom_min_length)  &
   radius = (.TelBoom.DV_Cyl_boom_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .TelBoom.PART_Cyl_boom_pis.CYLINDER_4  &
   length = (.TelBoom.DV_Cyl_boom_rc * 2)  &
   radius = (.TelBoom.DV_Cyl_boom_rc)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom2_kC  &
   real_value = (2.07E+011 * (.TelBoom.Dv_Boom2_Width * .TelBoom.Dv_Boom2_Height**3 / 12 - (.TelBoom.Dv_Boom2_Width - 2 * .TelBoom.Dv_Boom2_thickness) * (.TelBoom.Dv_Boom2_Height - 2 * .TelBoom.Dv_Boom2_thickness)**3 / 12) / .TelBoom.Dv_Boom2_Length)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom1_kC  &
   real_value = (2.07E+011 * (.TelBoom.Dv_Boom1_Width * .TelBoom.Dv_Boom1_Height**3 / 12 - (.TelBoom.Dv_Boom1_Width - 2 * .TelBoom.Dv_Boom1_thickness) * (.TelBoom.Dv_Boom1_Height - 2 * .TelBoom.Dv_Boom1_thickness)**3 / 12) / .TelBoom.Dv_Boom1_Length)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom3_kC  &
   real_value = (2.07E+011 * (.TelBoom.Dv_Boom3_Width * .TelBoom.Dv_Boom3_Height**3 / 12 - (.TelBoom.Dv_Boom3_Width - 2 * .TelBoom.Dv_Boom3_thickness) * (.TelBoom.Dv_Boom3_Height - 2 * .TelBoom.Dv_Boom3_thickness)**3 / 12) / .TelBoom.Dv_Boom3_Length)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom1_Length  &
   real_value = (.TelBoom.Dv_Boom1_Lengthtot / 5)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom2_Length  &
   real_value = (.TelBoom.Dv_Boom2_Lengthtot / 5)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom3_Length  &
   real_value = (.TelBoom.Dv_Boom3_Lengthtot / 5)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom2_pos  &
   real_value = (.TelBoom.DV_Lengthtot - .TelBoom.Dv_Boom2_Lengthtot - .TelBoom.DV_Length_x)
!
variable modify  &
   variable_name = .TelBoom.Dv_Boom3_pos  &
   real_value = (.TelBoom.DV_Lengthtot - .TelBoom.Dv_Boom3_Lengthtot)
!
material modify  &
   material_name = .TelBoom.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
variable modify  &
   variable_name = .TelBoom.DV_Length_x  &
   real_value = ((.TelBoom.DV_Lengthtot - .TelBoom.Dv_Boom1_Lengthtot) / 2)
!
model display  &
   model_name = TelBoom
