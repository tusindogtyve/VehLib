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
   model_name = CaseLoader
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_LArm_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_LArm_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_LArm_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_RArm_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_RArm_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_RArm_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_LLink1_LArm_F  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_LLink1_LArm_P  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_LLink1_LArm_V  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_RLink1_RArm_F  &
   adams_id = 11  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_RLink1_RArm_P  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .CaseLoader.SV_Cyl_RLink1_RArm_V  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .CaseLoader.steel  &
   adams_id = 5  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .CaseLoader.steel_2  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .CaseLoader.steel_3  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .CaseLoader.steel_4  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .CaseLoader.steel_5  &
   adams_id = 4  &
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
   default_coordinate_system = .CaseLoader.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.ground.Mkr_CaseLoader_Master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_2  &
   adams_id = 2  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_3  &
   adams_id = 3  &
   location = 1.256231554, 0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_4  &
   adams_id = 4  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_5  &
   adams_id = 5  &
   location = 1.8735647611, 0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_17  &
   adams_id = 17  &
   location = 0.0, -0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_18  &
   adams_id = 18  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_19  &
   adams_id = 19  &
   location = 1.256231554, -0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_20  &
   adams_id = 20  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_21  &
   adams_id = 21  &
   location = 1.8735647611, -0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_32  &
   adams_id = 32  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_33  &
   adams_id = 33  &
   location = 1.256231554, 0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_34  &
   adams_id = 34  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_35  &
   adams_id = 35  &
   location = 1.256231554, -0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_36  &
   adams_id = 36  &
   location = 2.1835033648, -0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_37  &
   adams_id = 37  &
   location = 2.1835033648, 0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_54  &
   adams_id = 54  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_55  &
   adams_id = 55  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.ground.MARKER_175  &
   adams_id = 175  &
   location = 0.0, 0.0, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.ground  &
   material_type = .CaseLoader.steel
!
part attributes  &
   part_name = .CaseLoader.ground  &
   name_visibility = off
!
!---------------------------- Part_CaseLoader_Arm -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_Arm  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_Arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_8  &
   adams_id = 8  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.cm  &
   adams_id = 134  &
   location = 0.9869085115, 0.0, -0.7294673276  &
   orientation = -89.9999999983d, -2.7106652386E-009d, -53.087375391d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_9  &
   adams_id = 9  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_10  &
   adams_id = 10  &
   location = 1.8735647611, 0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_11  &
   adams_id = 11  &
   location = 1.8735647611, 0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_12  &
   adams_id = 12  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_13  &
   adams_id = 13  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_14  &
   adams_id = 14  &
   location = 1.256231554, 0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_15  &
   adams_id = 15  &
   location = 1.256231554, 0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_16  &
   adams_id = 16  &
   location = 0.0, 0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_22  &
   adams_id = 22  &
   location = 0.0, -0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_23  &
   adams_id = 23  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_24  &
   adams_id = 24  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_25  &
   adams_id = 25  &
   location = 1.8735647611, -0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_26  &
   adams_id = 26  &
   location = 1.8735647611, -0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_27  &
   adams_id = 27  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_28  &
   adams_id = 28  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_29  &
   adams_id = 29  &
   location = 1.256231554, -0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_30  &
   adams_id = 30  &
   location = 1.256231554, -0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_31  &
   adams_id = 31  &
   location = 0.0, -0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_98  &
   adams_id = 98  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_100  &
   adams_id = 100  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_102  &
   adams_id = 102  &
   location = 1.256231554, 0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_104  &
   adams_id = 104  &
   location = 1.256231554, -0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_118  &
   adams_id = 118  &
   location = 1.8735647611, -0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_121  &
   adams_id = 121  &
   location = 1.8735647611, 0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_122  &
   adams_id = 122  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_124  &
   adams_id = 124  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_161  &
   adams_id = 161  &
   location = 0.0, 0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_163  &
   adams_id = 163  &
   location = 0.0, -0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_Arm  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_1  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_7  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_8  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_2  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_9  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_10  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_3  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_11  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_12  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_4  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_13  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_14  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_5  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_15  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_16  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_6  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_22  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_23  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_7  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_24  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_25  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_8  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_26  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_27  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_9  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_28  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_29  &
   width = 0.15  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_10  &
   i_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_30  &
   j_marker = .CaseLoader.Part_CaseLoader_Arm.MARKER_31  &
   width = 0.15  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_Arm  &
   color = MIDNIGHT_BLUE  &
   name_visibility = off
!
!--------------------------- Part_CaseLoader_RLink1 ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_RLink1  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_RLink1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_38  &
   adams_id = 38  &
   location = 1.256231554, -0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_39  &
   adams_id = 39  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.cm  &
   adams_id = 136  &
   location = 1.256231554, -0.75, -0.5078275824  &
   orientation = 0.0d, 0.0d, 4.4323338807E-007d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_40  &
   adams_id = 40  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_41  &
   adams_id = 41  &
   location = 1.256231554, -0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_105  &
   adams_id = 105  &
   location = 1.256231554, -0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_109  &
   adams_id = 109  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_113  &
   adams_id = 113  &
   location = 1.256231554, -0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_RLink1  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_RLink1.LINK_11  &
   i_marker = .CaseLoader.Part_CaseLoader_RLink1.MARKER_38  &
   j_marker = .CaseLoader.Part_CaseLoader_RLink1.MARKER_39  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_RLink1.LINK_12  &
   i_marker = .CaseLoader.Part_CaseLoader_RLink1.MARKER_40  &
   j_marker = .CaseLoader.Part_CaseLoader_RLink1.MARKER_41  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_RLink1  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------- Part_CaseLoader_LLink1 ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_LLink1  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_LLink1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_42  &
   adams_id = 42  &
   location = 1.256231554, 0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_43  &
   adams_id = 43  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.cm  &
   adams_id = 137  &
   location = 1.256231554, 0.75, -0.5078275824  &
   orientation = 0.0d, 0.0d, 4.4332282176E-007d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_44  &
   adams_id = 44  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_45  &
   adams_id = 45  &
   location = 1.256231554, 0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_103  &
   adams_id = 103  &
   location = 1.256231554, 0.75, -0.819684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_107  &
   adams_id = 107  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_110  &
   adams_id = 110  &
   location = 1.256231554, 0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_LLink1  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_LLink1.LINK_13  &
   i_marker = .CaseLoader.Part_CaseLoader_LLink1.MARKER_42  &
   j_marker = .CaseLoader.Part_CaseLoader_LLink1.MARKER_43  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_LLink1.LINK_14  &
   i_marker = .CaseLoader.Part_CaseLoader_LLink1.MARKER_44  &
   j_marker = .CaseLoader.Part_CaseLoader_LLink1.MARKER_45  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_LLink1  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------- Part_CaseLoader_RLink2 ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_RLink2  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_RLink2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_46  &
   adams_id = 46  &
   location = 1.256231554, -0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_47  &
   adams_id = 47  &
   location = 2.1835033648, -0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.cm  &
   adams_id = 138  &
   location = 1.7198674594, -0.75, -0.6552517581  &
   orientation = 2.4674578055E-008d, -45.5029068559d, -1.8424019058E-006d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_112  &
   adams_id = 112  &
   location = 1.256231554, -0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_116  &
   adams_id = 116  &
   location = 2.1835033648, -0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_RLink2  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_RLink2.LINK_15  &
   i_marker = .CaseLoader.Part_CaseLoader_RLink2.MARKER_46  &
   j_marker = .CaseLoader.Part_CaseLoader_RLink2.MARKER_47  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_RLink2  &
   color = MIDNIGHT_BLUE  &
   name_visibility = off
!
!--------------------------- Part_CaseLoader_LLink2 ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_LLink2  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_LLink2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_48  &
   adams_id = 48  &
   location = 1.256231554, 0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_49  &
   adams_id = 49  &
   location = 2.1835033648, 0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.cm  &
   adams_id = 139  &
   location = 1.7198674594, 0.75, -0.6552517581  &
   orientation = 2.4674578055E-008d, -45.5029068559d, -1.8424828191E-006d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_111  &
   adams_id = 111  &
   location = 1.256231554, 0.75, -0.199684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_114  &
   adams_id = 114  &
   location = 2.1835033648, 0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_LLink2  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_LLink2.LINK_16  &
   i_marker = .CaseLoader.Part_CaseLoader_LLink2.MARKER_48  &
   j_marker = .CaseLoader.Part_CaseLoader_LLink2.MARKER_49  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_LLink2  &
   color = MIDNIGHT_BLUE  &
   name_visibility = off
!
!--------------------------- Part_CaseLoader_bucket ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_bucket  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_bucket
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_50  &
   adams_id = 50  &
   location = 2.1835033648, -0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_51  &
   adams_id = 51  &
   location = 1.8735647611, -0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.cm  &
   adams_id = 140  &
   location = 2.2377660275, 1.8928581932E-003, -1.4463645902  &
   orientation = 90.0012451157d, -2.65484192E-002d, 4.8251455232d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_52  &
   adams_id = 52  &
   location = 2.1835033648, 0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_53  &
   adams_id = 53  &
   location = 1.8735647611, 0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_115  &
   adams_id = 115  &
   location = 2.1835033648, 0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_117  &
   adams_id = 117  &
   location = 2.1835033648, -0.75, -1.1108192583  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_119  &
   adams_id = 119  &
   location = 1.8735647611, -0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_120  &
   adams_id = 120  &
   location = 1.8735647611, 0.75, -1.483864915  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_170  &
   adams_id = 170  &
   location = 1.8735647611, -1.0, -1.483864915  &
   orientation = -90.0d, 0.0d, 39.7209175473d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_171  &
   adams_id = 171  &
   location = 1.8735647611, -1.0, -1.483864915  &
   orientation = -90.0d, 0.0d, 39.7209175473d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_172  &
   adams_id = 172  &
   location = 1.8735647611, -1.0, -1.483864915  &
   orientation = -90.0d, 0.0d, 39.7209175473d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_173  &
   adams_id = 173  &
   location = 1.8735647611, 1.0, -1.483864915  &
   orientation = -90.0d, 0.0d, 39.7209175473d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_bucket  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_bucket.LINK_17  &
   i_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_50  &
   j_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_51  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
geometry create shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_25  &
   adams_id = 25  &
   corner_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_170  &
   diag_corner_coords = 2.0E-002, -1.0, 2.0
!
geometry create shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_26  &
   adams_id = 26  &
   corner_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_171  &
   diag_corner_coords = 1.0, 2.0E-002, 2.0
!
geometry create shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_27  &
   adams_id = 27  &
   corner_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_172  &
   diag_corner_coords = 1.0, -1.0, 2.0E-002
!
geometry create feature blend  &
   blend_name = .CaseLoader.Part_CaseLoader_bucket.BOX_27.BLEND_1  &
   subtype = edge  &
   radius1 = 1.0  &
   radius2 = 1.0  &
   reference_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_172  &
   locations = 1.0, -1.0, 1.0E-002  &
   chamfer = yes
!
geometry create shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_28  &
   adams_id = 28  &
   corner_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_173  &
   diag_corner_coords = 1.0, -1.0, 2.0E-002
!
geometry create feature blend  &
   blend_name = .CaseLoader.Part_CaseLoader_bucket.BOX_28.BLEND_1  &
   subtype = edge  &
   radius1 = 1.0  &
   radius2 = 1.0  &
   reference_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_173  &
   locations = 1.0, -1.0, 1.0E-002  &
   chamfer = yes
!
geometry create shape link  &
   link_name = .CaseLoader.Part_CaseLoader_bucket.LINK_18  &
   i_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_52  &
   j_marker = .CaseLoader.Part_CaseLoader_bucket.MARKER_53  &
   width = 7.0E-002  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_bucket  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------- Part_CaseLoader_Cs -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.Part_CaseLoader_Cs  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.Part_CaseLoader_Cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_174  &
   adams_id = 174  &
   location = 0.0, 0.0, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_159  &
   adams_id = 159  &
   location = 0.0, -0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.cm  &
   adams_id = 169  &
   location = -5.0E-003, 0.0, -0.28  &
   orientation = 90.0d, 0.0d, -1.0230301887d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_160  &
   adams_id = 160  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_162  &
   adams_id = 162  &
   location = 0.0, 0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_164  &
   adams_id = 164  &
   location = 0.0, -0.75, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_166  &
   adams_id = 166  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_168  &
   adams_id = 168  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.Part_CaseLoader_Cs  &
   material_type = .CaseLoader.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.Part_CaseLoader_Cs.CYLINDER_23  &
   adams_id = 23  &
   center_marker = .CaseLoader.Part_CaseLoader_Cs.MARKER_159  &
   angle_extent = 360.0  &
   length = 1.5  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.Part_CaseLoader_Cs.CYLINDER_24  &
   adams_id = 24  &
   center_marker = .CaseLoader.Part_CaseLoader_Cs.MARKER_160  &
   angle_extent = 360.0  &
   length = 1.5  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.Part_CaseLoader_Cs  &
   color = RED  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_LArm_cyl ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_Cs_LArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master  &
   adams_id = 56  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cm  &
   adams_id = 57  &
   location = 0.3841907604, 0.75, -0.6610452001  &
   orientation = 0.0d, -75.6226088716d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_2  &
   adams_id = 58  &
   location = -1.0E-002, 0.78, -0.56  &
   orientation = 90.0d, 0.0d, -104.3773911284d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_6  &
   adams_id = 59  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_11  &
   adams_id = 60  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.MARKER_167  &
   adams_id = 167  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl  &
   material_type = .CaseLoader.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.87  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_LArm_pis ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_Cs_LArm_pis  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_Cs_LArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.MARKER_101  &
   adams_id = 101  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave  &
   adams_id = 61  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = 0.0d, -75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cm  &
   adams_id = 62  &
   location = 0.6241703841, 0.75, -0.7225605665  &
   orientation = 0.0d, -75.6226088716d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_4  &
   adams_id = 63  &
   location = 0.9919665342, 0.72, -0.8168398833  &
   orientation = -90.0d, 0.0d, 104.3773911284d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_5  &
   adams_id = 64  &
   location = 0.9919665342, 0.75, -0.8168398833  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_12  &
   adams_id = 65  &
   location = -1.0E-002, 0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_Cs_LArm_pis  &
   material_type = .CaseLoader.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave  &
   angle_extent = 360.0  &
   length = 0.9  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_Cs_LArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_RArm_cyl ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_Cs_RArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master  &
   adams_id = 66  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cm  &
   adams_id = 67  &
   location = 0.3841907604, -0.75, -0.6610452001  &
   orientation = 0.0d, -75.6226088716d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_2  &
   adams_id = 68  &
   location = -1.0E-002, -0.72, -0.56  &
   orientation = 90.0d, 0.0d, -104.3773911284d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_6  &
   adams_id = 69  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_11  &
   adams_id = 70  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.MARKER_165  &
   adams_id = 165  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl  &
   material_type = .CaseLoader.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.CYLINDER  &
   adams_id = 5  &
   center_marker = .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.87  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.CYLINDER_2  &
   adams_id = 6  &
   center_marker = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_RArm_pis ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_Cs_RArm_pis  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_Cs_RArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.MARKER_99  &
   adams_id = 99  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave  &
   adams_id = 71  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = 0.0d, -75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cm  &
   adams_id = 72  &
   location = 0.6241703841, -0.75, -0.7225605665  &
   orientation = 0.0d, -75.6226088716d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_4  &
   adams_id = 73  &
   location = 0.9919665342, -0.78, -0.8168398833  &
   orientation = -90.0d, 0.0d, 104.3773911284d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_5  &
   adams_id = 74  &
   location = 0.9919665342, -0.75, -0.8168398833  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_12  &
   adams_id = 75  &
   location = -1.0E-002, -0.75, -0.56  &
   orientation = -180.0d, 75.6226088716d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_Cs_RArm_pis  &
   material_type = .CaseLoader.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.CYLINDER_3  &
   adams_id = 7  &
   center_marker = .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave  &
   angle_extent = 360.0  &
   length = 0.9  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.CYLINDER_4  &
   adams_id = 8  &
   center_marker = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_Cs_RArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------- PART_Cyl_LLink1_LArm_cyl --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MARKER_106  &
   adams_id = 106  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master  &
   adams_id = 76  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cm  &
   adams_id = 77  &
   location = 1.3075387463, 0.75, -0.5616506273  &
   orientation = 0.0d, -33.6881500168d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_2  &
   adams_id = 78  &
   location = 1.256231554, 0.78, -0.484684258  &
   orientation = 90.0d, 0.0d, -146.3118499832d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_6  &
   adams_id = 79  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MARKER_13  &
   adams_id = 80  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = 0.0d, -33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_11  &
   adams_id = 81  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl  &
   material_type = .CaseLoader.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.CYLINDER  &
   adams_id = 9  &
   center_marker =   &
                   .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.47  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.CYLINDER_2  &
   adams_id = 10  &
   center_marker = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.CYLINDER_5  &
   adams_id = 11  &
   center_marker = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MARKER_13  &
   angle_extent = 360.0  &
   length = 0.27  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------- PART_Cyl_LLink1_LArm_pis --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_LLink1_LArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave  &
   adams_id = 82  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = 0.0d, -33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cm  &
   adams_id = 83  &
   location = 1.4928300042, 0.75, -0.8396076688  &
   orientation = 0.0d, -33.6881500168d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_4  &
   adams_id = 84  &
   location = 1.6683808421, 0.72, -1.1029530207  &
   orientation = -90.0d, 0.0d, 146.3118499832d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_5  &
   adams_id = 85  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_12  &
   adams_id = 86  &
   location = 1.256231554, 0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.MARKER_123  &
   adams_id = 123  &
   location = 1.6683808421, 0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis  &
   material_type = .CaseLoader.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.CYLINDER_3  &
   adams_id = 12  &
   center_marker =   &
                   .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave  &
   angle_extent = 360.0  &
   length = 0.77  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.CYLINDER_4  &
   adams_id = 13  &
   center_marker = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------- PART_Cyl_RLink1_RArm_cyl --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MARKER_108  &
   adams_id = 108  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master  &
   adams_id = 87  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cm  &
   adams_id = 88  &
   location = 1.3075387463, -0.75, -0.5616506273  &
   orientation = 0.0d, -33.6881500168d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_2  &
   adams_id = 89  &
   location = 1.256231554, -0.72, -0.484684258  &
   orientation = 90.0d, 0.0d, -146.3118499832d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_6  &
   adams_id = 90  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MARKER_13  &
   adams_id = 91  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = 0.0d, -33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_11  &
   adams_id = 92  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl  &
   material_type = .CaseLoader.steel_5
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.CYLINDER  &
   adams_id = 14  &
   center_marker =   &
                   .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.47  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.CYLINDER_2  &
   adams_id = 15  &
   center_marker = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.CYLINDER_5  &
   adams_id = 16  &
   center_marker = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MARKER_13  &
   angle_extent = 360.0  &
   length = 0.27  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------- PART_Cyl_RLink1_RArm_pis --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
part create rigid_body name_and_position  &
   part_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.PART_Cyl_RLink1_RArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave  &
   adams_id = 93  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = 0.0d, -33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cm  &
   adams_id = 94  &
   location = 1.4928300042, -0.75, -0.8396076688  &
   orientation = 0.0d, -33.6881500168d, 0.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_4  &
   adams_id = 95  &
   location = 1.6683808421, -0.78, -1.1029530207  &
   orientation = -90.0d, 0.0d, 146.3118499832d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_5  &
   adams_id = 96  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_12  &
   adams_id = 97  &
   location = 1.256231554, -0.75, -0.484684258  &
   orientation = -180.0d, 33.6881500168d, 180.0d
!
marker create  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.MARKER_125  &
   adams_id = 125  &
   location = 1.6683808421, -0.75, -1.1029530207  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis  &
   material_type = .CaseLoader.steel_5
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.CYLINDER_3  &
   adams_id = 17  &
   center_marker =   &
                   .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave  &
   angle_extent = 360.0  &
   length = 0.77  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.CYLINDER_4  &
   adams_id = 18  &
   center_marker = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_98  &
   j_marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.MARKER_99
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_6  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .CaseLoader.JT_Cyl_Cs_LArm_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_11  &
   j_marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .CaseLoader.JT_Cyl_Cs_LArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .CaseLoader.JT_Cyl_Cs_RArm_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_11  &
   j_marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .CaseLoader.JT_Cyl_Cs_RArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .CaseLoader.JT_Cyl_LLink1_LArm_cyl_pis  &
   adams_id = 4  &
   i_marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_11  &
   j_marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .CaseLoader.JT_Cyl_LLink1_LArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .CaseLoader.JT_Cyl_RLink1_RArm_cyl_pis  &
   adams_id = 5  &
   i_marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_11  &
   j_marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .CaseLoader.JT_Cyl_RLink1_RArm_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_100  &
   j_marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.MARKER_101
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_7  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_102  &
   j_marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_103
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_8  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_104  &
   j_marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_105
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_9  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MARKER_106  &
   j_marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_107
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_10  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MARKER_108  &
   j_marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_109
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_11  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_12  &
   adams_id = 12  &
   i_marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_110  &
   j_marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_111
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_12  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_13  &
   adams_id = 13  &
   i_marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_112  &
   j_marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_113
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_13  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_14  &
   adams_id = 14  &
   i_marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_114  &
   j_marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_115
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_14  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_15  &
   adams_id = 15  &
   i_marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_116  &
   j_marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_117
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_15  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_16  &
   adams_id = 16  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_118  &
   j_marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_119
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_16  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_17  &
   adams_id = 17  &
   i_marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_120  &
   j_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_121
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_17  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_18  &
   adams_id = 18  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_122  &
   j_marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.MARKER_123
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_18  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_19  &
   adams_id = 19  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_124  &
   j_marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.MARKER_125
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_19  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_26  &
   adams_id = 26  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_161  &
   j_marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_162
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_26  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_27  &
   adams_id = 27  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_163  &
   j_marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_164
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_27  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_28  &
   adams_id = 28  &
   i_marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.MARKER_165  &
   j_marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_166
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_28  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .CaseLoader.JOINT_29  &
   adams_id = 29  &
   i_marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.MARKER_167  &
   j_marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_168
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_29  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .CaseLoader.JOINT_30  &
   adams_id = 30  &
   i_marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_174  &
   j_marker_name = .CaseLoader.ground.MARKER_175
!
constraint attributes  &
   constraint_name = .CaseLoader.JOINT_30  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_Cs_LArm_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_5  &
   j_marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_Cs_RArm_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_5  &
   j_marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_LLink1_LArm_force  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_5  &
   j_marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_RLink1_RArm_force  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_5  &
   j_marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .CaseLoader.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=1.0 number_of_steps=100 model_name=.CaseLoader initial_static=no"
!
simulation script create  &
   sim_script_name = .CaseLoader.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .CaseLoader.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .CaseLoader.Last_Sim_4  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
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
   variable_name = .CaseLoader.Dv_CaseLoader_size_link1  &
   real_value = 0.62
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_size_link2  &
   real_value = 1.3
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_size_link3  &
   real_value = 0.485
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_loader_width  &
   real_value = 1.5
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bucket_length  &
   units = "no_units"  &
   use_allowed_values = no  &
   real_value = 2.0
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bucket_height  &
   units = "no_units"  &
   use_allowed_values = no  &
   real_value = 1.0
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bucket_depth  &
   real_value = 1.0
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_thetab  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -88.9769698113
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.0E-002
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.56
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta1  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -39.4699220327
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p1x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9919665342
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p1z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.8168398833
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_ArmMountx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_ArmMountz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -33.1242296026
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p2x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.256231554
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p2z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.819684258
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta3  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -33.4683668274
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p3x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.6683808421
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p3z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.1029530207
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta4  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -38.3792544408
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p4x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8735647611
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_p4z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.483864915
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p3x  &
   real_value = 1.256231554
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p2x  &
   real_value = 1.256231554
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p2z  &
   real_value = -0.484684258
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p3z  &
   real_value = -0.199684258
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_distp3p4  &
   real_value = 1.4248579748
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_newangle  &
   real_value = 25.67459269
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_newangle2  &
   real_value = 19.8283141659
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link2_p2x  &
   real_value = 2.1835033648
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link2_p2z  &
   real_value = -1.1108192583
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_LArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_LArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_LArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_LArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_LArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_RArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_RArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_RArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_RArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_Cs_RArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_LLink1_LArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_LLink1_LArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_LLink1_LArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_LLink1_LArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_LLink1_LArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_RLink1_RArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_RLink1_RArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_RLink1_RArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_RLink1_RArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .CaseLoader.DV_Cyl_RLink1_RArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bucket_thick  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .CaseLoader.DV_CaseLoader_bucket_thickness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .CaseLoader.Dv_CaseLoader_bucket_theta  &
   real_value = 39.7209175473
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_LArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_LArm_P  &
   function = "DZ( .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_LArm_V  &
   function = "VZ( .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_RArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_RArm_P  &
   function = "DZ( .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_Cs_RArm_V  &
   function = "VZ( .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_LLink1_LArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_LLink1_LArm_P  &
   function = "DZ( .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_LLink1_LArm_V  &
   function = "VZ( .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_RLink1_RArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_RLink1_RArm_P  &
   function = "DZ( .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .CaseLoader.SV_Cyl_RLink1_RArm_V  &
   function = "VZ( .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_Cs_LArm_force  &
   function = "VARVAL( .CaseLoader.SV_Cyl_Cs_LArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master) , ",  &
              "VZ( .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master) , ",  &
              ".CaseLoader.DV_Cyl_Cs_LArm_min_length , .CaseLoader.DV_Cyl_Cs_LArm_max_length , 50e9 , 1.0 , 20e9 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_Cs_RArm_force  &
   function = "VARVAL( .CaseLoader.SV_Cyl_Cs_RArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master) , ",  &
              "VZ( .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master) , ",  &
              ".CaseLoader.DV_Cyl_Cs_RArm_min_length , .CaseLoader.DV_Cyl_Cs_RArm_max_length , 50e9 , 1.0 , 20e9 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_LLink1_LArm_force  &
   function = "VARVAL( .CaseLoader.SV_Cyl_LLink1_LArm_F) +",  &
              "BISTOP( ",  &
              "DZ( .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master) , ",  &
              "VZ( .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master) , ",  &
              ".CaseLoader.DV_Cyl_LLink1_LArm_min_length , .CaseLoader.DV_Cyl_LLink1_LArm_max_length , 50e9 , 1.0 , 20e9 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .CaseLoader.F_Cyl_RLink1_RArm_force  &
   function = "VARVAL( .CaseLoader.SV_Cyl_RLink1_RArm_F) +",  &
              "BISTOP( ",  &
              "DZ( .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master) , ",  &
              "VZ( .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master) , ",  &
              ".CaseLoader.DV_Cyl_RLink1_RArm_min_length , .CaseLoader.DV_Cyl_RLink1_RArm_max_length , 50e9 , 1.0 , 20e9 , 0.01 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0, -.CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_36  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_54  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
marker modify  &
   marker_name = .CaseLoader.ground.MARKER_55  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_thetab  &
   real_value = (-90 + ATAN((.CaseLoader.Dv_CaseLoader_bx / .CaseLoader.Dv_CaseLoader_bz)d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta1  &
   real_value = (.CaseLoader.Dv_CaseLoader_thetab + ACOS(((.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2 + 1.285**2 - 1.015**2) / (2 * (.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2)**0.5 * 1.285))d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p1x  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountx + 1.285 * COS(.CaseLoader.Dv_CaseLoader_theta1 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p1z  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountz + 1.285 * SIN(.CaseLoader.Dv_CaseLoader_theta1 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta2  &
   real_value = (.CaseLoader.Dv_CaseLoader_thetab + ACOS((.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2 + 1.5**2 - 1.273**2) / (2 * (.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2)**0.5 * 1.5)d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p2x  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountx + 1.5 * COS(.CaseLoader.Dv_CaseLoader_theta2 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p2z  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountz + 1.5 * SIN(.CaseLoader.Dv_CaseLoader_theta2 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta3  &
   real_value = (.CaseLoader.Dv_CaseLoader_thetab + ACOS((.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2 + 2**2 - 1.745**2) / (2 * (.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2)**0.5 * 2)d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p3x  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountx + 2 * COS(.CaseLoader.Dv_CaseLoader_theta3 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p3z  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountz + 2 * SIN(.CaseLoader.Dv_CaseLoader_theta3 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_theta4  &
   real_value = (.CaseLoader.Dv_CaseLoader_thetab + ACOS((.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2 + 2.39**2 - 2.08**2) / (2 * (.CaseLoader.Dv_CaseLoader_bz**2 + .CaseLoader.Dv_CaseLoader_bx**2)**0.5 * 2.39)d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p4x  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountx + 2.39 * COS(.CaseLoader.Dv_CaseLoader_theta4 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_p4z  &
   real_value = (.CaseLoader.Dv_CaseLoader_ArmMountz + 2.39 * SIN(.CaseLoader.Dv_CaseLoader_theta4 d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p3x  &
   real_value = (.CaseLoader.Dv_CaseLoader_p2x)
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p2x  &
   real_value = (.CaseLoader.Dv_CaseLoader_p2x)
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p2z  &
   real_value = (.CaseLoader.Dv_CaseLoader_p2z + 0.335)
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link1_p3z  &
   real_value = (.CaseLoader.Dv_CaseLoader_p2z + .CaseLoader.Dv_CaseLoader_size_link1)
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_distp3p4  &
   real_value = (((.CaseLoader.Dv_CaseLoader_p4x - .CaseLoader.Dv_CaseLoader_Link1_p3x)**2 + (.CaseLoader.Dv_CaseLoader_p4z - .CaseLoader.Dv_CaseLoader_Link1_p3z)**2)**0.5)
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_newangle  &
   real_value = (90 - ASIN((.CaseLoader.Dv_CaseLoader_Link1_p3z - .CaseLoader.Dv_CaseLoader_p4z) / .CaseLoader.Dv_CaseLoader_distp3p4))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_newangle2  &
   real_value = (ACOS(((.CaseLoader.Dv_CaseLoader_size_link3**2 - .CaseLoader.Dv_CaseLoader_distp3p4**2 - .CaseLoader.Dv_CaseLoader_size_link2**2) / (-2 * .CaseLoader.Dv_CaseLoader_distp3p4 * .CaseLoader.Dv_CaseLoader_size_link2))d))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link2_p2x  &
   real_value = (.CaseLoader.Dv_CaseLoader_Link1_p3x + COS(.CaseLoader.Dv_CaseLoader_newangle + .CaseLoader.Dv_CaseLoader_newangle2 - 90) * .CaseLoader.Dv_CaseLoader_size_link2)
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_Link2_p2z  &
   real_value = (.CaseLoader.Dv_CaseLoader_Link1_p3z + SIN(.CaseLoader.Dv_CaseLoader_newangle + .CaseLoader.Dv_CaseLoader_newangle2 - 90) * .CaseLoader.Dv_CaseLoader_size_link2)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_5  &
   width = (0.15meter)  &
   depth = (7.5E-002meter)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_100  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_102  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_121  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_122  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_161  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({0, -.CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_6  &
   width = (15.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_7  &
   width = (15.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_8  &
   width = (15.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_29  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_9  &
   width = (15.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, -.CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_Arm.LINK_10  &
   width = (15.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_98  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_104  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_118  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_124  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Arm.MARKER_163  &
   location =   &
      (LOC_RELATIVE_TO({0, -.CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_38  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_39  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_RLink1.LINK_11  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_40  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_RLink1.LINK_12  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_105  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_109  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink1.MARKER_113  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_LLink1.LINK_13  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_LLink1.LINK_14  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_103  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_107  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink1.MARKER_110  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_RLink2.LINK_15  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_112  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_RLink2.MARKER_116  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_49  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_LLink2.LINK_16  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_111  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_LLink2.MARKER_114  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_bucket.LINK_17  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_117  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_119  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_170  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_bucket_length / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, .CaseLoader.Dv_CaseLoader_bucket_theta}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_25  &
   diag_corner_coords =   &
      (.CaseLoader.DV_CaseLoader_bucket_thickness),  &
      (-.CaseLoader.Dv_CaseLoader_bucket_height),  &
      (.CaseLoader.Dv_CaseLoader_bucket_length)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_171  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_bucket_length / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, .CaseLoader.Dv_CaseLoader_bucket_theta}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_26  &
   diag_corner_coords =   &
      (.CaseLoader.Dv_CaseLoader_bucket_height),  &
      (.CaseLoader.DV_CaseLoader_bucket_thickness),  &
      (.CaseLoader.Dv_CaseLoader_bucket_length)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_172  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, -.CaseLoader.Dv_CaseLoader_bucket_length / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, .CaseLoader.Dv_CaseLoader_bucket_theta}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_27  &
   diag_corner_coords =   &
      (.CaseLoader.Dv_CaseLoader_bucket_height),  &
      (-.CaseLoader.Dv_CaseLoader_bucket_height),  &
      (.CaseLoader.DV_CaseLoader_bucket_thickness)
!
geometry modify feature blend  &
   blend_name = .CaseLoader.Part_CaseLoader_bucket.BOX_27.BLEND_1  &
   radius1 = (.CaseLoader.Dv_CaseLoader_bucket_height)  &
   radius2 = (.CaseLoader.Dv_CaseLoader_bucket_height)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_173  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_bucket_length / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, .CaseLoader.Dv_CaseLoader_bucket_theta}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape block  &
   block_name = .CaseLoader.Part_CaseLoader_bucket.BOX_28  &
   diag_corner_coords =   &
      (.CaseLoader.Dv_CaseLoader_bucket_height),  &
      (-.CaseLoader.Dv_CaseLoader_bucket_height),  &
      (.CaseLoader.DV_CaseLoader_bucket_thickness)
!
geometry modify feature blend  &
   blend_name = .CaseLoader.Part_CaseLoader_bucket.BOX_28.BLEND_1  &
   radius1 = (.CaseLoader.Dv_CaseLoader_bucket_height)  &
   radius2 = (.CaseLoader.Dv_CaseLoader_bucket_height)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_53  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape link  &
   link_name = .CaseLoader.Part_CaseLoader_bucket.LINK_18  &
   width = (7.0cm)  &
   depth = (7.5cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_115  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link2_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link2_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_bucket.MARKER_120  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p4x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p4z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
material modify  &
   material_name = .CaseLoader.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_54))  &
   orientation =   &
      (ORI_ALONG_AXIS(.CaseLoader.ground.MARKER_54, .CaseLoader.ground.MARKER_2, "z"))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_Cs_LArm_rc, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.CYLINDER  &
   length = (.CaseLoader.DV_Cyl_Cs_LArm_min_length - .CaseLoader.DV_Cyl_Cs_LArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_Cs_LArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.CYLINDER_2  &
   length = (.CaseLoader.DV_Cyl_Cs_LArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_Cs_LArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_cyl.MARKER_167  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_Cs_LArm_rc, 0}, .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.CYLINDER_3  &
   length = (.CaseLoader.DV_Cyl_Cs_LArm_min_length)  &
   radius = (.CaseLoader.DV_Cyl_Cs_LArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.CYLINDER_4  &
   length = (.CaseLoader.DV_Cyl_Cs_LArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_Cs_LArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_LArm_pis.MARKER_101  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
material modify  &
   material_name = .CaseLoader.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_55))  &
   orientation =   &
      (ORI_ALONG_AXIS(.CaseLoader.ground.MARKER_55, .CaseLoader.ground.MARKER_18, "z"))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_Cs_RArm_rc, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.CYLINDER  &
   length = (.CaseLoader.DV_Cyl_Cs_RArm_min_length - .CaseLoader.DV_Cyl_Cs_RArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_Cs_RArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.CYLINDER_2  &
   length = (.CaseLoader.DV_Cyl_Cs_RArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_Cs_RArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_cyl.MARKER_165  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_18))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_Cs_RArm_rc, 0}, .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.CYLINDER_3  &
   length = (.CaseLoader.DV_Cyl_Cs_RArm_min_length)  &
   radius = (.CaseLoader.DV_Cyl_Cs_RArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.CYLINDER_4  &
   length = (.CaseLoader.DV_Cyl_Cs_RArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_Cs_RArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_Cs_RArm_pis.MARKER_99  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p1x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p1z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
material modify  &
   material_name = .CaseLoader.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_32))  &
   orientation =   &
      (ORI_ALONG_AXIS(.CaseLoader.ground.MARKER_32, .CaseLoader.ground.MARKER_4, "z"))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_LLink1_LArm_rc, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.CYLINDER  &
   length = (.CaseLoader.DV_Cyl_LLink1_LArm_min_length - .CaseLoader.DV_Cyl_LLink1_LArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_LLink1_LArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.CYLINDER_2  &
   length = (.CaseLoader.DV_Cyl_LLink1_LArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_LLink1_LArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.CYLINDER_5  &
   length = (.CaseLoader.DV_Cyl_LLink1_LArm_max_length - .CaseLoader.DV_Cyl_LLink1_LArm_min_length - .CaseLoader.DV_Cyl_LLink1_LArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_LLink1_LArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MARKER_106  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_4))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_LLink1_LArm_rc, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_pis.MKR_LLink1_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_LLink1_LArm_cyl.MKR_LLink1_LArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.CYLINDER_3  &
   length = (.CaseLoader.DV_Cyl_LLink1_LArm_max_length - .CaseLoader.DV_Cyl_LLink1_LArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_LLink1_LArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.CYLINDER_4  &
   length = (.CaseLoader.DV_Cyl_LLink1_LArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_LLink1_LArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_LLink1_LArm_pis.MARKER_123  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_LLink1_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
material modify  &
   material_name = .CaseLoader.steel_5  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_34))  &
   orientation =   &
      (ORI_ALONG_AXIS(.CaseLoader.ground.MARKER_34, .CaseLoader.ground.MARKER_20, "z"))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_RLink1_RArm_rc, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.CYLINDER  &
   length = (.CaseLoader.DV_Cyl_RLink1_RArm_min_length - .CaseLoader.DV_Cyl_RLink1_RArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_RLink1_RArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.CYLINDER_2  &
   length = (.CaseLoader.DV_Cyl_RLink1_RArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_RLink1_RArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.CYLINDER_5  &
   length = (.CaseLoader.DV_Cyl_RLink1_RArm_max_length - .CaseLoader.DV_Cyl_RLink1_RArm_min_length - .CaseLoader.DV_Cyl_RLink1_RArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_RLink1_RArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MARKER_108  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_Link1_p2x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_Link1_p2z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.ground.MARKER_20))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.DV_Cyl_RLink1_RArm_rc, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_pis.MKR_RLink1_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .CaseLoader.PART_Cyl_RLink1_RArm_cyl.MKR_RLink1_RArm_cyl_master))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.CYLINDER_3  &
   length = (.CaseLoader.DV_Cyl_RLink1_RArm_max_length - .CaseLoader.DV_Cyl_RLink1_RArm_rc)  &
   radius = (.CaseLoader.DV_Cyl_RLink1_RArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.CYLINDER_4  &
   length = (.CaseLoader.DV_Cyl_RLink1_RArm_rc * 2)  &
   radius = (.CaseLoader.DV_Cyl_RLink1_RArm_rc)
!
marker modify  &
   marker_name = .CaseLoader.PART_Cyl_RLink1_RArm_pis.MARKER_125  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_p3x, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_p3z}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.PART_Cyl_RLink1_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_159  &
   location =   &
      (LOC_RELATIVE_TO({0, -.CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.Part_CaseLoader_Cs.CYLINDER_23  &
   length = (.CaseLoader.Dv_CaseLoader_loader_width)  &
   radius = (1.0E-002meter)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_160  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
geometry modify shape cylinder  &
   cylinder_name = .CaseLoader.Part_CaseLoader_Cs.CYLINDER_24  &
   length = (.CaseLoader.Dv_CaseLoader_loader_width)  &
   radius = (1.0cm)
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_162  &
   location =   &
      (LOC_RELATIVE_TO({0, .CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_164  &
   location =   &
      (LOC_RELATIVE_TO({0, -.CaseLoader.Dv_CaseLoader_loader_width / 2, 0}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_166  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, -.CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
marker modify  &
   marker_name = .CaseLoader.Part_CaseLoader_Cs.MARKER_168  &
   location =   &
      (LOC_RELATIVE_TO({.CaseLoader.Dv_CaseLoader_bx, .CaseLoader.Dv_CaseLoader_loader_width / 2, .CaseLoader.Dv_CaseLoader_bz}, .CaseLoader.ground.Mkr_CaseLoader_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.CaseLoader.ground.Mkr_CaseLoader_Master, "zy"))  &
   relative_to = .CaseLoader.Part_CaseLoader_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .CaseLoader.ground
!
material modify  &
   material_name = .CaseLoader.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
variable modify  &
   variable_name = .CaseLoader.Dv_CaseLoader_bucket_theta  &
   real_value = (ATAN((.CaseLoader.Dv_CaseLoader_p4x - .CaseLoader.Dv_CaseLoader_Link2_p2x) / (.CaseLoader.Dv_CaseLoader_p4z - .CaseLoader.Dv_CaseLoader_Link2_p2z)d))
!
model display  &
   model_name = CaseLoader
