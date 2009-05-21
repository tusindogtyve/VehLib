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
   model_name = Model_1
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Model_1.steel  &
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
   marker_name = .Model_1.MainBody.MARKER_1  &
   adams_id = 1  &
   location = 0.0, -0.45, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Model_1.MainBody.cm  &
   location = 0.1041338583, 0.0, -0.3348425197  &
   orientation = 0.0d, 90.0d, 358.4080259322d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLinkR  &
   adams_id = 3  &
   location = 0.0, 0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLinkL  &
   adams_id = 4  &
   location = 0.0, -0.45, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.BottLinkR  &
   adams_id = 5  &
   location = 0.15, 0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.BottLinkL  &
   adams_id = 6  &
   location = 0.15, -0.45, -0.7  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.CylL  &
   adams_id = 7  &
   location = 0.25, -0.45, -0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.CylR  &
   adams_id = 8  &
   location = 0.25, 0.45, -0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.MARKER_9  &
   adams_id = 9  &
   location = 0.0, -7.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLink1  &
   adams_id = 10  &
   location = 0.3, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLink2  &
   adams_id = 11  &
   location = 0.3, 0.0, -5.0E-002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Model_1.MainBody.TopLink3  &
   adams_id = 12  &
   location = 0.3, 0.0, -0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Model_1.MainBody  &
   material_type = .Model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Model_1.MainBody.BOX_1  &
   adams_id = 1  &
   corner_marker = .Model_1.MainBody.MARKER_1  &
   diag_corner_coords = 0.2, 0.7, 0.9
!
geometry create shape block  &
   block_name = .Model_1.MainBody.BOX_2  &
   adams_id = 2  &
   corner_marker = .Model_1.MainBody.MARKER_9  &
   diag_corner_coords = 0.35, 0.15, 0.14
!
part attributes  &
   part_name = .Model_1.MainBody  &
   color = CYAN  &
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
   real_value = 0.9
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
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .Model_1.MainBody.MARKER_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Model_1.MainBody.TopLinkL))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape block  &
   block_name = .Model_1.MainBody.BOX_1  &
   diag_corner_coords =   &
      (0.2meter),  &
      (.Model_1.DV_BottLinkMountOffset),  &
      (.Model_1.DV_BottLinkMountWidth)
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLinkR  &
   location =   &
      (LOC_RELATIVE_TO({0, .Model_1.DV_TopLinkWidth / 2, 0}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLinkL  &
   location =   &
      (LOC_RELATIVE_TO({0, -.Model_1.DV_TopLinkWidth / 2, 0}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.BottLinkR  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_BottLinkMountOffsetX, .Model_1.DV_BottLinkMountWidth / 2, -.Model_1.DV_BottLinkMountOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.BottLinkL  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_BottLinkMountOffsetX, -.Model_1.DV_BottLinkMountWidth / 2, -.Model_1.DV_BottLinkMountOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.CylL  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_CylMountOffsetX, -.Model_1.DV_CylMountBodyWidth / 2, -.Model_1.DV_CylMountBodyOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.CylR  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_CylMountOffsetX, .Model_1.DV_CylMountBodyWidth / 2, -.Model_1.DV_CylMountBodyOffset}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLink1  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_TopLinkOffsetX, 0, -.Model_1.DV_TopLink1OffsetZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLink2  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_TopLinkOffsetX, 0, -.Model_1.DV_TopLink2OffsetZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.TopLink3  &
   location =   &
      (LOC_RELATIVE_TO({.Model_1.DV_TopLinkOffsetX, 0, -.Model_1.DV_TopLink3OffsetZ}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
marker modify  &
   marker_name = .Model_1.MainBody.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, -7.0E-002, 0}, .Model_1.ground.Mkr_master))  &
   relative_to = .Model_1.MainBody
!
defaults coordinate_system  &
   default_coordinate_system = .Model_1.ground
!
geometry modify shape block  &
   block_name = .Model_1.MainBody.BOX_2  &
   diag_corner_coords =   &
      (.Model_1.DV_TopLinkOffsetX + 5.0E-002),  &
      0.15,  &
      0.14
!
material modify  &
   material_name = .Model_1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = Model_1
