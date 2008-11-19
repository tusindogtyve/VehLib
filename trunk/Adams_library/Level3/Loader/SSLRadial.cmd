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
   model_name = SSLRadial
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_RArm_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_RArm_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_RArm_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_LArm_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_LArm_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_LArm_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_RArm_F  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_RArm_P  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_RArm_V  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_LArm_F  &
   adams_id = 11  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_LArm_P  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_LArm_V  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .SSLRadial.steel  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLRadial.steel_2  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLRadial.steel_3  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLRadial.steel_4  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLRadial.steel_5  &
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
   default_coordinate_system = .SSLRadial.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_Master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p2R  &
   adams_id = 2  &
   location = 0.0, -0.4875, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p3R  &
   adams_id = 3  &
   location = 1.239859253, -0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p4R  &
   adams_id = 4  &
   location = 1.7642176735, -0.4875, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p5R  &
   adams_id = 5  &
   location = 1.9172176735, -0.4875, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p6R  &
   adams_id = 6  &
   location = 1.9872176735, -0.4875, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p1R  &
   adams_id = 7  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p2L  &
   adams_id = 14  &
   location = 0.0, 0.4875, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p4L  &
   adams_id = 15  &
   location = 1.7642176735, 0.4875, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p3L  &
   adams_id = 16  &
   location = 1.239859253, 0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p5L  &
   adams_id = 17  &
   location = 1.9172176735, 0.4875, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p6L  &
   adams_id = 18  &
   location = 1.9872176735, 0.4875, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.ground.Mkr_p1L  &
   adams_id = 19  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.ground  &
   material_type = .SSLRadial.steel
!
part attributes  &
   part_name = .SSLRadial.ground  &
   name_visibility = off
!
!---------------------------------- Part_Arm ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.Part_Arm  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.Part_Arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_8  &
   adams_id = 8  &
   location = 0.0, -0.4875, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_9  &
   adams_id = 9  &
   location = 1.7642176735, -0.4875, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_104  &
   adams_id = 104  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_10  &
   adams_id = 10  &
   location = 1.239859253, -0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_11  &
   adams_id = 11  &
   location = 1.7642176735, -0.4875, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_12  &
   adams_id = 12  &
   location = 1.7642176735, -0.4025, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_13  &
   adams_id = 13  &
   location = 1.9172176735, -0.4025, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_20  &
   adams_id = 20  &
   location = 0.0, 0.4875, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_21  &
   adams_id = 21  &
   location = 1.7642176735, 0.4875, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.cm  &
   adams_id = 101  &
   location = 1.2326135093, 0.0, -0.5981936921  &
   orientation = 4.3200477852E-008d, -59.6077024195d, 3.2806537647E-008d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_22  &
   adams_id = 22  &
   location = 1.7642176735, 0.4025, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_23  &
   adams_id = 23  &
   location = 1.9172176735, 0.4025, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_24  &
   adams_id = 24  &
   location = 1.7642176735, 0.4875, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_25  &
   adams_id = 25  &
   location = 1.239859253, 0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_76  &
   adams_id = 76  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_78  &
   adams_id = 78  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_85  &
   adams_id = 85  &
   location = 1.9872176735, -0.29, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_105  &
   adams_id = 105  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_88  &
   adams_id = 88  &
   location = 1.239859253, -0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_90  &
   adams_id = 90  &
   location = 1.239859253, 0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_Arm.MARKER_96  &
   adams_id = 96  &
   location = 0.0, -0.4875, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.Part_Arm  &
   material_type = .SSLRadial.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_4  &
   i_marker = .SSLRadial.Part_Arm.MARKER_20  &
   j_marker = .SSLRadial.Part_Arm.MARKER_21  &
   width = 0.2  &
   depth = 0.1
!
geometry create shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_5  &
   i_marker = .SSLRadial.Part_Arm.MARKER_22  &
   j_marker = .SSLRadial.Part_Arm.MARKER_23  &
   width = 0.2  &
   depth = 0.1
!
geometry create shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_6  &
   i_marker = .SSLRadial.Part_Arm.MARKER_24  &
   j_marker = .SSLRadial.Part_Arm.MARKER_25  &
   width = 0.2  &
   depth = 0.1
!
geometry create shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_1  &
   i_marker = .SSLRadial.Part_Arm.MARKER_8  &
   j_marker = .SSLRadial.Part_Arm.MARKER_9  &
   width = 0.2  &
   depth = 0.1
!
geometry create shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_2  &
   i_marker = .SSLRadial.Part_Arm.MARKER_10  &
   j_marker = .SSLRadial.Part_Arm.MARKER_11  &
   width = 0.2  &
   depth = 0.1
!
geometry create shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_3  &
   i_marker = .SSLRadial.Part_Arm.MARKER_12  &
   j_marker = .SSLRadial.Part_Arm.MARKER_13  &
   width = 0.2  &
   depth = 0.1
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.Part_Arm.CYLINDER_25  &
   adams_id = 25  &
   center_marker = .SSLRadial.Part_Arm.MARKER_104  &
   angle_extent = 360.0  &
   length = 0.1125  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.Part_Arm.CYLINDER_26  &
   adams_id = 26  &
   center_marker = .SSLRadial.Part_Arm.MARKER_105  &
   angle_extent = 360.0  &
   length = 0.1125  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.Part_Arm  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- Part_to_cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.Part_to_cs  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.Part_to_cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_46  &
   adams_id = 46  &
   location = 0.0, 0.4875, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.Part_to_cs.cm  &
   adams_id = 102  &
   location = 9.5E-002, 0.0, -0.3165  &
   orientation = 0.0d, -16.7075479701d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_47  &
   adams_id = 47  &
   location = 0.19, 0.4875, -0.633  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_92  &
   adams_id = 92  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_94  &
   adams_id = 94  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_97  &
   adams_id = 97  &
   location = 0.0, -0.4875, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.Part_to_cs  &
   material_type = .SSLRadial.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.Part_to_cs.CYLINDER_9  &
   adams_id = 9  &
   center_marker = .SSLRadial.Part_to_cs.MARKER_46  &
   angle_extent = 360.0  &
   length = 0.975  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.Part_to_cs.CYLINDER_10  &
   adams_id = 10  &
   center_marker = .SSLRadial.Part_to_cs.MARKER_47  &
   angle_extent = 360.0  &
   length = 0.975  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.Part_to_cs  &
   color = RED  &
   name_visibility = off
!
!----------------------------- PART_Cyl_RArm_cyl ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_RArm_cyl  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_RArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master  &
   adams_id = 26  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cm  &
   adams_id = 27  &
   location = 0.6466863482, -0.4875, -0.6404782782  &
   orientation = 0.0d, -89.0618605356d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_2  &
   adams_id = 28  &
   location = 0.19, -0.4575, -0.633  &
   orientation = 90.0d, 0.0d, -90.9381394644d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_6  &
   adams_id = 29  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_11  &
   adams_id = 30  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.MARKER_93  &
   adams_id = 93  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_RArm_cyl  &
   material_type = .SSLRadial.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.97  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_RArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!----------------------------- PART_Cyl_RArm_pis ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_RArm_pis  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_RArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave  &
   adams_id = 31  &
   location = 1.239859253, -0.4875, -0.6501915354  &
   orientation = 0.0d, -89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cm  &
   adams_id = 32  &
   location = 0.8113452722, -0.4875, -0.6431745822  &
   orientation = 0.0d, -89.0618605356d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_4  &
   adams_id = 33  &
   location = 1.239859253, -0.5175, -0.6501915354  &
   orientation = -90.0d, 0.0d, 90.9381394644d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_5  &
   adams_id = 34  &
   location = 1.239859253, -0.4875, -0.6501915354  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_12  &
   adams_id = 35  &
   location = 0.19, -0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.MARKER_89  &
   adams_id = 89  &
   location = 1.239859253, -0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_RArm_pis  &
   material_type = .SSLRadial.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_RArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------- PART_Cyl_LArm_cyl ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_LArm_cyl  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_LArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master  &
   adams_id = 36  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cm  &
   adams_id = 37  &
   location = 0.6466863482, 0.4875, -0.6404782782  &
   orientation = 0.0d, -89.0618605356d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_2  &
   adams_id = 38  &
   location = 0.19, 0.5175, -0.633  &
   orientation = 90.0d, 0.0d, -90.9381394644d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_6  &
   adams_id = 39  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_11  &
   adams_id = 40  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.MARKER_95  &
   adams_id = 95  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_LArm_cyl  &
   material_type = .SSLRadial.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_cyl.CYLINDER  &
   adams_id = 5  &
   center_marker = .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.97  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_cyl.CYLINDER_2  &
   adams_id = 6  &
   center_marker = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_LArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!----------------------------- PART_Cyl_LArm_pis ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_LArm_pis  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_LArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave  &
   adams_id = 41  &
   location = 1.239859253, 0.4875, -0.6501915354  &
   orientation = 0.0d, -89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cm  &
   adams_id = 42  &
   location = 0.8113452722, 0.4875, -0.6431745822  &
   orientation = 0.0d, -89.0618605356d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_4  &
   adams_id = 43  &
   location = 1.239859253, 0.4575, -0.6501915354  &
   orientation = -90.0d, 0.0d, 90.9381394644d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_5  &
   adams_id = 44  &
   location = 1.239859253, 0.4875, -0.6501915354  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_12  &
   adams_id = 45  &
   location = 0.19, 0.4875, -0.633  &
   orientation = -180.0d, 89.0618605356d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.MARKER_91  &
   adams_id = 91  &
   location = 1.239859253, 0.4875, -0.6501915354  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_LArm_pis  &
   material_type = .SSLRadial.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_pis.CYLINDER_3  &
   adams_id = 7  &
   center_marker = .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_pis.CYLINDER_4  &
   adams_id = 8  &
   center_marker = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_LArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------------- Part_bucket ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.Part_bucket  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.Part_bucket
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_48  &
   adams_id = 48  &
   location = 1.9872176735, -0.29, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_49  &
   adams_id = 49  &
   location = 1.9872176735, -0.29, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_50  &
   adams_id = 50  &
   location = 1.9872176735, 0.29, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_51  &
   adams_id = 51  &
   location = 1.9872176735, 0.29, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.cm  &
   adams_id = 103  &
   location = 2.1879936086, 2.5044027658E-011, -1.3177153798  &
   orientation = 90.0000003574d, 5.584101052E-007d, 16.3937901029d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_81  &
   adams_id = 81  &
   location = 1.9872176735, -0.29, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_83  &
   adams_id = 83  &
   location = 1.9872176735, 0.29, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MARKER_84  &
   adams_id = 84  &
   location = 1.9872176735, -0.29, -1.4316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.Part_bucket.MAR128  &
   adams_id = 128  &
   location = 2.1872176735, 0.0, -1.5316360854  &
   orientation = 0.0d, 3.0d, 180.0d
!
marker attributes  &
   marker_name = .SSLRadial.Part_bucket.MAR128  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.Part_bucket  &
   material_type = .SSLRadial.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLRadial.Part_bucket.LINK_11  &
   i_marker = .SSLRadial.Part_bucket.MARKER_48  &
   j_marker = .SSLRadial.Part_bucket.MARKER_49  &
   width = 1.81E-002  &
   depth = 9.05E-003
!
geometry create shape link  &
   link_name = .SSLRadial.Part_bucket.LINK_12  &
   i_marker = .SSLRadial.Part_bucket.MARKER_50  &
   j_marker = .SSLRadial.Part_bucket.MARKER_51  &
   width = 1.81E-002  &
   depth = 9.05E-003
!
geometry create shape shell  &
   shell_name = .SSLRadial.Part_bucket.SHL49  &
   reference_marker = .SSLRadial.Part_bucket.MAR128  &
   file_name = (eval(getenv("MDI_SD_LIBRARY_SITE")//"/Level3/Loader/SHL49.shl"))  &
   wireframe_only = no
!
part attributes  &
   part_name = .SSLRadial.Part_bucket  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------- PART_Cyl_bucket_RArm_cyl --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_bucket_RArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.MARKER_77  &
   adams_id = 77  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master  &
   adams_id = 56  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cm  &
   adams_id = 57  &
   location = 1.8483998221, -0.29, -0.9172727897  &
   orientation = 0.0d, -23.8254936253d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_2  &
   adams_id = 58  &
   location = 1.7642176735, -0.26, -0.7266360854  &
   orientation = 90.0d, 0.0d, -156.1745063747d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_6  &
   adams_id = 59  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_11  &
   adams_id = 60  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl  &
   material_type = .SSLRadial.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.CYLINDER  &
   adams_id = 17  &
   center_marker =   &
                   .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.47  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.CYLINDER_2  &
   adams_id = 18  &
   center_marker = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------- PART_Cyl_bucket_RArm_pis --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_bucket_RArm_pis  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_bucket_RArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.MARKER_80  &
   adams_id = 80  &
   location = 1.9872176735, -0.29, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave  &
   adams_id = 61  &
   location = 1.9872176735, -0.29, -1.2316360854  &
   orientation = 0.0d, -23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cm  &
   adams_id = 62  &
   location = 1.9114766049, -0.29, -1.0601148315  &
   orientation = 0.0d, -23.8254936253d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_4  &
   adams_id = 63  &
   location = 1.9872176735, -0.32, -1.2316360854  &
   orientation = -90.0d, 0.0d, 156.1745063747d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_5  &
   adams_id = 64  &
   location = 1.9872176735, -0.29, -1.2316360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_12  &
   adams_id = 65  &
   location = 1.7642176735, -0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_bucket_RArm_pis  &
   material_type = .SSLRadial.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.CYLINDER_3  &
   adams_id = 19  &
   center_marker =   &
                   .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave  &
   angle_extent = 360.0  &
   length = 0.5  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.CYLINDER_4  &
   adams_id = 20  &
   center_marker = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_bucket_RArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------- PART_Cyl_bucket_LArm_cyl --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_bucket_LArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.MARKER_79  &
   adams_id = 79  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master  &
   adams_id = 66  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cm  &
   adams_id = 67  &
   location = 1.8483998221, 0.29, -0.9172727897  &
   orientation = 0.0d, -23.8254936253d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_2  &
   adams_id = 68  &
   location = 1.7642176735, 0.32, -0.7266360854  &
   orientation = 90.0d, 0.0d, -156.1745063747d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_6  &
   adams_id = 69  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_11  &
   adams_id = 70  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl  &
   material_type = .SSLRadial.steel_5
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.CYLINDER  &
   adams_id = 21  &
   center_marker =   &
                   .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master  &
   angle_extent = 360.0  &
   length = 0.47  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.CYLINDER_2  &
   adams_id = 22  &
   center_marker = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------- PART_Cyl_bucket_LArm_pis --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLRadial.PART_Cyl_bucket_LArm_pis  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.PART_Cyl_bucket_LArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.MARKER_82  &
   adams_id = 82  &
   location = 1.9872176735, 0.29, -1.2316360854  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave  &
   adams_id = 71  &
   location = 1.9872176735, 0.29, -1.2316360854  &
   orientation = 0.0d, -23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cm  &
   adams_id = 72  &
   location = 1.9114766049, 0.29, -1.0601148315  &
   orientation = 0.0d, -23.8254936253d, 0.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_4  &
   adams_id = 73  &
   location = 1.9872176735, 0.26, -1.2316360854  &
   orientation = -90.0d, 0.0d, 156.1745063747d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_5  &
   adams_id = 74  &
   location = 1.9872176735, 0.29, -1.2316360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
marker create  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_12  &
   adams_id = 75  &
   location = 1.7642176735, 0.29, -0.7266360854  &
   orientation = -180.0d, 23.8254936253d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLRadial.PART_Cyl_bucket_LArm_pis  &
   material_type = .SSLRadial.steel_5
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.CYLINDER_3  &
   adams_id = 23  &
   center_marker =   &
                   .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave  &
   angle_extent = 360.0  &
   length = 0.5  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.CYLINDER_4  &
   adams_id = 24  &
   center_marker = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLRadial.PART_Cyl_bucket_LArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Cyl_RArm_bucket  &
   adams_id = 6  &
   i_marker_name = .SSLRadial.Part_Arm.MARKER_76  &
   j_marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.MARKER_77
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_RArm_bucket  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLRadial.JT_Cyl_RArm_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_11  &
   j_marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_RArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLRadial.JT_Cyl_LArm_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_11  &
   j_marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_LArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLRadial.JT_Cyl_bucket_RArm_cyl_pis  &
   adams_id = 4  &
   i_marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_11  &
   j_marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_bucket_RArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLRadial.JT_Cyl_bucket_LArm_cyl_pis  &
   adams_id = 5  &
   i_marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_11  &
   j_marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_bucket_LArm_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Cyl_LArm_bucket  &
   adams_id = 7  &
   i_marker_name = .SSLRadial.Part_Arm.MARKER_78  &
   j_marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.MARKER_79
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_LArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Pis_RArm_bucket  &
   adams_id = 8  &
   i_marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.MARKER_80  &
   j_marker_name = .SSLRadial.Part_bucket.MARKER_81
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Pis_RArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Pis_LArm_bucket  &
   adams_id = 9  &
   i_marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.MARKER_82  &
   j_marker_name = .SSLRadial.Part_bucket.MARKER_83
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Pis_LArm_bucket  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .SSLRadial.JT_RArm_bucket  &
   adams_id = 10  &
   i_marker_name = .SSLRadial.Part_bucket.MARKER_84  &
   j_marker_name = .SSLRadial.Part_Arm.MARKER_85
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_RArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Pis_Cs_RArm  &
   adams_id = 12  &
   i_marker_name = .SSLRadial.Part_Arm.MARKER_88  &
   j_marker_name = .SSLRadial.PART_Cyl_RArm_pis.MARKER_89
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Pis_Cs_RArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Pis_Cs_LArm  &
   adams_id = 13  &
   i_marker_name = .SSLRadial.Part_Arm.MARKER_90  &
   j_marker_name = .SSLRadial.PART_Cyl_LArm_pis.MARKER_91
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Pis_Cs_LArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Cyl_Cs_RArm  &
   adams_id = 14  &
   i_marker_name = .SSLRadial.Part_to_cs.MARKER_92  &
   j_marker_name = .SSLRadial.PART_Cyl_RArm_cyl.MARKER_93
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_Cs_RArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLRadial.JT_Cyl_Cs_LArm  &
   adams_id = 15  &
   i_marker_name = .SSLRadial.Part_to_cs.MARKER_94  &
   j_marker_name = .SSLRadial.PART_Cyl_LArm_cyl.MARKER_95
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cyl_Cs_LArm  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .SSLRadial.JT_Cs_RArm  &
   adams_id = 16  &
   i_marker_name = .SSLRadial.Part_Arm.MARKER_96  &
   j_marker_name = .SSLRadial.Part_to_cs.MARKER_97
!
constraint attributes  &
   constraint_name = .SSLRadial.JT_Cs_RArm  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_RArm_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_5  &
   j_marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_LArm_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_5  &
   j_marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_bucket_RArm_force  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_5  &
   j_marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_bucket_LArm_force  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_5  &
   j_marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .SSLRadial.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=50 model_name=.SSLRadial initial_static=no"
!
simulation script create  &
   sim_script_name = .SSLRadial.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .SSLRadial.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .SSLRadial.Last_Sim_4  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .SSLRadial.Dv_thetab  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -73.2924520299
!
variable create  &
   variable_name = .SSLRadial.Dv_theta3  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -27.6728552811
!
variable create  &
   variable_name = .SSLRadial.Dv_theta4  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -22.385508426
!
variable create  &
   variable_name = .SSLRadial.Dv_p3x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.239859253
!
variable create  &
   variable_name = .SSLRadial.Dv_p4x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7642176735
!
variable create  &
   variable_name = .SSLRadial.Dv_p5x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.9172176735
!
variable create  &
   variable_name = .SSLRadial.Dv_p6x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.9872176735
!
variable create  &
   variable_name = .SSLRadial.Dv_p3z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.6501915354
!
variable create  &
   variable_name = .SSLRadial.Dv_p4z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.7266360854
!
variable create  &
   variable_name = .SSLRadial.Dv_p5z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.4316360854
!
variable create  &
   variable_name = .SSLRadial.Dv_p6z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.2316360854
!
variable create  &
   variable_name = .SSLRadial.Dv_Loader_width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.975
!
variable create  &
   variable_name = .SSLRadial.Dv_bx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.19
!
variable create  &
   variable_name = .SSLRadial.Dv_bz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.633
!
variable create  &
   variable_name = .SSLRadial.Dv_ArmMountx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .SSLRadial.Dv_ArmMountz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_RArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_RArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_RArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_RArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_RArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_LArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_LArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_LArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_LArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_LArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLRadial.Dv_size_link2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_RArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_RArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_RArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_RArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_RArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_LArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_LArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_LArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_LArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .SSLRadial.DV_Cyl_bucket_LArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLRadial.Dv_Width_Arm2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.805
!
variable create  &
   variable_name = .SSLRadial.Dv_Cyl_Width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.58
!
variable create  &
   variable_name = .SSLRadial.Dv_bucketz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.4916360854
!
variable create  &
   variable_name = .SSLRadial.Dv_bucketx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.9872176735
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_RArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_RArm_P  &
   function = "DZ( .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_RArm_V  &
   function = "VZ( .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_LArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_LArm_P  &
   function = "DZ( .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_LArm_V  &
   function = "VZ( .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_RArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_RArm_P  &
   function = "DZ( .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_RArm_V  &
   function = "VZ( .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_LArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_LArm_P  &
   function = "DZ( .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLRadial.SV_Cyl_bucket_LArm_V  &
   function = "VZ( .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_RArm_force  &
   function = "VARVAL( .SSLRadial.SV_Cyl_RArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master) , ",  &
              "VZ( .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master) , ",  &
              ".SSLRadial.DV_Cyl_RArm_min_length , .SSLRadial.DV_Cyl_RArm_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_LArm_force  &
   function = "VARVAL( .SSLRadial.SV_Cyl_LArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master) , ",  &
              "VZ( .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master) , ",  &
              ".SSLRadial.DV_Cyl_LArm_min_length , .SSLRadial.DV_Cyl_LArm_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_bucket_RArm_force  &
   function = "VARVAL( .SSLRadial.SV_Cyl_bucket_RArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master) , ",  &
              "VZ( .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master) , ",  &
              ".SSLRadial.DV_Cyl_bucket_RArm_min_length , .SSLRadial.DV_Cyl_bucket_RArm_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLRadial.F_Cyl_bucket_LArm_force  &
   function = "VARVAL( .SSLRadial.SV_Cyl_bucket_LArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master) , ",  &
              "VZ( .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master) , ",  &
              ".SSLRadial.DV_Cyl_bucket_LArm_min_length , .SSLRadial.DV_Cyl_bucket_LArm_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p2R  &
   location =   &
      (LOC_RELATIVE_TO({0, -.SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p3R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p4R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p5R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p5x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p6R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p6x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p1R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p2L  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p4L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p3L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p5L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p5x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p6L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p6x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLRadial.ground.Mkr_p1L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))
!
material modify  &
   material_name = .SSLRadial.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLRadial.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLRadial.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLRadial.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLRadial.steel_5  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, -.SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_104  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Width_Arm2 / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p5x, -.SSLRadial.Dv_Width_Arm2 / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Width_Arm2 / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p5x, .SSLRadial.Dv_Width_Arm2 / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_76  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_78  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_85  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bucketx, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_105  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "z-y"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_88  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_90  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_Arm.MARKER_96  &
   location =   &
      (LOC_RELATIVE_TO({0, -.SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_1  &
   width = (0.2meter)
!
geometry modify shape link  &
   link_name = .SSLRadial.Part_Arm.LINK_3  &
   width = (0.2meter)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.Part_Arm.CYLINDER_25  &
   length = (0.1125meter)  &
   radius = (2.5cm)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.Part_Arm.CYLINDER_26  &
   length = (0.1125meter)  &
   radius = (2.5cm)
!
marker modify  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "z-y"))  &
   relative_to = .SSLRadial.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "z-y"))  &
   relative_to = .SSLRadial.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_92  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_94  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_to_cs.MARKER_97  &
   location =   &
      (LOC_RELATIVE_TO({0, -.SSLRadial.Dv_Loader_width / 2, 0}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.Part_to_cs.CYLINDER_9  &
   length = (.SSLRadial.Dv_Loader_width)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.Part_to_cs.CYLINDER_10  &
   length = (.SSLRadial.Dv_Loader_width)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.ground.Mkr_p1R))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLRadial.ground.Mkr_p1R, .SSLRadial.ground.Mkr_p3R, "z"))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_RArm_rc, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_cyl.MARKER_93  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_cyl.CYLINDER  &
   length = (.SSLRadial.DV_Cyl_RArm_min_length - .SSLRadial.DV_Cyl_RArm_rc)  &
   radius = (.SSLRadial.DV_Cyl_RArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_cyl.CYLINDER_2  &
   length = (.SSLRadial.DV_Cyl_RArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_RArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.ground.Mkr_p3R))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_RArm_rc, 0}, .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_RArm_pis.MKR_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_RArm_cyl.MKR_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_RArm_pis.MARKER_89  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, -.SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_pis.CYLINDER_3  &
   length = (.SSLRadial.DV_Cyl_RArm_min_length)  &
   radius = (.SSLRadial.DV_Cyl_RArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_RArm_pis.CYLINDER_4  &
   length = (.SSLRadial.DV_Cyl_RArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_RArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.ground.Mkr_p1L))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLRadial.ground.Mkr_p1L, .SSLRadial.ground.Mkr_p3L, "z"))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_LArm_rc, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_cyl.MARKER_95  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bx, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_bz}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_cyl.CYLINDER  &
   length = (.SSLRadial.DV_Cyl_LArm_min_length - .SSLRadial.DV_Cyl_LArm_rc)  &
   radius = (.SSLRadial.DV_Cyl_LArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_cyl.CYLINDER_2  &
   length = (.SSLRadial.DV_Cyl_LArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_LArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.ground.Mkr_p3L))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_LArm_rc, 0}, .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_LArm_pis.MKR_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_LArm_cyl.MKR_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_LArm_pis.MARKER_91  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p3x, .SSLRadial.Dv_Loader_width / 2, .SSLRadial.Dv_p3z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_pis.CYLINDER_3  &
   length = (.SSLRadial.DV_Cyl_LArm_min_length)  &
   radius = (.SSLRadial.DV_Cyl_LArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_LArm_pis.CYLINDER_4  &
   length = (.SSLRadial.DV_Cyl_LArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_LArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bucketx, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_49  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bucketx, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bucketx, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bucketx, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_81  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p6x, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p6x, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_bucketx, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p5z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape link  &
   link_name = .SSLRadial.Part_bucket.LINK_11  &
   width = (1.81E-002meter)  &
   depth = (9.05E-003meter)
!
geometry modify shape link  &
   link_name = .SSLRadial.Part_bucket.LINK_12  &
   width = (1.81E-002meter)  &
   depth = (9.05E-003meter)
!
marker modify  &
   marker_name = .SSLRadial.Part_bucket.MAR128  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p5x + 0.27, 0, .SSLRadial.Dv_p5z - 0.1}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 3, 90}, .SSLRadial.ground.Mkr_Master))  &
   relative_to = .SSLRadial.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.MARKER_77  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, (.SSLRadial.Dv_Loader_width - .SSLRadial.Dv_Cyl_Width) / 2}, .SSLRadial.ground.Mkr_p4R))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLRadial.ground.Mkr_p4R, .SSLRadial.ground.Mkr_p6R, "z"))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_bucket_RArm_rc, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.CYLINDER  &
   length = (.SSLRadial.DV_Cyl_bucket_RArm_min_length - .SSLRadial.DV_Cyl_bucket_RArm_rc)  &
   radius = (.SSLRadial.DV_Cyl_bucket_RArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_cyl.CYLINDER_2  &
   length = (.SSLRadial.DV_Cyl_bucket_RArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_bucket_RArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p6x, -.SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, (.SSLRadial.Dv_Loader_width - .SSLRadial.Dv_Cyl_Width) / 2}, .SSLRadial.ground.Mkr_p6R))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_bucket_RArm_rc, 0}, .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_RArm_pis.MKR_bucket_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_RArm_cyl.MKR_bucket_RArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.CYLINDER_3  &
   length = (.SSLRadial.DV_Cyl_bucket_RArm_min_length)  &
   radius = (.SSLRadial.DV_Cyl_bucket_RArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_RArm_pis.CYLINDER_4  &
   length = (.SSLRadial.DV_Cyl_bucket_RArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_bucket_RArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.MARKER_79  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p4x, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p4z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -(.SSLRadial.Dv_Loader_width - .SSLRadial.Dv_Cyl_Width) / 2}, .SSLRadial.ground.Mkr_p4L))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLRadial.ground.Mkr_p4L, .SSLRadial.ground.Mkr_p6L, "z"))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_bucket_LArm_rc, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.CYLINDER  &
   length = (.SSLRadial.DV_Cyl_bucket_LArm_min_length - .SSLRadial.DV_Cyl_bucket_LArm_rc)  &
   radius = (.SSLRadial.DV_Cyl_bucket_LArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_cyl.CYLINDER_2  &
   length = (.SSLRadial.DV_Cyl_bucket_LArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_bucket_LArm_rc)
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({.SSLRadial.Dv_p6x, .SSLRadial.Dv_Cyl_Width / 2, .SSLRadial.Dv_p6z}, .SSLRadial.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLRadial.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -(.SSLRadial.Dv_Loader_width - .SSLRadial.Dv_Cyl_Width) / 2}, .SSLRadial.ground.Mkr_p6L))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLRadial.DV_Cyl_bucket_LArm_rc, 0}, .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_LArm_pis.MKR_bucket_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
marker modify  &
   marker_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLRadial.PART_Cyl_bucket_LArm_cyl.MKR_bucket_LArm_cyl_master))  &
   relative_to = .SSLRadial.PART_Cyl_bucket_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLRadial.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.CYLINDER_3  &
   length = (.SSLRadial.DV_Cyl_bucket_LArm_min_length)  &
   radius = (.SSLRadial.DV_Cyl_bucket_LArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLRadial.PART_Cyl_bucket_LArm_pis.CYLINDER_4  &
   length = (.SSLRadial.DV_Cyl_bucket_LArm_rc * 2)  &
   radius = (.SSLRadial.DV_Cyl_bucket_LArm_rc)
!
variable modify  &
   variable_name = .SSLRadial.Dv_thetab  &
   real_value = (-90 - ATAN((.SSLRadial.Dv_bx / .SSLRadial.Dv_bz)d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_theta3  &
   real_value = (.SSLRadial.Dv_thetab + ACOS(((.SSLRadial.Dv_bz**2 + .SSLRadial.Dv_bx**2 + 1.4**2 - 1.05**2) / (2 * (.SSLRadial.Dv_bz**2 + .SSLRadial.Dv_bx**2)**0.5 * 1.4))d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_theta4  &
   real_value = (.SSLRadial.Dv_thetab + ACOS((.SSLRadial.Dv_bz**2 + .SSLRadial.Dv_bx**2 + 1.908**2 - 1.577**2) / (2 * (.SSLRadial.Dv_bz**2 + .SSLRadial.Dv_bx**2)**0.5 * 1.908)d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_p3x  &
   real_value = (.SSLRadial.Dv_ArmMountx + 1.4 * COS(.SSLRadial.Dv_theta3 d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_p4x  &
   real_value = (.SSLRadial.Dv_ArmMountx + 1.908 * COS(.SSLRadial.Dv_theta4 d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_p5x  &
   real_value = (.SSLRadial.Dv_p4x + 0.153)
!
variable modify  &
   variable_name = .SSLRadial.Dv_p6x  &
   real_value = (.SSLRadial.Dv_bucketx)
!
variable modify  &
   variable_name = .SSLRadial.Dv_p3z  &
   real_value = (.SSLRadial.Dv_ArmMountz + 1.4 * SIN(.SSLRadial.Dv_theta3 d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_p4z  &
   real_value = (.SSLRadial.Dv_ArmMountz + 1.908 * SIN(.SSLRadial.Dv_theta4 d))
!
variable modify  &
   variable_name = .SSLRadial.Dv_p5z  &
   real_value = (.SSLRadial.Dv_p4z + -0.705)
!
variable modify  &
   variable_name = .SSLRadial.Dv_p6z  &
   real_value = (.SSLRadial.Dv_p5z + .SSLRadial.Dv_size_link2)
!
variable modify  &
   variable_name = .SSLRadial.Dv_bucketz  &
   real_value = (.SSLRadial.Dv_p5z - 6.0E-002)
!
variable modify  &
   variable_name = .SSLRadial.Dv_bucketx  &
   real_value = (.SSLRadial.Dv_p5x + 7.0E-002)
!
model display  &
   model_name = SSLRadial
