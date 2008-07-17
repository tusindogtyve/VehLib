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
   model_name = Backhoe
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Backhoe.steel  &
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
   default_coordinate_system = .Backhoe.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.ground.Mkr_Master  &
   adams_id = 27  &
   location = 1.65, 0.0, -0.5  &
   orientation = 0.0d, 90.0d, 0.0d
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_2.Mkr_Boom_Slave  &
   adams_id = 1  &
   location = 1.65, 0.0, -0.5  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker create  &
   marker_name = .Backhoe.PART_2.MARKER_2  &
   adams_id = 2  &
   location = 1.6117691454, 0.0, 0.2862177826  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_2.cm  &
   location = 1.6308845727, 0.0, -0.1068911087  &
   orientation = 90.000000313d, 177.2161115573d, 7.2134682933E-007d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_2  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_2.LINK_1  &
   i_marker = .Backhoe.PART_2.Mkr_Boom_Slave  &
   j_marker = .Backhoe.PART_2.MARKER_2  &
   width = 0.22  &
   depth = 0.2
!
part attributes  &
   part_name = .Backhoe.PART_2  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_3.MARKER_3  &
   adams_id = 3  &
   location = 1.65, 0.0, -0.5  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_3.MARKER_4  &
   adams_id = 4  &
   location = 0.9783012702, 0.0, 0.7634163274  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_3.cm  &
   location = 1.3141506351, 0.0, 0.1317081637  &
   orientation = 90.0000000766d, 152.0025331318d, 1.357028573E-006d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_3  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_3.LINK_2  &
   i_marker = .Backhoe.PART_3.MARKER_3  &
   j_marker = .Backhoe.PART_3.MARKER_4  &
   width = 0.22  &
   depth = 0.2
!
part attributes  &
   part_name = .Backhoe.PART_3  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- PART_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_4.MARKER_5  &
   adams_id = 5  &
   location = 1.6117691454, 0.0, 0.2862177826  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_4.MARKER_6  &
   adams_id = 6  &
   location = 0.75, 0.0, 1.0588457268  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_4.cm  &
   location = 1.1808845727, 0.0, 0.6725317547  &
   orientation = 90.000000011d, 131.8781397521d, 2.9800655321E-007d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_4  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_4.LINK_3  &
   i_marker = .Backhoe.PART_4.MARKER_5  &
   j_marker = .Backhoe.PART_4.MARKER_6  &
   width = 0.22  &
   depth = 0.2
!
part attributes  &
   part_name = .Backhoe.PART_4  &
   color = MAIZE  &
   name_visibility = off
!
!----------------------------------- PART_5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_5.MARKER_7  &
   adams_id = 7  &
   location = 0.9783012702, 0.0, 0.7634163274  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_5.MARKER_8  &
   adams_id = 8  &
   location = 0.75, 0.0, 1.0588457268  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_5.cm  &
   location = 0.8641506351, 0.0, 0.9111310271  &
   orientation = 90.0000000294d, 142.303948278d, 3.9504258617E-007d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_5  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_5.LINK_4  &
   i_marker = .Backhoe.PART_5.MARKER_7  &
   j_marker = .Backhoe.PART_5.MARKER_8  &
   width = 0.22  &
   depth = 0.2
!
part attributes  &
   part_name = .Backhoe.PART_5  &
   color = CYAN  &
   name_visibility = off
!
!----------------------------------- PART_6 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_6.MARKER_10  &
   adams_id = 9  &
   location = -1.2833012702, 0.0, 2.17533321  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_6.Mkr_Stick_Slave  &
   adams_id = 10  &
   location = -1.5, 0.0, 1.7  &
   orientation = 0.0d, 90.0d, 240.0d
!
marker create  &
   marker_name = .Backhoe.PART_6.cm  &
   location = -1.3916506351, 0.0, 1.937666605  &
   orientation = 270.0000000012d, 155.4923245571d, 179.9999999834d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_6  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_6.LINK_5  &
   i_marker = .Backhoe.PART_6.MARKER_10  &
   j_marker = .Backhoe.PART_6.Mkr_Stick_Slave  &
   width = 0.2  &
   depth = 0.18
!
part attributes  &
   part_name = .Backhoe.PART_6  &
   color = MAGENTA  &
   name_visibility = off
!
!----------------------------------- PART_7 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_7  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_7.MARKER_11  &
   adams_id = 11  &
   location = -1.2833012702, 0.0, 2.17533321  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_7.MARKER_12  &
   adams_id = 12  &
   location = -1.8881088913, 0.0, 1.7277756814  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_7.cm  &
   location = -1.5857050808, 0.0, 1.9515544457  &
   orientation = 90.0000000162d, 53.498565676d, 2.6087141463E-007d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_7  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_7.LINK_6  &
   i_marker = .Backhoe.PART_7.MARKER_11  &
   j_marker = .Backhoe.PART_7.MARKER_12  &
   width = 0.2  &
   depth = 0.18
!
part attributes  &
   part_name = .Backhoe.PART_7  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- PART_8 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_8  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_8.MARKER_13  &
   adams_id = 13  &
   location = -1.8881088913, 0.0, 1.7277756814  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_8.MARKER_14  &
   adams_id = 14  &
   location = -2.2083012702, 0.0, 0.573186213  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_8.cm  &
   location = -2.0482050808, 0.0, 1.1504809472  &
   orientation = 270.0000000881d, 164.5001667666d, 179.9999994929d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_8  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_8.LINK_7  &
   i_marker = .Backhoe.PART_8.MARKER_13  &
   j_marker = .Backhoe.PART_8.MARKER_14  &
   width = 0.2  &
   depth = 0.18
!
part attributes  &
   part_name = .Backhoe.PART_8  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- PART_9 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_9  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_9.MARKER_15  &
   adams_id = 15  &
   location = -1.5, 0.0, 1.7  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_9.MARKER_16  &
   adams_id = 16  &
   location = -2.2083012702, 0.0, 0.573186213  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_9.cm  &
   location = -1.8541506351, 0.0, 1.1365931065  &
   orientation = 270.0000000658d, 147.8470372109d, 179.9999988738d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_9  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_9.LINK_8  &
   i_marker = .Backhoe.PART_9.MARKER_15  &
   j_marker = .Backhoe.PART_9.MARKER_16  &
   width = 0.2  &
   depth = 0.18
!
part attributes  &
   part_name = .Backhoe.PART_9  &
   color = MAIZE  &
   name_visibility = off
!
!---------------------------------- PART_10 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_10  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_10.MARKER_17  &
   adams_id = 17  &
   location = -2.2083012702, 0.0, 0.573186213  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_10.MARKER_18  &
   adams_id = 18  &
   location = -2.285, 0.0, 0.3403401161  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_10.cm  &
   location = -2.2466506351, 0.0, 0.4567631645  &
   orientation = 270.0000000194d, 161.768288932d, 179.9999999078d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_10  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_10.LINK_9  &
   i_marker = .Backhoe.PART_10.MARKER_17  &
   j_marker = .Backhoe.PART_10.MARKER_18  &
   width = 0.2  &
   depth = 0.18
!
part attributes  &
   part_name = .Backhoe.PART_10  &
   color = CYAN  &
   name_visibility = off
!
!---------------------------------- PART_11 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_11  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_11.MARKER_19  &
   adams_id = 19  &
   location = -2.2083012702, 0.0, 0.573186213  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_11.MARKER_20  &
   adams_id = 20  &
   location = -2.4964101615, 0.0, 0.7741669751  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_11.cm  &
   location = -2.3523557159, 0.0, 0.673676594  &
   orientation = 270.0000000157d, 55.1009075462d, 90.0000006825d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_11  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_11.LINK_10  &
   i_marker = .Backhoe.PART_11.MARKER_19  &
   j_marker = .Backhoe.PART_11.MARKER_20  &
   width = 0.1  &
   depth = 0.1
!
part attributes  &
   part_name = .Backhoe.PART_11  &
   color = MAGENTA  &
   name_visibility = off
!
!---------------------------------- PART_12 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_12  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_12.MARKER_21  &
   adams_id = 21  &
   location = -2.4964101615, 0.0, 0.7741669751  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_12.MARKER_22  &
   adams_id = 22  &
   location = -2.7464101615, 0.0, 0.3411542732  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_12.cm  &
   location = -2.6214101615, 0.0, 0.5576606241  &
   orientation = 90.0000000364d, 30.0d, 269.9999978843d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_12  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_12.LINK_11  &
   i_marker = .Backhoe.PART_12.MARKER_21  &
   j_marker = .Backhoe.PART_12.MARKER_22  &
   width = 0.1  &
   depth = 0.1
!
part attributes  &
   part_name = .Backhoe.PART_12  &
   color = RED  &
   name_visibility = off
!
!---------------------------------- PART_13 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_13  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_13.MARKER_23  &
   adams_id = 23  &
   location = -2.2083012702, 0.0, 0.573186213  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_13.MARKER_24  &
   adams_id = 24  &
   location = -2.3598076211, 0.0, 0.8107695155  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_13.cm  &
   location = -2.2840544457, 0.0, 0.6919778642  &
   orientation = 270.0000000262d, 32.5255683737d, 90.0000008481d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_13  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_13.LINK_12  &
   i_marker = .Backhoe.PART_13.MARKER_23  &
   j_marker = .Backhoe.PART_13.MARKER_24  &
   width = 0.1  &
   depth = 0.1
!
part attributes  &
   part_name = .Backhoe.PART_13  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------------- PART_14 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
part create rigid_body name_and_position  &
   part_name = .Backhoe.PART_14  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.PART_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Backhoe.PART_14.MARKER_25  &
   adams_id = 25  &
   location = -2.7464101615, 0.0, 0.3411542732  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Backhoe.PART_14.Mkr_Bucket_Slave  &
   adams_id = 26  &
   location = -2.285, 0.0, 0.3403401161  &
   orientation = 0.0d, 90.0d, 220.0d
!
marker create  &
   marker_name = .Backhoe.PART_14.cm  &
   location = -2.5157050808, 0.0, 0.3407471946  &
   orientation = 269.9999999821d, 89.8989018386d, 89.999998037d
!
part create rigid_body mass_properties  &
   part_name = .Backhoe.PART_14  &
   material_type = .Backhoe.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Backhoe.PART_14.LINK_13  &
   i_marker = .Backhoe.PART_14.MARKER_25  &
   j_marker = .Backhoe.PART_14.Mkr_Bucket_Slave  &
   width = 0.1  &
   depth = 0.1
!
part attributes  &
   part_name = .Backhoe.PART_14  &
   color = MAIZE  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
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
   variable_name = .Backhoe.DV_Boom_Stick_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Boomcyl_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.43
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Stickcyl_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.7
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Stickcyl_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.36
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Boomcyl_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -5.0E-002
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucketcyl_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.35
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucketcyl_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.17
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Stickcyl_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.52
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Stickcyl_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -5.0E-002
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Link1_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -5.0E-002
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Link1_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.33
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucket_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.57
!
variable create  &
   variable_name = .Backhoe.DV_Bucket_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.29
!
variable create  &
   variable_name = .Backhoe.DV_Link1_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .Backhoe.DV_Link1_Bucketcyl_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .Backhoe.DV_Link1_Bucketcyl_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -9.0E-002
!
variable create  &
   variable_name = .Backhoe.DV_Link2_Length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.33
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Depth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.22
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Depth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.18
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .Backhoe.DV_Link_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .Backhoe.DV_Link_Depth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .Backhoe.DV_Boom_Theta  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 120.0
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Theta  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 120.0
!
variable create  &
   variable_name = .Backhoe.DV_Bucket_Theta  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -20.0
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Link2_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.3
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Link2_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.4
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucketpis_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucketpis_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.3
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucket_Link2_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8
!
variable create  &
   variable_name = .Backhoe.DV_Stick_Bucket_Link2_y  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.4
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .Backhoe.PART_2.Mkr_Boom_Slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({.Backhoe.DV_Boom_Theta, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_2
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_2.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Boom_Stickcyl_x, .Backhoe.DV_Boom_Stickcyl_y, 0}, .Backhoe.PART_2.Mkr_Boom_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_2
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_2.LINK_1  &
   width = (.Backhoe.DV_Boom_Width)  &
   depth = (.Backhoe.DV_Boom_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_3.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_3.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Boom_Boomcyl_x, .Backhoe.DV_Boom_Boomcyl_y, 0}, .Backhoe.PART_2.Mkr_Boom_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_3.LINK_2  &
   width = (.Backhoe.DV_Boom_Width)  &
   depth = (.Backhoe.DV_Boom_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_4.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_2.MARKER_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_4
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_4.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Boom_Stick_x, 0, 0}, .Backhoe.PART_2.Mkr_Boom_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_4
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_4.LINK_3  &
   width = (.Backhoe.DV_Boom_Width)  &
   depth = (.Backhoe.DV_Boom_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_5.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_3.MARKER_4))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_5
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_5.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Boom_Stick_x, 0, 0}, .Backhoe.PART_2.Mkr_Boom_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_5
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_5.LINK_4  &
   width = (.Backhoe.DV_Boom_Width)  &
   depth = (.Backhoe.DV_Boom_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_6.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Stickcyl_x, .Backhoe.DV_Stick_Stickcyl_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_6
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_6.Mkr_Stick_Slave  &
   orientation =   &
      (ORI_RELATIVE_TO({.Backhoe.DV_Boom_Theta + .Backhoe.DV_Stick_Theta, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_6
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_6.LINK_5  &
   width = (.Backhoe.DV_Stick_Width)  &
   depth = (.Backhoe.DV_Stick_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_7.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_6.MARKER_10))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_7
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_7.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Bucketcyl_x, .Backhoe.DV_Stick_Bucketcyl_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_7
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_7.LINK_6  &
   width = (.Backhoe.DV_Stick_Width)  &
   depth = (.Backhoe.DV_Stick_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_8.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Bucketcyl_x, .Backhoe.DV_Stick_Bucketcyl_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_8
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_8.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_9.MARKER_16))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_8
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_8.LINK_7  &
   width = (.Backhoe.DV_Stick_Width)  &
   depth = (.Backhoe.DV_Stick_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_9.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_9
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_9.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Link1_x, .Backhoe.DV_Stick_Link1_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_9
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_9.LINK_8  &
   width = (.Backhoe.DV_Stick_Width)  &
   depth = (.Backhoe.DV_Stick_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_10.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_9.MARKER_16))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_10
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_10.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Bucket_x, 0, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_10
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_10.LINK_9  &
   width = (.Backhoe.DV_Stick_Width)  &
   depth = (.Backhoe.DV_Stick_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_11.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_8.MARKER_14))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_11
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_11.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Link2_x, .Backhoe.DV_Stick_Link2_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_11
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_11.LINK_10  &
   width = (.Backhoe.DV_Link_Width)  &
   depth = (.Backhoe.DV_Link_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_12.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Link2_x, .Backhoe.DV_Stick_Link2_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_12
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_12.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Bucket_Link2_x, .Backhoe.DV_Stick_Bucket_Link2_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_12
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_12.LINK_11  &
   width = (.Backhoe.DV_Link_Width)  &
   depth = (.Backhoe.DV_Link_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_13.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_8.MARKER_14))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_13
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_13.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({.Backhoe.DV_Stick_Bucketpis_x, .Backhoe.DV_Stick_Bucketpis_y, 0}, .Backhoe.PART_6.Mkr_Stick_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_13
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_13.LINK_12  &
   width = (.Backhoe.DV_Link_Width)  &
   depth = (.Backhoe.DV_Link_Depth)
!
marker modify  &
   marker_name = .Backhoe.PART_14.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_12.MARKER_22))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_14
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
marker modify  &
   marker_name = .Backhoe.PART_14.Mkr_Bucket_Slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Backhoe.PART_10.MARKER_18))  &
   orientation =   &
      (ORI_RELATIVE_TO({.Backhoe.DV_Boom_Theta + .Backhoe.DV_Stick_Theta + .Backhoe.DV_Bucket_Theta, 0, 0}, .Backhoe.ground.Mkr_Master))  &
   relative_to = .Backhoe.PART_14
!
defaults coordinate_system  &
   default_coordinate_system = .Backhoe.ground
!
geometry modify shape link  &
   link_name = .Backhoe.PART_14.LINK_13  &
   width = (.Backhoe.DV_Link_Width)  &
   depth = (.Backhoe.DV_Link_Depth)
!
material modify  &
   material_name = .Backhoe.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = Backhoe
