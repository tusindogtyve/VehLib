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
   model_name = stiffAxle
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .stiffAxle.steel  &
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
   default_coordinate_system = .stiffAxle.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .stiffAxle.ground.MKR_master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .stiffAxle.ground  &
   material_type = .stiffAxle.steel
!
part attributes  &
   part_name = .stiffAxle.ground  &
   name_visibility = off
!
!--------------------------------- PART_axle ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .stiffAxle.ground
!
part create rigid_body name_and_position  &
   part_name = .stiffAxle.PART_axle  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .stiffAxle.PART_axle
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .stiffAxle.PART_axle.MKR_wheel_RR  &
   adams_id = 2  &
   location = 0.0, -1.1, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .stiffAxle.PART_axle.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .stiffAxle.PART_axle.MKR_wheel_RL  &
   adams_id = 3  &
   location = 0.0, 1.1, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .stiffAxle.PART_axle  &
   material_type = .stiffAxle.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .stiffAxle.PART_axle.CYLINDER_1  &
   adams_id = 1  &
   center_marker = .stiffAxle.PART_axle.MKR_wheel_RR  &
   angle_extent = 360.0  &
   length = 2.2  &
   radius = 0.12  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .stiffAxle.PART_axle  &
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
   variable_name = .stiffAxle.DV_dst_y_wheels  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.2
!
variable create  &
   variable_name = .stiffAxle.DV_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.12
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .stiffAxle.PART_axle.MKR_wheel_RR  &
   location =   &
      (LOC_RELATIVE_TO({0, -.stiffAxle.DV_dst_y_wheels * 0.5, 0}, .stiffAxle.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .stiffAxle.ground.MKR_master))  &
   relative_to = .stiffAxle.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .stiffAxle.ground
!
geometry modify shape cylinder  &
   cylinder_name = .stiffAxle.PART_axle.CYLINDER_1  &
   length = (.stiffAxle.DV_dst_y_wheels)  &
   radius = (.stiffAxle.DV_r)
!
marker modify  &
   marker_name = .stiffAxle.PART_axle.MKR_wheel_RL  &
   location =   &
      (LOC_RELATIVE_TO({0, .stiffAxle.DV_dst_y_wheels * 0.5, 0}, .stiffAxle.ground.MKR_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 270.0, 270.0}, .stiffAxle.ground.MKR_master))  &
   relative_to = .stiffAxle.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .stiffAxle.ground
!
material modify  &
   material_name = .stiffAxle.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = stiffAxle
