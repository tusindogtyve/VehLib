! This file is part of SDlib_plugin.
!    
! Copyright (c) 2008 Sauer-Danfoss http://www.sauer-danfoss.com
! 
!  Permission is hereby granted, free of charge, to any person obtaining
!  a copy of this software and associated documentation files (the
!  "Software"), to deal in the Software without restriction, including
!  without limitation the rights to use, copy, modify, merge, publish,
!  distribute, sublicense, and/or sell copies of the Software, and to
!  permit persons to whom the Software is furnished to do so, subject to
!  the following conditions:
!
!  The above copyright notice and this permission notice shall be
!  included in all copies or substantial portions of the Software.
! 
!  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
!  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
!  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
!  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
!  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
!  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
!  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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
   size_of_icons = 1.5E-002  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = diff
!
model attributes  &
   model_name = diff  &
   size_of_icons = 1.5E-002
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .diff.SV_diff_leftShaft_P  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .diff.SV_diff_rightShaft_P  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .diff.steel  &
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
   default_coordinate_system = .diff.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.ground.MKR_diff_master  &
   adams_id = 1  &
   location = 0.0, 0.1, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = MKR_diff_master  &
   size_of_icons = 1.5E-002
!
part attributes  &
   part_name = ground  &
   size_of_icons = 1.5E-002
!
!------------------------------ PART_diff_to_cs -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
part create rigid_body name_and_position  &
   part_name = .diff.PART_diff_to_cs  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .diff.PART_diff_to_cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.PART_diff_to_cs.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 0.2066666667, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_2  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_to_cs.cm  &
   location = 0.0, 0.1, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_to_cs.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.1666666667, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_5  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_to_cs.MARKER_22  &
   adams_id = 22  &
   location = 0.2, 0.1, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .diff.PART_diff_to_cs.MARKER_23  &
   adams_id = 23  &
   location = 0.2, 0.1666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .diff.PART_diff_to_cs  &
   material_type = .diff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_to_cs.CYLINDER_1  &
   adams_id = 1  &
   center_marker = .diff.PART_diff_to_cs.MARKER_2  &
   angle_extent = 360.0  &
   length = 0.2133333333  &
   radius = 0.23  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .diff.PART_diff_to_cs  &
   color = YELLOW  &
   visibility = on  &
   name_visibility = on  &
   size_of_icons = 1.5E-002
!
!----------------------------- PART_diff_mainGear -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
part create rigid_body name_and_position  &
   part_name = .diff.PART_diff_mainGear  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .diff.PART_diff_mainGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_3  &
   adams_id = 3  &
   location = 0.0, 0.1666666667, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_3  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.cm  &
   location = 0.0, 0.1766666667, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_4  &
   adams_id = 4  &
   location = 0.0, 0.1666666667, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_4  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_10  &
   adams_id = 10  &
   location = 0.0, 0.15, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_10  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_12  &
   adams_id = 12  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_12  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_14  &
   adams_id = 14  &
   location = -5.0E-002, 0.1, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_14  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_15  &
   adams_id = 15  &
   location = -5.0E-002, 0.15, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .diff.PART_diff_mainGear.MARKER_16  &
   adams_id = 16  &
   location = -5.0E-002, 5.0E-002, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .diff.PART_diff_mainGear  &
   material_type = .diff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_mainGear.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .diff.PART_diff_mainGear.MARKER_3  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 0.2  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .diff.PART_diff_mainGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!---------------------------- PART_diff_smallGear -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
part create rigid_body name_and_position  &
   part_name = .diff.PART_diff_smallGear  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .diff.PART_diff_smallGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.PART_diff_smallGear.MARKER_6  &
   adams_id = 6  &
   location = -5.0E-002, 0.1, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_6  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_smallGear.cm  &
   location = -6.0E-002, 0.1, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_smallGear.MARKER_13  &
   adams_id = 13  &
   location = -5.0E-002, 0.1, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_13  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .diff.PART_diff_smallGear  &
   material_type = .diff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_smallGear.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .diff.PART_diff_smallGear.MARKER_6  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .diff.PART_diff_smallGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!------------------------------ PART_diff_shaftL ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
part create rigid_body name_and_position  &
   part_name = .diff.PART_diff_shaftL  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .diff.PART_diff_shaftL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.PART_diff_shaftL.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.15, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_7  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_shaftL.cm  &
   location = 0.0, 0.375, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_shaftL.MARKER_9  &
   adams_id = 9  &
   location = 0.0, 0.15, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_9  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .diff.PART_diff_shaftL  &
   material_type = .diff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_shaftL.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .diff.PART_diff_shaftL.MARKER_7  &
   angle_extent = 360.0  &
   length = 0.45  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .diff.PART_diff_shaftL  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!------------------------------ PART_diff_shaftR ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
part create rigid_body name_and_position  &
   part_name = .diff.PART_diff_shaftR  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .diff.PART_diff_shaftR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.PART_diff_shaftR.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_8  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_shaftR.cm  &
   location = 0.0, -0.175, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .diff.PART_diff_shaftR.MARKER_11  &
   adams_id = 11  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_11  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .diff.PART_diff_shaftR  &
   material_type = .diff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_shaftR.CYLINDER_5  &
   adams_id = 5  &
   center_marker = .diff.PART_diff_shaftR.MARKER_8  &
   angle_extent = 360.0  &
   length = 0.45  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .diff.PART_diff_shaftR  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!---------------------------- PART_diff_driveShaft ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
part create rigid_body name_and_position  &
   part_name = .diff.PART_diff_driveShaft  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .diff.PART_diff_driveShaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .diff.PART_diff_driveShaft.MARKER_19  &
   adams_id = 19  &
   location = 0.2, 0.1, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .diff.PART_diff_driveShaft.cm  &
   location = 0.4710743802, 0.1, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .diff.PART_diff_driveShaft.MARKER_20  &
   adams_id = 20  &
   location = 0.2, 0.1, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .diff.PART_diff_driveShaft.MARKER_21  &
   adams_id = 21  &
   location = 0.2, 0.1, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .diff.PART_diff_driveShaft  &
   material_type = .diff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_driveShaft.CYLINDER_7  &
   adams_id = 7  &
   center_marker = .diff.PART_diff_driveShaft.MARKER_19  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 6.6666666667E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .diff.PART_diff_driveShaft.CYLINDER_8  &
   adams_id = 8  &
   center_marker = .diff.PART_diff_driveShaft.MARKER_20  &
   angle_extent = 360.0  &
   length = 0.8  &
   radius = 1.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .diff.PART_diff_driveShaft  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .diff.JT_mainGear_to_cs  &
   adams_id = 1  &
   i_marker_name = .diff.PART_diff_mainGear.MARKER_4  &
   j_marker_name = .diff.PART_diff_to_cs.MARKER_5
!
constraint attributes  &
   constraint_name = .diff.JT_mainGear_to_cs  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .diff.JT_leftShaft_to_mainGear  &
   adams_id = 2  &
   i_marker_name = .diff.PART_diff_shaftL.MARKER_9  &
   j_marker_name = .diff.PART_diff_mainGear.MARKER_10
!
constraint attributes  &
   constraint_name = .diff.JT_leftShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .diff.JT_rightShaft_to_mainGear  &
   adams_id = 3  &
   i_marker_name = .diff.PART_diff_shaftR.MARKER_11  &
   j_marker_name = .diff.PART_diff_mainGear.MARKER_12
!
constraint attributes  &
   constraint_name = .diff.JT_rightShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .diff.JT_smallGear_to_mainGear  &
   adams_id = 4  &
   i_marker_name = .diff.PART_diff_smallGear.MARKER_13  &
   j_marker_name = .diff.PART_diff_mainGear.MARKER_14
!
constraint attributes  &
   constraint_name = .diff.JT_smallGear_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .diff.JT_driveShaft_to_cs  &
   adams_id = 5  &
   i_marker_name = .diff.PART_diff_driveShaft.MARKER_21  &
   j_marker_name = .diff.PART_diff_to_cs.MARKER_22
!
constraint attributes  &
   constraint_name = .diff.JT_driveShaft_to_cs  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
!----------------------------------- Gears ------------------------------------!
!
!
constraint create complex_joint gear  &
   gear_name = .diff.GEAR_diff_smallGear_to_leftShaft  &
   adams_id = 1  &
   joint_name =  &
      .diff.JT_smallGear_to_mainGear,  &
      .diff.JT_leftShaft_to_mainGear  &
   common_velocity_marker = .diff.PART_diff_mainGear.MARKER_15
!
constraint create complex_joint gear  &
   gear_name = .diff.GEAR_diff_smallGear_to_rightShaft  &
   adams_id = 2  &
   joint_name =  &
      .diff.JT_smallGear_to_mainGear,  &
      .diff.JT_rightShaft_to_mainGear  &
   common_velocity_marker = .diff.PART_diff_mainGear.MARKER_16
!
constraint create complex_joint gear  &
   gear_name = .diff.GEAR_diff_driveShaft_to_mainGear  &
   adams_id = 3  &
   joint_name =  &
      .diff.JT_mainGear_to_cs,  &
      .diff.JT_driveShaft_to_cs  &
   common_velocity_marker = .diff.PART_diff_to_cs.MARKER_23
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
force attributes  &
   force_name = gravity  &
   size_of_icons = 1.5E-002
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .diff.DV_diff_gearRatio  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0
!
variable create  &
   variable_name = .diff.DV_diff_diff_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .diff.DV_diff_wheelShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .diff.DV_diff_wheelShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .diff.DV_diff_driveShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.5E-002
!
variable create  &
   variable_name = .diff.DV_diff_driveShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .diff.SV_diff_leftShaft_P  &
   function = "AZ( .diff.PART_diff_shaftL.MARKER_7, .diff.PART_diff_to_cs.MARKER_2)"
!
data_element modify variable  &
   variable_name = .diff.SV_diff_rightShaft_P  &
   function = "AZ( .diff.PART_diff_shaftR.MARKER_8, .diff.PART_diff_to_cs.MARKER_2)"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .diff.PART_diff_to_cs.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .diff.DV_diff_diff_r / .diff.DV_diff_gearRatio * 1.6, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_to_cs.CYLINDER_1  &
   length = (1.6 * 2 * .diff.DV_diff_diff_r / .diff.DV_diff_gearRatio)  &
   radius = (.diff.DV_diff_diff_r + 3.0E-002)
!
marker modify  &
   marker_name = .diff.PART_diff_to_cs.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_mainGear.MARKER_3))  &
   relative_to = .diff.PART_diff_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_to_cs.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_driveShaft.MARKER_19))  &
   relative_to = .diff.PART_diff_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_to_cs.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({.diff.DV_diff_diff_r, .diff.DV_diff_diff_r / .diff.DV_diff_gearRatio, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, .diff.DV_diff_diff_r / .diff.DV_diff_gearRatio, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_mainGear.CYLINDER_2  &
   length = (2.0E-002meter)  &
   radius = (.diff.DV_diff_diff_r)
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_mainGear.MARKER_3))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftL.MARKER_7))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftR.MARKER_8))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_smallGear.MARKER_6))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 5.0E-002, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_mainGear.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, -5.0E-002, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_smallGear.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 270, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_smallGear.CYLINDER_3  &
   length = (.diff.DV_diff_wheelShaft_r)  &
   radius = (.diff.DV_diff_wheelShaft_r)
!
marker modify  &
   marker_name = .diff.PART_diff_smallGear.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_smallGear.MARKER_6))  &
   relative_to = .diff.PART_diff_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_shaftL.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 5.0E-002, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_shaftL.CYLINDER_4  &
   length = (.diff.DV_diff_wheelShaft_l - 5.0E-002)  &
   radius = (.diff.DV_diff_wheelShaft_r)
!
marker modify  &
   marker_name = .diff.PART_diff_shaftL.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftL.MARKER_7))  &
   relative_to = .diff.PART_diff_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_shaftR.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, -5.0E-002, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_shaftR.CYLINDER_5  &
   length = (.diff.DV_diff_wheelShaft_l - 5.0E-002)  &
   radius = (.diff.DV_diff_wheelShaft_r)
!
marker modify  &
   marker_name = .diff.PART_diff_shaftR.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_shaftR.MARKER_8))  &
   relative_to = .diff.PART_diff_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
marker modify  &
   marker_name = .diff.PART_diff_driveShaft.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.diff.DV_diff_diff_r, 0, 0}, .diff.ground.MKR_diff_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .diff.ground.MKR_diff_master))  &
   relative_to = .diff.PART_diff_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_driveShaft.CYLINDER_7  &
   length = (2.0E-002meter)  &
   radius = (.diff.DV_diff_diff_r / .diff.DV_diff_gearRatio)
!
marker modify  &
   marker_name = .diff.PART_diff_driveShaft.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_driveShaft.MARKER_19))  &
   relative_to = .diff.PART_diff_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .diff.PART_diff_driveShaft.CYLINDER_8  &
   length = (.diff.DV_diff_driveShaft_l)  &
   radius = (.diff.DV_diff_driveShaft_r)
!
marker modify  &
   marker_name = .diff.PART_diff_driveShaft.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .diff.PART_diff_driveShaft.MARKER_19))  &
   relative_to = .diff.PART_diff_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .diff.ground
!
material modify  &
   material_name = .diff.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = diff
