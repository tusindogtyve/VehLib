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
   model_name = cs4w
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .cs4w.steel  &
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
   default_coordinate_system = .cs4w.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .cs4w.ground.MKR_master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_wheel_2L  &
   adams_id = 2  &
   location = 0.0, 1.44, 0.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_wheel_2R  &
   adams_id = 3  &
   location = 0.0, -1.44, 0.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_wheel_1L  &
   adams_id = 4  &
   location = 3.6, 1.44, 0.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_wheel_1R  &
   adams_id = 5  &
   location = 3.6, -1.44, 0.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_slave_axle_1  &
   adams_id = 6  &
   location = 3.6, 0.0, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_slave_box  &
   adams_id = 7  &
   location = 1.7, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_slave_RearImp  &
   adams_id = 10  &
   location = -0.4, 0.0, 0.9  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_slave_frontImp  &
   adams_id = 11  &
   location = 2.0, 0.0, 1.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.MKR_slave_axle_2  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.ground.Mkr_slave_stabi  &
   adams_id = 13  &
   location = -0.4, 0.0, 0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .cs4w.ground  &
   material_type = .cs4w.steel
!
part attributes  &
   part_name = .cs4w.ground  &
   name_visibility = off
!
!---------------------------------- PART_Cs -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .cs4w.ground
!
part create rigid_body name_and_position  &
   part_name = .cs4w.PART_Cs  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .cs4w.PART_Cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .cs4w.PART_Cs.MARKER_8  &
   adams_id = 8  &
   location = 1.7, 1.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cs4w.PART_Cs.cm  &
   location = 1.2882352941, 0.0, 0.8705882353  &
   orientation = 269.9999999999d, 87.7442619851d, 89.9999999844d
!
marker create  &
   marker_name = .cs4w.PART_Cs.MARKER_9  &
   adams_id = 9  &
   location = 1.7, 0.5, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .cs4w.PART_Cs  &
   material_type = .cs4w.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .cs4w.PART_Cs.BOX_R  &
   adams_id = 1  &
   corner_marker = .cs4w.PART_Cs.MARKER_8  &
   diag_corner_coords = -2.0, -2.0, 1.2
!
geometry create shape block  &
   block_name = .cs4w.PART_Cs.BOX_F  &
   adams_id = 2  &
   corner_marker = .cs4w.PART_Cs.MARKER_9  &
   diag_corner_coords = 2.0, -1.0, 1.0
!
part attributes  &
   part_name = .cs4w.PART_Cs  &
   color = RED  &
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
   variable_name = .cs4w.DV_Cs_dst_x_Fbox  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_y_Fbox  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_z_Fbox  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_x_Rbox  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_y_Rbox  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_z_Rbox  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_x_wheel_base  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.6
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_x_Raxle_boxMKR  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_z_axle_1  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.2
!
variable create  &
   variable_name = .cs4w.DV_Cs_dst_z_axle2_boxMKR  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.1
!
variable create  &
   variable_name = .cs4w.DV_imp_rear  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.4, 0.0, 0.5
!
variable create  &
   variable_name = .cs4w.DV_imp_front  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0, 0.0, 0.8
!
variable create  &
   variable_name = .cs4w.DV_imp_stabi  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.4, 0.0, 0.1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .cs4w.ground.MKR_wheel_2L  &
   location =   &
      (LOC_RELATIVE_TO({0, .cs4w.DV_Cs_dst_x_wheel_base * 0.4, 0}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_wheel_2R  &
   location =   &
      (LOC_RELATIVE_TO({0, -.cs4w.DV_Cs_dst_x_wheel_base * 0.4, 0}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_wheel_1L  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_Cs_dst_x_wheel_base, .cs4w.DV_Cs_dst_x_wheel_base * 0.4, 0}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_wheel_1R  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_Cs_dst_x_wheel_base, -.cs4w.DV_Cs_dst_x_wheel_base * 0.4, 0}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_slave_axle_1  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_Cs_dst_x_wheel_base, 0, .cs4w.DV_Cs_dst_z_axle_1}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_slave_box  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_Cs_dst_x_Raxle_boxMKR, 0, .cs4w.DV_Cs_dst_z_axle2_boxMKR}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_slave_RearImp  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_imp_rear}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_slave_frontImp  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_imp_front}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.MKR_slave_axle_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.ground.Mkr_slave_stabi  &
   location =   &
      (LOC_RELATIVE_TO({.cs4w.DV_imp_stabi}, .cs4w.ground.MKR_master))
!
marker modify  &
   marker_name = .cs4w.PART_Cs.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, .cs4w.DV_Cs_dst_y_Rbox * 0.5, 0}, .cs4w.ground.MKR_slave_box))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))  &
   relative_to = .cs4w.PART_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .cs4w.ground
!
geometry modify shape block  &
   block_name = .cs4w.PART_Cs.BOX_R  &
   diag_corner_coords =   &
      (-.cs4w.DV_Cs_dst_x_Rbox),  &
      (-.cs4w.DV_Cs_dst_y_Rbox),  &
      (.cs4w.DV_Cs_dst_z_Rbox)
!
marker modify  &
   marker_name = .cs4w.PART_Cs.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, .cs4w.DV_Cs_dst_y_Fbox * 0.5, 0}, .cs4w.ground.MKR_slave_box))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cs4w.ground.MKR_master))  &
   relative_to = .cs4w.PART_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .cs4w.ground
!
geometry modify shape block  &
   block_name = .cs4w.PART_Cs.BOX_F  &
   diag_corner_coords =   &
      (.cs4w.DV_Cs_dst_x_Fbox),  &
      (-.cs4w.DV_Cs_dst_y_Fbox),  &
      (.cs4w.DV_Cs_dst_z_Fbox)
!
material modify  &
   material_name = .cs4w.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
variable modify  &
   variable_name = .cs4w.DV_imp_rear  &
   real_value = ({-0.4, 0, 0.5})
!
variable modify  &
   variable_name = .cs4w.DV_imp_front  &
   real_value = ({2.0, 0, 0.8})
!
variable modify  &
   variable_name = .cs4w.DV_imp_stabi  &
   real_value = ({-0.4, 0, 0.1})
!
model display  &
   model_name = cs4w
