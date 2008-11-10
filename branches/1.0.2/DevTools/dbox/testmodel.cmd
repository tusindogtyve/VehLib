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
   model_name = testmodel
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .testmodel.steel  &
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
   default_coordinate_system = .testmodel.ground
!
!----------------------------------- part1 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .testmodel.ground
!
part create rigid_body name_and_position  &
   part_name = .testmodel.part1  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .testmodel.part1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .testmodel.part1.MARKER_1  &
   adams_id = 1  &
   location = -0.15, 0.25, 0.0  &
   orientation = 303.690067526d, 0.0d, 0.0d
!
marker create  &
   marker_name = .testmodel.part1.MARKER_2  &
   adams_id = 2  &
   location = -0.25, 5.0E-002, 0.0  &
   orientation = 303.690067526d, 0.0d, 0.0d
!
marker create  &
   marker_name = .testmodel.part1.cm  &
   location = -0.2, 0.15, 0.0  &
   orientation = 153.4349488229d, 90.0000000051d, 90.0000000716d
!
part create rigid_body mass_properties  &
   part_name = .testmodel.part1  &
   material_type = .testmodel.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .testmodel.part1.LdNK_1  &
   i_marker = .testmodel.part1.MARKER_1  &
   j_marker = .testmodel.part1.MARKER_2  &
   width = 2.0E-002  &
   depth = 9.0138781887E-003
!
part attributes  &
   part_name = .testmodel.part1  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- part2 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .testmodel.ground
!
part create rigid_body name_and_position  &
   part_name = .testmodel.part2  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .testmodel.part2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .testmodel.part2.MARKER_3  &
   adams_id = 3  &
   location = -0.15, 0.25, 0.0  &
   orientation = 323.1301023542d, 0.0d, 0.0d
!
marker create  &
   marker_name = .testmodel.part2.MARKER_4  &
   adams_id = 4  &
   location = 5.0E-002, 0.1, 0.0  &
   orientation = 323.1301023542d, 0.0d, 0.0d
!
marker create  &
   marker_name = .testmodel.part2.cm  &
   location = -5.0E-002, 0.175, 0.0  &
   orientation = 233.1301023542d, 90.0000000267d, 90.0000003503d
!
part create rigid_body mass_properties  &
   part_name = .testmodel.part2  &
   material_type = .testmodel.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .testmodel.part2.Ldfd2  &
   i_marker = .testmodel.part2.MARKER_3  &
   j_marker = .testmodel.part2.MARKER_4  &
   width = 2.0E-002  &
   depth = 1.25E-002
!
part attributes  &
   part_name = .testmodel.part2  &
   color = GREEN  &
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
   variable_name = .testmodel.DV_width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .testmodel.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .testmodel.part1.MARKER_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .testmodel.part2.MARKER_3))  &
   relative_to = .testmodel.part1
!
defaults coordinate_system  &
   default_coordinate_system = .testmodel.ground
!
geometry modify shape link  &
   link_name = .testmodel.part1.LdNK_1  &
   width = (.testmodel.DV_width)  &
   depth = (9.0138781887E-003meter)
!
geometry modify shape link  &
   link_name = .testmodel.part2.Ldfd2  &
   width = (.testmodel.DV_width)  &
   depth = (1.25E-002meter)
!
model display  &
   model_name = testmodel
