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
   model_name = fourWD_cDiff
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .fourWD_cDiff.SV_inputTorque  &
   function = ""
!
data_element create variable  &
   variable_name = .fourWD_cDiff.SV_input_P  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .fourWD_cDiff.SV_input_V  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .fourWD_cDiff.steel  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .fourWD_cDiff.steel_2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .fourWD_cDiff.steel_3  &
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
   default_coordinate_system = .fourWD_cDiff.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.ground.MKR_diff_center_slave  &
   location = 1.35, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = MKR_diff_center_slave  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.ground.MKR_diff_1_slave  &
   location = 2.7, 0.0, 0.0  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = MKR_diff_1_slave  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.ground.MKR_diff_2_master  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = MKR_diff_2_master  &
   size_of_icons = 1.5E-002
!
!------------------------- PART_diff_center_mainGear --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_center_mainGear  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_center_mainGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3  &
   location = 1.28, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_3  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.cm  &
   location = 1.27, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_4  &
   location = 1.28, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_4  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_10  &
   location = 1.3, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_10  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_12  &
   location = 1.4, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_12  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_14  &
   location = 1.35, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_14  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_15  &
   location = 1.3, -5.0E-002, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_16  &
   location = 1.4, -5.0E-002, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_center_mainGear  &
   material_type = .fourWD_cDiff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_mainGear.CYLINDER_2  &
   center_marker = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 7.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_center_mainGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!------------------------- PART_diff_center_smallGear -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_center_smallGear  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_center_smallGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6  &
   location = 1.35, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_6  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_smallGear.cm  &
   location = 1.35, -6.0E-002, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_smallGear.MARKER_13  &
   location = 1.35, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_13  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_center_smallGear  &
   material_type = .fourWD_cDiff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_smallGear.CYLINDER_3  &
   center_marker = .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_center_smallGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!-------------------------- PART_diff_center_shaftL ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_center_shaftL  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_center_shaftL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_95  &
   location = 1.05, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_97  &
   location = 1.05, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7  &
   location = 1.3, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_7  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.cm  &
   location = 1.175, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_9  &
   location = 1.3, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_9  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_center_shaftL  &
   material_type = .fourWD_cDiff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_shaftL.CYLINDER_4  &
   center_marker = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7  &
   angle_extent = 360.0  &
   length = 0.25  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_center_shaftL  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!-------------------------- PART_diff_center_shaftR ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_center_shaftR  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_center_shaftR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_98  &
   location = 1.65, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8  &
   location = 1.4, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_8  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.cm  &
   location = 1.525, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_11  &
   location = 1.4, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_11  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_center_shaftR  &
   material_type = .fourWD_cDiff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_shaftR.CYLINDER_5  &
   center_marker = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8  &
   angle_extent = 360.0  &
   length = 0.25  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_center_shaftR  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!------------------------ PART_diff_center_driveShaft -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_center_driveShaft  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_center_driveShaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_100  &
   location = 1.35, 0.37, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19  &
   location = 1.35, 7.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.cm  &
   location = 1.35, 0.1570642202, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_20  &
   location = 1.35, 7.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_21  &
   location = 1.35, 7.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_center_driveShaft  &
   material_type = .fourWD_cDiff.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_driveShaft.CYLINDER_7  &
   center_marker = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 7.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_driveShaft.CYLINDER_8  &
   center_marker = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_20  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_center_driveShaft  &
   color = BLUE_GRAY  &
   name_visibility = off
!
!---------------------------- PART_diff_1_mainGear ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_1_mainGear  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_1_mainGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3  &
   location = 2.7, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_3  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.cm  &
   location = 2.7, -6.0E-002, 0.0  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_4  &
   location = 2.7, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_4  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_10  &
   location = 2.7, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_10  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_12  &
   location = 2.7, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_12  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_14  &
   location = 2.75, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_14  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_15  &
   location = 2.75, -5.0E-002, 0.0  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_16  &
   location = 2.75, 5.0E-002, 0.0  &
   orientation = 180.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_1_mainGear  &
   material_type = .fourWD_cDiff.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_mainGear.CYLINDER_2  &
   center_marker = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 0.15  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_1_mainGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!--------------------------- PART_diff_1_smallGear ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_1_smallGear  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_1_smallGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6  &
   location = 2.75, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_6  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_smallGear.cm  &
   location = 2.765, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_smallGear.MARKER_13  &
   location = 2.75, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_13  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_1_smallGear  &
   material_type = .fourWD_cDiff.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_smallGear.CYLINDER_3  &
   center_marker = .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6  &
   angle_extent = 360.0  &
   length = 3.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_1_smallGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!----------------------------- PART_diff_1_shaftR -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_1_shaftR  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_1_shaftR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7  &
   location = 2.7, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_7  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftR.cm  &
   location = 2.7, -0.325, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftR.MARKER_9  &
   location = 2.7, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_9  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_1_shaftR  &
   material_type = .fourWD_cDiff.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_shaftR.CYLINDER_4  &
   center_marker = .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7  &
   angle_extent = 360.0  &
   length = 0.55  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_1_shaftR  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!----------------------------- PART_diff_1_shaftL -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_1_shaftL  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_1_shaftL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8  &
   location = 2.7, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_8  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftL.cm  &
   location = 2.7, 0.325, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftL.MARKER_11  &
   location = 2.7, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_11  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_1_shaftL  &
   material_type = .fourWD_cDiff.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_shaftL.CYLINDER_5  &
   center_marker = .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8  &
   angle_extent = 360.0  &
   length = 0.55  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_1_shaftL  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!--------------------------- PART_diff_1_driveShaft ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_1_driveShaft  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_1_driveShaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_99  &
   location = 1.74, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19  &
   location = 2.55, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.cm  &
   location = 2.1978074866, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_20  &
   location = 2.55, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_21  &
   location = 2.55, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_1_driveShaft  &
   material_type = .fourWD_cDiff.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_driveShaft.CYLINDER_7  &
   center_marker = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_driveShaft.CYLINDER_8  &
   center_marker = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_20  &
   angle_extent = 360.0  &
   length = 0.81  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_1_driveShaft  &
   color = BLUE_GRAY  &
   name_visibility = off
!
!--------------------------------- PART_to_cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_to_cs  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_to_cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_101  &
   location = 1.35, 0.37, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_21  &
   location = 1.238, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_21  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_51  &
   location = 1.28, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_51  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_221  &
   location = 1.35, 7.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_231  &
   location = 1.28, 7.0E-002, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_24  &
   location = 2.7, -8.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_24  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_52  &
   location = 2.7, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_52  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_222  &
   location = 2.55, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_232  &
   location = 2.55, -5.0E-002, 0.0  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_2  &
   location = 0.0, 8.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_2  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.cm  &
   location = 1.35, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_5  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_5  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_22  &
   location = 0.15, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_23  &
   location = 0.15, 5.0E-002, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_to_cs  &
   material_type = .fourWD_cDiff.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_to_cs.CYLINDER_1  &
   center_marker = .fourWD_cDiff.PART_to_cs.MARKER_2  &
   angle_extent = 360.0  &
   length = 0.16  &
   radius = 0.18  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_to_cs.CYLINDER_11  &
   center_marker = .fourWD_cDiff.PART_to_cs.MARKER_21  &
   angle_extent = 360.0  &
   length = 0.224  &
   radius = 0.1  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_to_cs.CYLINDER_12  &
   center_marker = .fourWD_cDiff.PART_to_cs.MARKER_24  &
   angle_extent = 360.0  &
   length = 0.16  &
   radius = 0.18  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_to_cs  &
   color = YELLOW  &
   visibility = on  &
   name_visibility = on  &
   size_of_icons = 1.5E-002
!
!---------------------------- PART_diff_2_mainGear ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_2_mainGear  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_2_mainGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_3  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.cm  &
   location = 0.0, 6.0E-002, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_4  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_4  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_10  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_10  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_12  &
   location = 0.0, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_12  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_14  &
   location = -5.0E-002, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_14  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_15  &
   location = -5.0E-002, 5.0E-002, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_16  &
   location = -5.0E-002, -5.0E-002, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_2_mainGear  &
   material_type = .fourWD_cDiff.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_mainGear.CYLINDER_2  &
   center_marker = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 0.15  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_2_mainGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!--------------------------- PART_diff_2_smallGear ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_2_smallGear  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_2_smallGear
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6  &
   location = -5.0E-002, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_6  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_smallGear.cm  &
   location = -6.5E-002, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_smallGear.MARKER_13  &
   location = -5.0E-002, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_13  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_2_smallGear  &
   material_type = .fourWD_cDiff.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_smallGear.CYLINDER_3  &
   center_marker = .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6  &
   angle_extent = 360.0  &
   length = 3.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_2_smallGear  &
   color = BLUE  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!----------------------------- PART_diff_2_shaftL -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_2_shaftL  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_2_shaftL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_7  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftL.cm  &
   location = 0.0, 0.325, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftL.MARKER_9  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = MARKER_9  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_2_shaftL  &
   material_type = .fourWD_cDiff.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_shaftL.CYLINDER_4  &
   center_marker = .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7  &
   angle_extent = 360.0  &
   length = 0.55  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_2_shaftL  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!----------------------------- PART_diff_2_shaftR -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_2_shaftR  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_2_shaftR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8  &
   location = 0.0, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_8  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftR.cm  &
   location = 0.0, -0.325, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = cm  &
   size_of_icons = 1.5E-002
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftR.MARKER_11  &
   location = 0.0, -5.0E-002, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = MARKER_11  &
   size_of_icons = 1.5E-002
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_2_shaftR  &
   material_type = .fourWD_cDiff.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_shaftR.CYLINDER_5  &
   center_marker = .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8  &
   angle_extent = 360.0  &
   length = 0.55  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_2_shaftR  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
!--------------------------- PART_diff_2_driveShaft ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
part create rigid_body name_and_position  &
   part_name = .fourWD_cDiff.PART_diff_2_driveShaft  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.PART_diff_2_driveShaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_94  &
   location = 0.96, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_96  &
   location = 0.96, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19  &
   location = 0.15, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.cm  &
   location = 0.5021925134, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_20  &
   location = 0.15, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_21  &
   location = 0.15, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .fourWD_cDiff.PART_diff_2_driveShaft  &
   material_type = .fourWD_cDiff.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_driveShaft.CYLINDER_7  &
   center_marker = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19  &
   angle_extent = 360.0  &
   length = 2.0E-002  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_driveShaft.CYLINDER_8  &
   center_marker = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_20  &
   angle_extent = 360.0  &
   length = 0.81  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .fourWD_cDiff.PART_diff_2_driveShaft  &
   color = BLUE_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_center_mainGear_to_cs  &
   i_marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_4  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_51
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_center_mainGear_to_cs  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_center_leftShaft_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_9  &
   j_marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_10
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_center_leftShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_center_rightShaft_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_11  &
   j_marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_12
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_center_rightShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_center_smallGear_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_center_smallGear.MARKER_13  &
   j_marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_14
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_center_smallGear_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_center_driveShaft_to_cs  &
   i_marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_21  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_221
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_center_driveShaft_to_cs  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_1_mainGear_to_cs  &
   i_marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_4  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_52
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_1_mainGear_to_cs  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_1_leftShaft_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_1_shaftR.MARKER_9  &
   j_marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_10
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_1_leftShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_1_rightShaft_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_1_shaftL.MARKER_11  &
   j_marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_12
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_1_rightShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_1_smallGear_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_1_smallGear.MARKER_13  &
   j_marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_14
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_1_smallGear_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_1_driveShaft_to_cs  &
   i_marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_21  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_222
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_1_driveShaft_to_cs  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_2_mainGear_to_cs  &
   i_marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_4  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_5
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_2_mainGear_to_cs  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_2_leftShaft_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_2_shaftL.MARKER_9  &
   j_marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_10
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_2_leftShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_2_rightShaft_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_2_shaftR.MARKER_11  &
   j_marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_12
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_2_rightShaft_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_2_smallGear_to_mainGear  &
   i_marker_name = .fourWD_cDiff.PART_diff_2_smallGear.MARKER_13  &
   j_marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_14
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_2_smallGear_to_mainGear  &
   name_visibility = off  &
   size_of_icons = 1.5E-002
!
constraint create joint revolute  &
   joint_name = .fourWD_cDiff.JT_diff_2_driveShaft_to_cs  &
   i_marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_21  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_22
!
constraint attributes  &
   constraint_name = .fourWD_cDiff.JT_diff_2_driveShaft_to_cs  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .fourWD_cDiff.FORCE_inputTorque  &
   type_of_freedom = rotational  &
   i_marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_100  &
   j_marker_name = .fourWD_cDiff.PART_to_cs.MARKER_101  &
   action_only = off  &
   function = ""
!
!----------------------------------- Gears ------------------------------------!
!
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_center_smallGear_to_leftShaft  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_center_smallGear_to_mainGear,  &
      .fourWD_cDiff.JT_diff_center_leftShaft_to_mainGear  &
   common_velocity_marker =   &
                            .fourWD_cDiff.PART_diff_center_mainGear.MARKER_15
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_center_smallGear_to_rightShaft  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_center_smallGear_to_mainGear,  &
      .fourWD_cDiff.JT_diff_center_rightShaft_to_mainGear  &
   common_velocity_marker =   &
                            .fourWD_cDiff.PART_diff_center_mainGear.MARKER_16
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_center_driveShaft_to_mainGear  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_center_mainGear_to_cs,  &
      .fourWD_cDiff.JT_diff_center_driveShaft_to_cs  &
   common_velocity_marker = .fourWD_cDiff.PART_to_cs.MARKER_231
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_1_smallGear_to_leftShaft  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_1_smallGear_to_mainGear,  &
      .fourWD_cDiff.JT_diff_1_leftShaft_to_mainGear  &
   common_velocity_marker = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_15
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_1_smallGear_to_rightShaft  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_1_smallGear_to_mainGear,  &
      .fourWD_cDiff.JT_diff_1_rightShaft_to_mainGear  &
   common_velocity_marker = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_16
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_1_driveShaft_to_mainGear  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_1_mainGear_to_cs,  &
      .fourWD_cDiff.JT_diff_1_driveShaft_to_cs  &
   common_velocity_marker = .fourWD_cDiff.PART_to_cs.MARKER_232
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_2_smallGear_to_leftShaft  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_2_smallGear_to_mainGear,  &
      .fourWD_cDiff.JT_diff_2_leftShaft_to_mainGear  &
   common_velocity_marker = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_15
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_2_smallGear_to_rightShaft  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_2_smallGear_to_mainGear,  &
      .fourWD_cDiff.JT_diff_2_rightShaft_to_mainGear  &
   common_velocity_marker = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_16
!
constraint create complex_joint gear  &
   gear_name = .fourWD_cDiff.GEAR_diff_2_driveShaft_to_mainGear  &
   joint_name =  &
      .fourWD_cDiff.JT_diff_2_mainGear_to_cs,  &
      .fourWD_cDiff.JT_diff_2_driveShaft_to_cs  &
   common_velocity_marker = .fourWD_cDiff.PART_to_cs.MARKER_23
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .fourWD_cDiff.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=1.0 number_of_steps=100 model_name=.fourWD_cDiff initial_static=no"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .fourWD_cDiff.TORSION_SPRING_1  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .fourWD_cDiff.TORSION_SPRING_2  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.i_marker  &
   object_value = (.fourWD_cDiff.PART_diff_2_driveShaft.MARKER_96)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.j_marker  &
   object_value = (.fourWD_cDiff.PART_diff_center_shaftL.MARKER_97)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.stiffness_coefficient  &
   real_value = (3.6651914292E-003(newton-meter/deg))
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.damping_coefficient  &
   real_value = (9.2502450356E-004(newton-meter-sec/deg))
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.free_angle_mode  &
   string_value = "design_angle"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_1.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .fourWD_cDiff.TORSION_SPRING_1
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.i_marker  &
   object_value = (.fourWD_cDiff.PART_diff_center_shaftR.MARKER_98)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.j_marker  &
   object_value = (.fourWD_cDiff.PART_diff_1_driveShaft.MARKER_99)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.stiffness_coefficient  &
   real_value = (3.6651914292E-003(newton-meter/deg))
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.damping_coefficient  &
   real_value = (9.2502450356E-004(newton-meter-sec/deg))
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.free_angle_mode  &
   string_value = "design_angle"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.free_angle  &
   real_value = 1.0
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .fourWD_cDiff.TORSION_SPRING_2.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .fourWD_cDiff.TORSION_SPRING_2
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry create shape force  &
   force_name = .fourWD_cDiff.SFORCE_3_force_graphic_1  &
   force_element_name = .fourWD_cDiff.FORCE_inputTorque  &
   applied_at_marker_name =   &
                            .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_100
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
   variable_name = .fourWD_cDiff.DV_diff_center_gearRatio  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_center_diff_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 7.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_center_wheelShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_center_wheelShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_center_driveShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_center_driveShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_1_gearRatio  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_1_diff_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_1_wheelShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_1_wheelShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_1_driveShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_1_driveShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.81
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_2_gearRatio  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_2_diff_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_2_wheelShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_2_wheelShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_2_driveShaft_r  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .fourWD_cDiff.DV_diff_2_driveShaft_l  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.81
!
variable create  &
   variable_name = .fourWD_cDiff.DV_wheelbase  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.7
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .fourWD_cDiff.SV_inputTorque  &
   function = "0"
!
data_element modify variable  &
   variable_name = .fourWD_cDiff.SV_input_P  &
   function = "AZ( .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_100, .fourWD_cDiff.PART_to_cs.MARKER_101)"
!
data_element modify variable  &
   variable_name = .fourWD_cDiff.SV_input_V  &
   function = "WZ( .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_100, .fourWD_cDiff.PART_to_cs.MARKER_101, .fourWD_cDiff.PART_to_cs.MARKER_101)"
!
force modify direct single_component_force  &
   single_component_force_name = .fourWD_cDiff.FORCE_inputTorque  &
   function = "3.0"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .fourWD_cDiff.TORSION_SPRING_1
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .fourWD_cDiff.TORSION_SPRING_2
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .fourWD_cDiff.ground.MKR_diff_center_slave  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_wheelbase * 0.5, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))
!
marker modify  &
   marker_name = .fourWD_cDiff.ground.MKR_diff_1_slave  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_wheelbase, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))
!
material modify  &
   material_name = .fourWD_cDiff.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, .fourWD_cDiff.DV_diff_center_diff_r / .fourWD_cDiff.DV_diff_center_gearRatio, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_mainGear.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, -5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_mainGear.CYLINDER_2  &
   length = (2.0E-002meter)  &
   radius = (.fourWD_cDiff.DV_diff_center_diff_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 270, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_smallGear.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_smallGear.MARKER_6))  &
   relative_to = .fourWD_cDiff.PART_diff_center_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_smallGear.CYLINDER_3  &
   length = (.fourWD_cDiff.DV_diff_center_wheelShaft_r)  &
   radius = (.fourWD_cDiff.DV_diff_center_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_shaftL.CYLINDER_4  &
   length = (.fourWD_cDiff.DV_diff_center_wheelShaft_l - 5.0E-002)  &
   radius = (.fourWD_cDiff.DV_diff_center_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_95  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0.25}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftL.MARKER_97  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_95))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftL.MARKER_95))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, -5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_shaftR.CYLINDER_5  &
   length = (.fourWD_cDiff.DV_diff_center_wheelShaft_l - 5.0E-002)  &
   radius = (.fourWD_cDiff.DV_diff_center_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_shaftR.MARKER_98  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0.25}, .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_shaftR.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_center_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_diff_center_diff_r, 0, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_center_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_center_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_center_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_driveShaft.CYLINDER_7  &
   length = (2.0E-002meter)  &
   radius = (.fourWD_cDiff.DV_diff_center_diff_r / .fourWD_cDiff.DV_diff_center_gearRatio)
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_center_driveShaft.CYLINDER_8  &
   length = (.fourWD_cDiff.DV_diff_center_driveShaft_l)  &
   radius = (.fourWD_cDiff.DV_diff_center_driveShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_100  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .fourWD_cDiff.DV_diff_center_driveShaft_l}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_center_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
material modify  &
   material_name = .fourWD_cDiff.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, .fourWD_cDiff.DV_diff_1_diff_r / .fourWD_cDiff.DV_diff_1_gearRatio, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_mainGear.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, -5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_mainGear.CYLINDER_2  &
   length = (2.0E-002meter)  &
   radius = (.fourWD_cDiff.DV_diff_1_diff_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 270, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_smallGear.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_smallGear.MARKER_6))  &
   relative_to = .fourWD_cDiff.PART_diff_1_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_smallGear.CYLINDER_3  &
   length = (.fourWD_cDiff.DV_diff_1_wheelShaft_r)  &
   radius = (.fourWD_cDiff.DV_diff_1_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftR.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftR.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_1_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_shaftR.CYLINDER_4  &
   length = (.fourWD_cDiff.DV_diff_1_wheelShaft_l - 5.0E-002)  &
   radius = (.fourWD_cDiff.DV_diff_1_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, -5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_shaftL.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_shaftL.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_1_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_shaftL.CYLINDER_5  &
   length = (.fourWD_cDiff.DV_diff_1_wheelShaft_l - 5.0E-002)  &
   radius = (.fourWD_cDiff.DV_diff_1_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_diff_1_diff_r, 0, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_diff_1_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_1_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_1_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_driveShaft.CYLINDER_7  &
   length = (2.0E-002meter)  &
   radius = (.fourWD_cDiff.DV_diff_1_diff_r / .fourWD_cDiff.DV_diff_1_gearRatio)
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_1_driveShaft.CYLINDER_8  &
   length = (.fourWD_cDiff.DV_diff_1_driveShaft_l)  &
   radius = (.fourWD_cDiff.DV_diff_1_driveShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_99  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .fourWD_cDiff.DV_diff_1_driveShaft_l}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 180}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_1_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
variable modify  &
   variable_name = .fourWD_cDiff.DV_diff_1_driveShaft_l  &
   real_value = (.fourWD_cDiff.DV_wheelbase * 0.3)
!
material modify  &
   material_name = .fourWD_cDiff.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .fourWD_cDiff.DV_diff_2_diff_r / .fourWD_cDiff.DV_diff_2_gearRatio * 1.6, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_diff_2_diff_r, .fourWD_cDiff.DV_diff_2_diff_r / .fourWD_cDiff.DV_diff_2_gearRatio, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_to_cs.CYLINDER_1  &
   length = (1.6 * 2 * .fourWD_cDiff.DV_diff_2_diff_r / .fourWD_cDiff.DV_diff_2_gearRatio)  &
   radius = (.fourWD_cDiff.DV_diff_2_diff_r + 3.0E-002)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({0, .fourWD_cDiff.DV_diff_center_diff_r / .fourWD_cDiff.DV_diff_center_gearRatio * 1.6, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_mainGear.MARKER_3))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_221  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_231  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_diff_center_diff_r, .fourWD_cDiff.DV_diff_center_diff_r / .fourWD_cDiff.DV_diff_center_gearRatio, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_center_slave))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_to_cs.CYLINDER_11  &
   length = (1.6 * 2 * .fourWD_cDiff.DV_diff_center_diff_r / .fourWD_cDiff.DV_diff_center_gearRatio)  &
   radius = (.fourWD_cDiff.DV_diff_center_diff_r + 3.0E-002)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({0, .fourWD_cDiff.DV_diff_1_diff_r / .fourWD_cDiff.DV_diff_1_gearRatio * 1.6, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_mainGear.MARKER_3))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_222  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_1_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_232  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_diff_1_diff_r, .fourWD_cDiff.DV_diff_1_diff_r / .fourWD_cDiff.DV_diff_1_gearRatio, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_1_slave))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_to_cs.CYLINDER_12  &
   length = (1.6 * 2 * .fourWD_cDiff.DV_diff_1_diff_r / .fourWD_cDiff.DV_diff_1_gearRatio)  &
   radius = (.fourWD_cDiff.DV_diff_1_diff_r + 3.0E-002)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_to_cs.MARKER_101  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .fourWD_cDiff.DV_diff_center_driveShaft_l}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .fourWD_cDiff.PART_diff_center_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, .fourWD_cDiff.DV_diff_2_diff_r / .fourWD_cDiff.DV_diff_2_gearRatio, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_mainGear.MARKER_3))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_mainGear.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, -5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_mainGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_mainGear.CYLINDER_2  &
   length = (2.0E-002meter)  &
   radius = (.fourWD_cDiff.DV_diff_2_diff_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({-5.0E-002, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 270, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_smallGear.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_smallGear.MARKER_6))  &
   relative_to = .fourWD_cDiff.PART_diff_2_smallGear
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_smallGear.CYLINDER_3  &
   length = (.fourWD_cDiff.DV_diff_2_wheelShaft_r)  &
   radius = (.fourWD_cDiff.DV_diff_2_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 270, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftL.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftL.MARKER_7))  &
   relative_to = .fourWD_cDiff.PART_diff_2_shaftL
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_shaftL.CYLINDER_4  &
   length = (.fourWD_cDiff.DV_diff_2_wheelShaft_l - 5.0E-002)  &
   radius = (.fourWD_cDiff.DV_diff_2_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, -5.0E-002, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_shaftR.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_shaftR.MARKER_8))  &
   relative_to = .fourWD_cDiff.PART_diff_2_shaftR
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_shaftR.CYLINDER_5  &
   length = (.fourWD_cDiff.DV_diff_2_wheelShaft_l - 5.0E-002)  &
   radius = (.fourWD_cDiff.DV_diff_2_wheelShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.fourWD_cDiff.DV_diff_2_diff_r, 0, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 90, 0}, .fourWD_cDiff.ground.MKR_diff_2_master))  &
   relative_to = .fourWD_cDiff.PART_diff_2_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_2_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_2_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_driveShaft.CYLINDER_7  &
   length = (2.0E-002meter)  &
   radius = (.fourWD_cDiff.DV_diff_2_diff_r / .fourWD_cDiff.DV_diff_2_gearRatio)
!
geometry modify shape cylinder  &
   cylinder_name = .fourWD_cDiff.PART_diff_2_driveShaft.CYLINDER_8  &
   length = (.fourWD_cDiff.DV_diff_2_driveShaft_l)  &
   radius = (.fourWD_cDiff.DV_diff_2_driveShaft_r)
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_94  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .fourWD_cDiff.DV_diff_2_driveShaft_l}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_19))  &
   relative_to = .fourWD_cDiff.PART_diff_2_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
marker modify  &
   marker_name = .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_96  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_94))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .fourWD_cDiff.PART_diff_2_driveShaft.MARKER_94))  &
   relative_to = .fourWD_cDiff.PART_diff_2_driveShaft
!
defaults coordinate_system  &
   default_coordinate_system = .fourWD_cDiff.ground
!
variable modify  &
   variable_name = .fourWD_cDiff.DV_diff_2_driveShaft_l  &
   real_value = (.fourWD_cDiff.DV_wheelbase * 0.3)
!
geometry modify shape force  &
   force_name = .fourWD_cDiff.SFORCE_3_force_graphic_1  &
   applied_at_marker_name = (.fourWD_cDiff.FORCE_inputTorque.i)
!
model display  &
   model_name = fourWD_cDiff
