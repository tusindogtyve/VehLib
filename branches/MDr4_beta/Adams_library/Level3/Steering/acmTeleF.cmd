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
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = acmTeleF
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .acmTeleF.SV_steering_F  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_steering_P  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_steering_V  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_R_F  &
   adams_id = 4  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_R_P  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_R_V  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_L_F  &
   adams_id = 7  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_L_P  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_L_V  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_slide_F  &
   adams_id = 10  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_slide_P  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .acmTeleF.SV_Cyl_slide_V  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .acmTeleF.steel  &
   adams_id = 4  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .acmTeleF.steel_2  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .acmTeleF.steel_3  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .acmTeleF.steel_4  &
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
   default_coordinate_system = .acmTeleF.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.ground.Mkr_master  &
   adams_id = 1  &
   location = 0.1, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.ground.MKR_slaveR  &
   adams_id = 18  &
   location = 0.1, -0.7, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.ground.MKR_slaveL  &
   adams_id = 19  &
   location = 0.1, 0.7, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.ground  &
   material_type = .acmTeleF.steel
!
part attributes  &
   part_name = .acmTeleF.ground  &
   name_visibility = off
!
!--------------------------------- PART_axle ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_axle  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_axle
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_axle.cm  &
   adams_id = 32  &
   location = 9.3640290621E-002, 0.0, -2.1199031265E-003  &
   orientation = 90.0d, 0.0d, -4.4599269333d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_3  &
   adams_id = 3  &
   location = 0.1, -0.7, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_23  &
   adams_id = 23  &
   location = 0.1, -0.7, 0.0  &
   orientation = -5.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_25  &
   adams_id = 25  &
   location = 0.1, 0.7, 0.0  &
   orientation = 5.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_26  &
   adams_id = 26  &
   location = -5.0E-002, -0.275, -5.0E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_29  &
   adams_id = 29  &
   location = -5.0E-002, -0.275, -5.0E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_38  &
   adams_id = 38  &
   location = -5.0E-002, -0.275, -5.0E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_64  &
   adams_id = 64  &
   location = 0.17, -0.7, -0.14  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_41  &
   adams_id = 41  &
   location = -5.0E-002, 0.0, -5.0E-002  &
   orientation = 0.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_81  &
   adams_id = 81  &
   location = 0.1, 0.37, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_82  &
   adams_id = 82  &
   location = 0.1, -0.37, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_100  &
   adams_id = 100  &
   location = 0.1, -0.37, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_102  &
   adams_id = 102  &
   location = 0.1, 0.37, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_106  &
   adams_id = 106  &
   location = 0.0, 0.25, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_107  &
   adams_id = 107  &
   location = 0.0, -0.25, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_108  &
   adams_id = 108  &
   location = 0.0, 0.25, -0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_109  &
   adams_id = 109  &
   location = 0.0, -0.25, -0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_120  &
   adams_id = 120  &
   location = 0.0, 0.25, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_125  &
   adams_id = 125  &
   location = 0.0, 0.25, -0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_128  &
   adams_id = 128  &
   location = 0.0, -0.25, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_132  &
   adams_id = 132  &
   location = 0.0, -0.25, -0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_axle.MARKER_151  &
   adams_id = 151  &
   location = -5.0E-002, -0.2, 0.25  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_axle  &
   density = 781.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_axle.CYLINDER_10  &
   adams_id = 10  &
   center_marker = .acmTeleF.PART_axle.MARKER_26  &
   angle_extent = 360.0  &
   length = 0.55  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape block  &
   block_name = .acmTeleF.PART_axle.BOX_24  &
   adams_id = 24  &
   corner_marker = .acmTeleF.PART_axle.MARKER_64  &
   diag_corner_coords = 0.28, 1.4, 0.14
!
part attributes  &
   part_name = .acmTeleF.PART_axle  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- PART_to_cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_to_cs  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_to_cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_65  &
   adams_id = 65  &
   location = 0.1, 0.4, 0.35  &
   orientation = 53.1301023542d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_71  &
   adams_id = 71  &
   location = -0.4, 0.25, 0.15  &
   orientation = 53.1301023542d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_72  &
   adams_id = 72  &
   location = -0.4, 0.4, 0.35  &
   orientation = 53.1301023542d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_73  &
   adams_id = 73  &
   location = 0.1, -0.4, 0.35  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_74  &
   adams_id = 74  &
   location = -0.4, -0.4, 0.35  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_75  &
   adams_id = 75  &
   location = -0.4, -0.4, 0.35  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_76  &
   adams_id = 76  &
   location = -0.4, -0.25, 0.15  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.cm  &
   adams_id = 33  &
   location = -0.2851290872, 0.0, 0.2231275582  &
   orientation = -89.9999999997d, 2.5225685454E-009d, -134.2247621583d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_77  &
   adams_id = 77  &
   location = -0.4, -0.25, 0.15  &
   orientation = 90.0d, -16.699244234d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_78  &
   adams_id = 78  &
   location = -0.4, -0.25, -0.15  &
   orientation = 90.0d, -16.699244234d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_66  &
   adams_id = 66  &
   location = -0.4, 0.4, 0.35  &
   orientation = 53.1301023542d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_79  &
   adams_id = 79  &
   location = 0.1, 0.4, 0.35  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_80  &
   adams_id = 80  &
   location = 0.1, -0.4, 0.35  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_69  &
   adams_id = 69  &
   location = -0.4, 0.25, 0.15  &
   orientation = -90.0d, -16.699244234d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_70  &
   adams_id = 70  &
   location = -0.4, 0.25, -0.15  &
   orientation = -90.0d, -16.699244234d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_96  &
   adams_id = 96  &
   location = 0.1, -0.4, 0.35  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_98  &
   adams_id = 98  &
   location = 0.1, 0.4, 0.35  &
   orientation = 53.1301023542d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_118  &
   adams_id = 118  &
   location = -0.4, 0.25, 0.15  &
   orientation = -90.0d, -16.699244234d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_123  &
   adams_id = 123  &
   location = -0.4, 0.25, -0.15  &
   orientation = -90.0d, -16.699244234d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_127  &
   adams_id = 127  &
   location = -0.4, -0.25, 0.15  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_130  &
   adams_id = 130  &
   location = -0.4, -0.25, -0.15  &
   orientation = 90.0d, -16.699244234d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_149  &
   adams_id = 149  &
   location = -5.0E-002, 0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_to_cs  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .acmTeleF.PART_to_cs.LINK_28  &
   i_marker = .acmTeleF.PART_to_cs.MARKER_65  &
   j_marker = .acmTeleF.PART_to_cs.MARKER_66  &
   width = 6.0E-002  &
   depth = 6.0E-002
!
geometry create shape link  &
   link_name = .acmTeleF.PART_to_cs.LINK_30  &
   i_marker = .acmTeleF.PART_to_cs.MARKER_69  &
   j_marker = .acmTeleF.PART_to_cs.MARKER_70  &
   width = 6.0E-002  &
   depth = 6.0E-002
!
geometry create shape link  &
   link_name = .acmTeleF.PART_to_cs.LINK_29  &
   i_marker = .acmTeleF.PART_to_cs.MARKER_71  &
   j_marker = .acmTeleF.PART_to_cs.MARKER_66  &
   width = 6.0E-002  &
   depth = 6.0E-002
!
geometry create shape link  &
   link_name = .acmTeleF.PART_to_cs.LINK_30_2  &
   i_marker = .acmTeleF.PART_to_cs.MARKER_73  &
   j_marker = .acmTeleF.PART_to_cs.MARKER_74  &
   width = 6.0E-002  &
   depth = 6.0E-002
!
geometry create shape link  &
   link_name = .acmTeleF.PART_to_cs.LINK_31  &
   i_marker = .acmTeleF.PART_to_cs.MARKER_75  &
   j_marker = .acmTeleF.PART_to_cs.MARKER_76  &
   width = 6.0E-002  &
   depth = 6.0E-002
!
geometry create shape link  &
   link_name = .acmTeleF.PART_to_cs.LINK_32  &
   i_marker = .acmTeleF.PART_to_cs.MARKER_77  &
   j_marker = .acmTeleF.PART_to_cs.MARKER_78  &
   width = 6.0E-002  &
   depth = 6.0E-002
!
part attributes  &
   part_name = .acmTeleF.PART_to_cs  &
   color = RED  &
   name_visibility = off
!
!--------------------------------- PART_acmR ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_acmR  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_acmR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MARKER_12  &
   adams_id = 12  &
   location = 0.1, -0.7, 0.0  &
   orientation = -5.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.cm  &
   adams_id = 34  &
   location = 9.4742470526E-002, -0.7350680958, -1.4604248538E-003  &
   orientation = 99.0048062036d, 3.3006963775d, -3.8177913314d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MARKER_14  &
   adams_id = 14  &
   location = 0.1, -0.7, 0.0  &
   orientation = 175.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MARKER_16  &
   adams_id = 16  &
   location = 0.1, -0.7, 0.0  &
   orientation = -180.0d, 15.5241109968d, -167.9145900522d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MARKER_17  &
   adams_id = 17  &
   location = -8.0E-002, -0.66, -5.0E-002  &
   orientation = -180.0d, 15.5241109968d, -167.9145900522d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MARKER_22  &
   adams_id = 22  &
   location = 0.1, -0.7, 0.0  &
   orientation = -5.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MARKER_58  &
   adams_id = 58  &
   location = -8.0E-002, -0.66, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmR.MKR_wheel_FR  &
   adams_id = 60  &
   location = 0.1, -1.0, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_acmR  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmR.CYLINDER_5  &
   adams_id = 5  &
   center_marker = .acmTeleF.PART_acmR.MARKER_12  &
   angle_extent = 360.0  &
   length = 0.154  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmR.CYLINDER_7  &
   adams_id = 7  &
   center_marker = .acmTeleF.PART_acmR.MARKER_14  &
   angle_extent = 360.0  &
   length = 0.154  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .acmTeleF.PART_acmR.LINK_9  &
   i_marker = .acmTeleF.PART_acmR.MARKER_16  &
   j_marker = .acmTeleF.PART_acmR.MARKER_17  &
   width = 6.0E-002  &
   depth = 4.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmR.CYLINDER_20  &
   adams_id = 20  &
   center_marker = .acmTeleF.PART_acmR.MKR_wheel_FR  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_acmR  &
   color = GREEN  &
   name_visibility = off
!
!--------------------------------- PART_acmL ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_acmL  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_acmL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MARKER_13  &
   adams_id = 13  &
   location = 0.1, 0.7, 0.0  &
   orientation = 5.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.cm  &
   adams_id = 35  &
   location = 9.4742470526E-002, 0.7350680958, -1.4604248538E-003  &
   orientation = 80.9951937974d, -3.3006963775d, -3.8177913312d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MARKER_15  &
   adams_id = 15  &
   location = 0.1, 0.7, 0.0  &
   orientation = -175.0d, 0.0d, -180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MARKER_20  &
   adams_id = 20  &
   location = 0.1, 0.7, 0.0  &
   orientation = -180.0d, 15.5241109968d, 167.9145900522d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MARKER_21  &
   adams_id = 21  &
   location = -8.0E-002, 0.66, -5.0E-002  &
   orientation = -180.0d, 15.5241109968d, 167.9145900522d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MARKER_24  &
   adams_id = 24  &
   location = 0.1, 0.7, 0.0  &
   orientation = 5.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MARKER_48  &
   adams_id = 48  &
   location = -8.0E-002, 0.66, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_acmL.MKR_wheel_FL  &
   adams_id = 61  &
   location = 0.1, 1.0, 0.0  &
   orientation = 90.0d, 0.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_acmL  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmL.CYLINDER_6  &
   adams_id = 6  &
   center_marker = .acmTeleF.PART_acmL.MARKER_13  &
   angle_extent = 360.0  &
   length = 0.154  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmL.CYLINDER_8  &
   adams_id = 8  &
   center_marker = .acmTeleF.PART_acmL.MARKER_15  &
   angle_extent = 360.0  &
   length = 0.154  &
   radius = 8.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .acmTeleF.PART_acmL.LINK_9  &
   i_marker = .acmTeleF.PART_acmL.MARKER_20  &
   j_marker = .acmTeleF.PART_acmL.MARKER_21  &
   width = 6.0E-002  &
   depth = 4.0E-002
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmL.CYLINDER_22  &
   adams_id = 22  &
   center_marker = .acmTeleF.PART_acmL.MKR_wheel_FL  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_acmL  &
   color = GREEN  &
   name_visibility = off
!
!-------------------------------- PART_piston ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_piston  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_piston
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_27  &
   adams_id = 27  &
   location = -5.0E-002, -0.4, -5.0E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.cm  &
   adams_id = 36  &
   location = -5.0E-002, 0.0, -5.0E-002  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_28  &
   adams_id = 28  &
   location = -5.0E-002, -0.275, -5.0E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_37  &
   adams_id = 37  &
   location = -5.0E-002, -0.4, -5.0E-002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_42  &
   adams_id = 42  &
   location = -5.0E-002, 0.0, -5.0E-002  &
   orientation = 0.0d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_43  &
   adams_id = 43  &
   location = -5.0E-002, 0.4, -5.0E-002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_51  &
   adams_id = 51  &
   location = -5.0E-002, 0.4, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_piston.MARKER_52  &
   adams_id = 52  &
   location = -5.0E-002, -0.4, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_piston  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_piston.CYLINDER_14  &
   adams_id = 14  &
   center_marker = .acmTeleF.PART_piston.MARKER_27  &
   angle_extent = 360.0  &
   length = 0.8  &
   radius = 2.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_piston  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- PART_linkL ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_linkL  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_linkL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_linkL.MARKER_44  &
   adams_id = 44  &
   location = -8.0E-002, 0.66, -5.0E-002  &
   orientation = 90.0d, 6.5819446552d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkL.cm  &
   adams_id = 56  &
   location = -6.5E-002, 0.53, -5.0E-002  &
   orientation = -90.0d, -6.5819446552d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkL.MARKER_46  &
   adams_id = 46  &
   location = -5.0E-002, 0.4, -5.0E-002  &
   orientation = -90.0d, -6.5819446552d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkL.MARKER_49  &
   adams_id = 49  &
   location = -8.0E-002, 0.66, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkL.MARKER_50  &
   adams_id = 50  &
   location = -5.0E-002, 0.4, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_linkL  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_linkL.CYLINDER_16  &
   adams_id = 16  &
   center_marker = .acmTeleF.PART_linkL.MARKER_44  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_linkL.CYLINDER_18  &
   adams_id = 18  &
   center_marker = .acmTeleF.PART_linkL.MARKER_46  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_linkL  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- PART_linkR ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_linkR  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_linkR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_linkR.MARKER_45  &
   adams_id = 45  &
   location = -8.0E-002, -0.66, -5.0E-002  &
   orientation = -90.0d, 6.5819446552d, 90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkR.cm  &
   adams_id = 57  &
   location = -6.5E-002, -0.53, -5.0E-002  &
   orientation = 90.0d, -6.5819446552d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkR.MARKER_47  &
   adams_id = 47  &
   location = -5.0E-002, -0.4, -5.0E-002  &
   orientation = 90.0d, -6.5819446552d, 90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkR.MARKER_53  &
   adams_id = 53  &
   location = -5.0E-002, -0.4, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_linkR.MARKER_59  &
   adams_id = 59  &
   location = -8.0E-002, -0.66, -5.0E-002  &
   orientation = 0.0d, -90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_linkR  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_linkR.CYLINDER_17  &
   adams_id = 17  &
   center_marker = .acmTeleF.PART_linkR.MARKER_45  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_linkR.CYLINDER_19  &
   adams_id = 19  &
   center_marker = .acmTeleF.PART_linkR.MARKER_47  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_linkR  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- PART_rod_BR ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_rod_BR  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_rod_BR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_110  &
   adams_id = 110  &
   location = -0.4, -0.25, -0.15  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BR.cm  &
   adams_id = 134  &
   location = -0.2, -0.25, -0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_111  &
   adams_id = 111  &
   location = 0.0, -0.25, -0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_131  &
   adams_id = 131  &
   location = -0.4, -0.25, -0.15  &
   orientation = 90.0d, -16.699244234d, -90.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_133  &
   adams_id = 133  &
   location = 0.0, -0.25, -0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_rod_BR  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BR.CYLINDER_33  &
   adams_id = 33  &
   center_marker = .acmTeleF.PART_rod_BR.MARKER_110  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BR.CYLINDER_34  &
   adams_id = 34  &
   center_marker = .acmTeleF.PART_rod_BR.MARKER_111  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_rod_BR  &
   color = WHITE  &
   name_visibility = off
!
!-------------------------------- PART_rod_TR ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_rod_TR  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_rod_TR
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_112  &
   adams_id = 112  &
   location = -0.4, -0.25, 0.15  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TR.cm  &
   adams_id = 135  &
   location = -0.2, -0.25, 0.15  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_113  &
   adams_id = 113  &
   location = 0.0, -0.25, 0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_126  &
   adams_id = 126  &
   location = -0.4, -0.25, 0.15  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_129  &
   adams_id = 129  &
   location = 0.0, -0.25, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_rod_TR  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TR.CYLINDER_35  &
   adams_id = 35  &
   center_marker = .acmTeleF.PART_rod_TR.MARKER_112  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TR.CYLINDER_36  &
   adams_id = 36  &
   center_marker = .acmTeleF.PART_rod_TR.MARKER_113  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_rod_TR  &
   color = WHITE  &
   name_visibility = off
!
!-------------------------------- PART_rod_BL ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_rod_BL  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_rod_BL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_114  &
   adams_id = 114  &
   location = -0.4, 0.25, -0.15  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BL.cm  &
   adams_id = 136  &
   location = -0.2, 0.25, -0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_115  &
   adams_id = 115  &
   location = 0.0, 0.25, -0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_122  &
   adams_id = 122  &
   location = -0.4, 0.25, -0.15  &
   orientation = -90.0d, -16.699244234d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_124  &
   adams_id = 124  &
   location = 0.0, 0.25, -0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_rod_BL  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BL.CYLINDER_37  &
   adams_id = 37  &
   center_marker = .acmTeleF.PART_rod_BL.MARKER_114  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BL.CYLINDER_38  &
   adams_id = 38  &
   center_marker = .acmTeleF.PART_rod_BL.MARKER_115  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_rod_BL  &
   color = WHITE  &
   name_visibility = off
!
!-------------------------------- PART_rod_TL ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_rod_TL  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_rod_TL
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_116  &
   adams_id = 116  &
   location = -0.4, 0.25, 0.15  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TL.cm  &
   adams_id = 137  &
   location = -0.2, 0.25, 0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_117  &
   adams_id = 117  &
   location = 0.0, 0.25, 0.15  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_119  &
   adams_id = 119  &
   location = -0.4, 0.25, 0.15  &
   orientation = -90.0d, -16.699244234d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_121  &
   adams_id = 121  &
   location = 0.0, 0.25, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_rod_TL  &
   material_type = .acmTeleF.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TL.CYLINDER_39  &
   adams_id = 39  &
   center_marker = .acmTeleF.PART_rod_TL.MARKER_116  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TL.CYLINDER_40  &
   adams_id = 40  &
   center_marker = .acmTeleF.PART_rod_TL.MARKER_117  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_rod_TL  &
   color = WHITE  &
   name_visibility = off
!
!--------------------------- PART_Cyl_liftCyl_R_cyl ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_Cyl_liftCyl_R_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.MARKER_97  &
   adams_id = 97  &
   location = 0.1, -0.4, 0.35  &
   orientation = 126.8698976458d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master  &
   adams_id = 83  &
   location = 0.1, -0.4, 0.35  &
   orientation = -171.4692343901d, 0.0d, -180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cm  &
   adams_id = 9  &
   location = 0.1, -0.3933246796, 0.3054978641  &
   orientation = 8.5307656099d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_2  &
   adams_id = 2  &
   location = 0.1, -0.3505531824, 0.3574170226  &
   orientation = 98.5307656099d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_6  &
   adams_id = 6  &
   location = 0.1, -0.4, 0.35  &
   orientation = -171.4692343901d, 0.0d, -180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_11  &
   adams_id = 11  &
   location = 0.1, -0.4, 0.35  &
   orientation = -171.4692343901d, 0.0d, -180.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl  &
   material_type = .acmTeleF.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------- PART_Cyl_liftCyl_R_pis ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_R_pis  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_Cyl_liftCyl_R_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.MARKER_101  &
   adams_id = 101  &
   location = 0.1, -0.37, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave  &
   adams_id = 84  &
   location = 0.1, -0.37, 0.15  &
   orientation = 8.5307656099d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cm  &
   adams_id = 10  &
   location = 0.1, -0.3762096004, 0.1913973357  &
   orientation = 8.5307656099d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_4  &
   adams_id = 4  &
   location = 0.1, -0.4194468176, 0.1425829774  &
   orientation = -81.4692343901d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_5  &
   adams_id = 5  &
   location = 0.1, -0.37, 0.15  &
   orientation = -171.4692343901d, 0.0d, -180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_12  &
   adams_id = 85  &
   location = 0.1, -0.4, 0.35  &
   orientation = -171.4692343901d, 0.0d, -180.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_R_pis  &
   material_type = .acmTeleF.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_R_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------- PART_Cyl_liftCyl_L_cyl ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_Cyl_liftCyl_L_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.MARKER_99  &
   adams_id = 99  &
   location = 0.1, 0.4, 0.35  &
   orientation = 53.1301023542d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master  &
   adams_id = 86  &
   location = 0.1, 0.4, 0.35  &
   orientation = 171.4692343901d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cm  &
   adams_id = 87  &
   location = 0.1, 0.3933246796, 0.3054978641  &
   orientation = -8.5307656099d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_2  &
   adams_id = 88  &
   location = 0.1, 0.4494468176, 0.3425829774  &
   orientation = 81.4692343901d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_6  &
   adams_id = 89  &
   location = 0.1, 0.4, 0.35  &
   orientation = 171.4692343901d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_11  &
   adams_id = 90  &
   location = 0.1, 0.4, 0.35  &
   orientation = 171.4692343901d, 0.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl  &
   material_type = .acmTeleF.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.CYLINDER  &
   adams_id = 25  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master  &
   angle_extent = 360.0  &
   length = 0.15  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.CYLINDER_2  &
   adams_id = 26  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------- PART_Cyl_liftCyl_L_pis ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_L_pis  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_Cyl_liftCyl_L_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.MARKER_103  &
   adams_id = 103  &
   location = 0.1, 0.37, 0.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave  &
   adams_id = 91  &
   location = 0.1, 0.37, 0.15  &
   orientation = -8.5307656099d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cm  &
   adams_id = 92  &
   location = 0.1, 0.3762096004, 0.1913973357  &
   orientation = -8.5307656099d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_4  &
   adams_id = 93  &
   location = 0.1, 0.3205531824, 0.1574170226  &
   orientation = -98.5307656099d, 0.0d, -180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_5  &
   adams_id = 94  &
   location = 0.1, 0.37, 0.15  &
   orientation = 171.4692343901d, 0.0d, 180.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_12  &
   adams_id = 95  &
   location = 0.1, 0.4, 0.35  &
   orientation = 171.4692343901d, 0.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_L_pis  &
   material_type = .acmTeleF.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.CYLINDER_3  &
   adams_id = 27  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave  &
   angle_extent = 360.0  &
   length = 0.2  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.CYLINDER_4  &
   adams_id = 28  &
   center_marker = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_Cyl_liftCyl_L_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------- PART_Cyl_slide_cyl -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_Cyl_slide_cyl  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_Cyl_slide_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.MARKER_148  &
   adams_id = 148  &
   location = -5.0E-002, 0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master  &
   adams_id = 138  &
   location = -5.0E-002, 0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cm  &
   adams_id = 139  &
   location = -5.0E-002, 6.5263157895E-002, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_2  &
   adams_id = 140  &
   location = -5.0E-002, 0.2, 0.28  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_6  &
   adams_id = 141  &
   location = -5.0E-002, 0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_11  &
   adams_id = 142  &
   location = -5.0E-002, 0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_Cyl_slide_cyl  &
   material_type = .acmTeleF.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_cyl.CYLINDER  &
   adams_id = 41  &
   center_marker = .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master  &
   angle_extent = 360.0  &
   length = 0.32  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_cyl.CYLINDER_2  &
   adams_id = 42  &
   center_marker = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_Cyl_slide_cyl  &
   color = SILVER  &
   name_visibility = off
!
!----------------------------- PART_Cyl_slide_pis -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
part create rigid_body name_and_position  &
   part_name = .acmTeleF.PART_Cyl_slide_pis  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.PART_Cyl_slide_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.MARKER_150  &
   adams_id = 150  &
   location = -5.0E-002, -0.2, 0.25  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave  &
   adams_id = 143  &
   location = -5.0E-002, -0.2, 0.25  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cm  &
   adams_id = 144  &
   location = -5.0E-002, -8.1451612903E-002, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_4  &
   adams_id = 145  &
   location = -5.0E-002, -0.2, 0.22  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_5  &
   adams_id = 146  &
   location = -5.0E-002, -0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_12  &
   adams_id = 147  &
   location = -5.0E-002, 0.2, 0.25  &
   orientation = 90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .acmTeleF.PART_Cyl_slide_pis  &
   material_type = .acmTeleF.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_pis.CYLINDER_3  &
   adams_id = 43  &
   center_marker = .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave  &
   angle_extent = 360.0  &
   length = 0.35  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_pis.CYLINDER_4  &
   adams_id = 44  &
   center_marker = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .acmTeleF.PART_Cyl_slide_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_liftCyl_R  &
   adams_id = 12  &
   i_marker_name = .acmTeleF.PART_to_cs.MARKER_96  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.MARKER_97
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_liftCyl_R  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .acmTeleF.JT_axle_to_acmR  &
   adams_id = 2  &
   i_marker_name = .acmTeleF.PART_acmR.MARKER_22  &
   j_marker_name = .acmTeleF.PART_axle.MARKER_23
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_acmR  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .acmTeleF.JT_axle_to_acmL  &
   adams_id = 3  &
   i_marker_name = .acmTeleF.PART_acmL.MARKER_24  &
   j_marker_name = .acmTeleF.PART_axle.MARKER_25
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_acmL  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .acmTeleF.JT_axle_to_piston  &
   adams_id = 4  &
   i_marker_name = .acmTeleF.PART_piston.MARKER_28  &
   j_marker_name = .acmTeleF.PART_axle.MARKER_29  &
   translational_ic = 0.0  &
   velocity_ic = 0.0
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_piston  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .acmTeleF.JT_Cyl_liftCyl_R_cyl_pis  &
   adams_id = 10  &
   i_marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_11  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_Cyl_liftCyl_R_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_acmL_to_linkL  &
   adams_id = 6  &
   i_marker_name = .acmTeleF.PART_acmL.MARKER_48  &
   j_marker_name = .acmTeleF.PART_linkL.MARKER_49
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_acmL_to_linkL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_piston_to_linkL  &
   adams_id = 7  &
   i_marker_name = .acmTeleF.PART_linkL.MARKER_50  &
   j_marker_name = .acmTeleF.PART_piston.MARKER_51
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_piston_to_linkL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_piston_to_linkR  &
   adams_id = 8  &
   i_marker_name = .acmTeleF.PART_piston.MARKER_52  &
   j_marker_name = .acmTeleF.PART_linkR.MARKER_53
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_piston_to_linkR  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_acmR_to_linkR  &
   adams_id = 9  &
   i_marker_name = .acmTeleF.PART_acmR.MARKER_58  &
   j_marker_name = .acmTeleF.PART_linkR.MARKER_59
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_acmR_to_linkR  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .acmTeleF.JT_Cyl_liftCyl_L_cyl_pis  &
   adams_id = 11  &
   i_marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_11  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_Cyl_liftCyl_L_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_liftCyl_L  &
   adams_id = 13  &
   i_marker_name = .acmTeleF.PART_to_cs.MARKER_98  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.MARKER_99
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_liftCyl_L  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_liftCyl_R  &
   adams_id = 14  &
   i_marker_name = .acmTeleF.PART_axle.MARKER_100  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.MARKER_101
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_liftCyl_R  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_liftCyl_L  &
   adams_id = 15  &
   i_marker_name = .acmTeleF.PART_axle.MARKER_102  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.MARKER_103
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_liftCyl_L  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_rodTL  &
   adams_id = 17  &
   i_marker_name = .acmTeleF.PART_to_cs.MARKER_118  &
   j_marker_name = .acmTeleF.PART_rod_TL.MARKER_119
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_rodTL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_rodTL  &
   adams_id = 18  &
   i_marker_name = .acmTeleF.PART_axle.MARKER_120  &
   j_marker_name = .acmTeleF.PART_rod_TL.MARKER_121
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_rodTL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_rodBL  &
   adams_id = 19  &
   i_marker_name = .acmTeleF.PART_rod_BL.MARKER_122  &
   j_marker_name = .acmTeleF.PART_to_cs.MARKER_123
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_rodBL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_rodBL  &
   adams_id = 20  &
   i_marker_name = .acmTeleF.PART_rod_BL.MARKER_124  &
   j_marker_name = .acmTeleF.PART_axle.MARKER_125
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_rodBL  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_rodTR  &
   adams_id = 21  &
   i_marker_name = .acmTeleF.PART_rod_TR.MARKER_126  &
   j_marker_name = .acmTeleF.PART_to_cs.MARKER_127
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_rodTR  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_rodTR  &
   adams_id = 22  &
   i_marker_name = .acmTeleF.PART_axle.MARKER_128  &
   j_marker_name = .acmTeleF.PART_rod_TR.MARKER_129
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_rodTR  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_rodBR  &
   adams_id = 23  &
   i_marker_name = .acmTeleF.PART_to_cs.MARKER_130  &
   j_marker_name = .acmTeleF.PART_rod_BR.MARKER_131
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_rodBR  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_rodBR  &
   adams_id = 24  &
   i_marker_name = .acmTeleF.PART_axle.MARKER_132  &
   j_marker_name = .acmTeleF.PART_rod_BR.MARKER_133
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_rodBR  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_cs_to_slideCyl  &
   adams_id = 26  &
   i_marker_name = .acmTeleF.PART_Cyl_slide_cyl.MARKER_148  &
   j_marker_name = .acmTeleF.PART_to_cs.MARKER_149
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_cs_to_slideCyl  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .acmTeleF.JT_Cyl_slide_cyl_pis  &
   adams_id = 25  &
   i_marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_11  &
   j_marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_Cyl_slide_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .acmTeleF.JT_axle_to_slideCyl  &
   adams_id = 27  &
   i_marker_name = .acmTeleF.PART_Cyl_slide_pis.MARKER_150  &
   j_marker_name = .acmTeleF.PART_axle.MARKER_151
!
constraint attributes  &
   constraint_name = .acmTeleF.JT_axle_to_slideCyl  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .acmTeleF.FORCE_cyl  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .acmTeleF.PART_piston.MARKER_37  &
   j_marker_name = .acmTeleF.PART_axle.MARKER_38  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .acmTeleF.F_Cyl_liftCyl_R_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_5  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .acmTeleF.F_Cyl_liftCyl_L_force  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_5  &
   j_marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .acmTeleF.F_Cyl_slide_force  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_5  &
   j_marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .acmTeleF.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=2.0 number_of_steps=200 model_name=.acmTeleF initial_static=no"
!
simulation script create  &
   sim_script_name = .acmTeleF.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .acmTeleF.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .acmTeleF.Last_Sim_4  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry create shape force  &
   force_name = .acmTeleF.SFORCE_1_force_graphic_1  &
   adams_id = 15  &
   force_element_name = .acmTeleF.FORCE_cyl  &
   applied_at_marker_name = .acmTeleF.PART_piston.MARKER_37
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
   variable_name = .acmTeleF.DV_camber  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0
!
variable create  &
   variable_name = .acmTeleF.DV_caster  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .acmTeleF.DV_cylX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .acmTeleF.DV_cylZ  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -5.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_cyl_maxL  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.45
!
variable create  &
   variable_name = .acmTeleF.DV_cyl_minL  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .acmTeleF.DV_cyl_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.75E-002
!
variable create  &
   variable_name = .acmTeleF.DV_cyl_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_cyl_iniL  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .acmTeleF.DV_dst_y_axle  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.4
!
variable create  &
   variable_name = .acmTeleF.DV_dst_y_wheels  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .acmTeleF.DV_dst_x_acm  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.18
!
variable create  &
   variable_name = .acmTeleF.DV_dst_y_acm  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_dst_z_acm  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -5.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_liftCyls_top_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0, -0.4, 0.35
!
variable create  &
   variable_name = .acmTeleF.DV_liftCyl_bottom_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0, -0.37, 0.15
!
variable create  &
   variable_name = .acmTeleF.DV_topRods_cs_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.5, -0.25, 0.15
!
variable create  &
   variable_name = .acmTeleF.DV_bottomRods_cs_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.5, -0.25, -0.15
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_R_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_R_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_R_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_R_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_R_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_L_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_L_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_L_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_L_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_liftCyl_L_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_bottomRods_axle_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.1, -0.25, -0.15
!
variable create  &
   variable_name = .acmTeleF.DV_topRods_axle_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.1, -0.25, 0.15
!
variable create  &
   variable_name = .acmTeleF.DV_slideCyl_cylmount_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.15, 0.2, 0.25
!
variable create  &
   variable_name = .acmTeleF.DV_slideCyl_pismount_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.15, -0.2, 0.25
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_slide_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.35
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_slide_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_slide_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.45
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_slide_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .acmTeleF.DV_Cyl_slide_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_steering_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_steering_P  &
   function = "0.0"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_steering_V  &
   function = "VY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41)"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_R_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_R_P  &
   function = "DZ( .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_R_V  &
   function = "VZ( .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_L_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_L_P  &
   function = "DZ( .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master)"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_liftCyl_L_V  &
   function = "VZ( .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master)"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_slide_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_slide_P  &
   function = "DZ( .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master)"
!
data_element modify variable  &
   variable_name = .acmTeleF.SV_Cyl_slide_V  &
   function = "VZ( .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .acmTeleF.FORCE_cyl  &
   function = "IF( (.acmTeleF.DV_cyl_maxL - .acmTeleF.DV_cyl_minL) - DY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41) : -((.acmTeleF.DV_cyl_maxL - .acmTeleF.DV_cyl_minL) - DY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41))*50000 - VY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41)*90000 , 0 , 0 ) +",  &
              "IF( (.acmTeleF.DV_cyl_maxL - .acmTeleF.DV_cyl_minL) + DY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41) :  ((.acmTeleF.DV_cyl_maxL - .acmTeleF.DV_cyl_minL) + DY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41))*50000 - VY( .acmTeleF.PART_piston.MARKER_42, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41, .acmTeleF.PART_axle.MARKER_41)*90000 , 0 , 0 ) +",  &
              "VARVAL( .acmTeleF.SV_steering_F)"
!
force modify direct single_component_force  &
   single_component_force_name = .acmTeleF.F_Cyl_liftCyl_R_force  &
   function = "VARVAL( .acmTeleF.SV_Cyl_liftCyl_R_F) + ",  &
              "BISTOP( ",  &
              "DZ( .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master) , ",  &
              "VZ( .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master) , ",  &
              ".acmTeleF.DV_Cyl_liftCyl_R_min_length , .acmTeleF.DV_Cyl_liftCyl_R_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .acmTeleF.F_Cyl_liftCyl_L_force  &
   function = "VARVAL( .acmTeleF.SV_Cyl_liftCyl_L_F) + ",  &
              "BISTOP( ",  &
              "DZ( .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master) , ",  &
              "VZ( .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master) , ",  &
              ".acmTeleF.DV_Cyl_liftCyl_L_min_length , .acmTeleF.DV_Cyl_liftCyl_L_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .acmTeleF.F_Cyl_slide_force  &
   function = "VARVAL( .acmTeleF.SV_Cyl_slide_F) + ",  &
              "BISTOP( ",  &
              "DZ( .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master) , ",  &
              "VZ( .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master) , ",  &
              ".acmTeleF.DV_Cyl_slide_min_length , .acmTeleF.DV_Cyl_slide_max_length , 50e6 , 1.0 , 20e6 , 0.01 ) + 10000"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .acmTeleF.ground.MKR_slaveR  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.Mkr_master))
!
marker modify  &
   marker_name = .acmTeleF.ground.MKR_slaveL  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_13))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.Mkr_master))
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0.0, -.acmTeleF.DV_dst_y_axle * 0.5, 0.0}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 180.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.MKR_slaveR))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmR.MARKER_12))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_13))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_cylX, -(.acmTeleF.DV_cyl_minL - 2 * .acmTeleF.DV_cyl_rc), .acmTeleF.DV_cylZ}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_axle.CYLINDER_10  &
   length = ((.acmTeleF.DV_cyl_minL - 2 * .acmTeleF.DV_cyl_rc) * 2)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_29  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_axle.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_axle.MARKER_26))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_38  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_axle.MARKER_26))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_cylX, 0, .acmTeleF.DV_cylZ}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 0.0, 0.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_64  &
   location =   &
      (LOC_RELATIVE_TO({.acmTeleF.DV_dst_y_axle * 5.0E-002, -.acmTeleF.DV_dst_y_axle * 0.5, -.acmTeleF.DV_dst_y_axle * 0.1}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({270.0, 90.0, 90.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape block  &
   block_name = .acmTeleF.PART_axle.BOX_24  &
   diag_corner_coords =   &
      (.acmTeleF.DV_dst_y_axle * 0.2),  &
      (.acmTeleF.DV_dst_y_axle),  &
      (.acmTeleF.DV_dst_y_axle * 0.1)
!
part modify rigid_body mass_properties  &
   part_name = .acmTeleF.PART_axle  &
   density = (781.0(kg/meter**3))
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_81  &
   location =   &
      (LOC_MIRROR(LOC_RELATIVE_TO(.acmTeleF.DV_liftCyl_bottom_xyz, .acmTeleF.ground.Mkr_master), .acmTeleF.ground.Mkr_master, "xz"))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_liftCyl_bottom_xyz, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_100  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_82))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_82))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_102  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_81))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_81))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_106  &
   location =   &
      (LOC_MIRROR(LOC_RELATIVE_TO(.acmTeleF.DV_topRods_axle_xyz, .acmTeleF.ground.Mkr_master), .acmTeleF.ground.Mkr_master, "xz"))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_107  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_topRods_axle_xyz, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_108  &
   location =   &
      (LOC_MIRROR(LOC_RELATIVE_TO(.acmTeleF.DV_bottomRods_axle_xyz, .acmTeleF.ground.Mkr_master), .acmTeleF.ground.Mkr_master, "xz"))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_109  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_bottomRods_axle_xyz, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_120  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_106))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_106))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_125  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_108))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_108))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_128  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_107))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_107))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_132  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_109))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_109))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_axle.MARKER_151  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   relative_to = .acmTeleF.PART_axle
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_65  &
   location =   &
      (LOC_MIRROR(LOC_RELATIVE_TO(.acmTeleF.DV_liftCyls_top_xyz, .acmTeleF.ground.Mkr_master), .acmTeleF.ground.Mkr_master, "xz"))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_65, .acmTeleF.PART_to_cs.MARKER_66, .acmTeleF.PART_to_cs.MARKER_69, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_66  &
   location =   &
      (LOC_RELATIVE_TO({-0.5, 0, 0}, .acmTeleF.PART_to_cs.MARKER_79))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_65, .acmTeleF.PART_to_cs.MARKER_66, .acmTeleF.PART_to_cs.MARKER_69, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_69  &
   location =   &
      (LOC_MIRROR(LOC_RELATIVE_TO(.acmTeleF.DV_topRods_cs_xyz, .acmTeleF.ground.Mkr_master), .acmTeleF.ground.Mkr_master, "xz"))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_69, .acmTeleF.PART_to_cs.MARKER_70, .acmTeleF.PART_to_cs.MARKER_65, "y_yx"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_70  &
   location =   &
      (LOC_MIRROR(LOC_RELATIVE_TO(.acmTeleF.DV_bottomRods_cs_xyz, .acmTeleF.ground.Mkr_master), .acmTeleF.ground.Mkr_master, "xz"))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_69, .acmTeleF.PART_to_cs.MARKER_70, .acmTeleF.PART_to_cs.MARKER_65, "y_yx"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_71  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_69))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_65, .acmTeleF.PART_to_cs.MARKER_66, .acmTeleF.PART_to_cs.MARKER_69, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_72  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_66))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_66))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_73  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_liftCyls_top_xyz, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_73, .acmTeleF.PART_to_cs.MARKER_74, .acmTeleF.PART_to_cs.MARKER_76, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_74  &
   location =   &
      (LOC_RELATIVE_TO({-0.5, 0, 0}, .acmTeleF.PART_to_cs.MARKER_80))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_73, .acmTeleF.PART_to_cs.MARKER_74, .acmTeleF.PART_to_cs.MARKER_76, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_75  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_74))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_73, .acmTeleF.PART_to_cs.MARKER_74, .acmTeleF.PART_to_cs.MARKER_76, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_76  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_topRods_cs_xyz, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_73, .acmTeleF.PART_to_cs.MARKER_74, .acmTeleF.PART_to_cs.MARKER_76, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_77  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_76))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_77, .acmTeleF.PART_to_cs.MARKER_78, .acmTeleF.PART_to_cs.MARKER_73, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_78  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_bottomRods_cs_xyz, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_IN_PLANE(.acmTeleF.PART_to_cs.MARKER_77, .acmTeleF.PART_to_cs.MARKER_78, .acmTeleF.PART_to_cs.MARKER_73, "x_xy"))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_79  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_65))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_73))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_96  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_73))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_73))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_98  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_65))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_65))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_118  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_69))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_69))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_123  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_70))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_70))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_127  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_76))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_76))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_130  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_78))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_78))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_to_cs.MARKER_149  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO(ORI_ALL_AXES({{0, 0, 0}, {-TAN(.acmTeleF.DV_caster)d, TAN(.acmTeleF.DV_camber)d, 1}, {-1, 0, 0}}, "zx"), .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmR.CYLINDER_5  &
   length = (.acmTeleF.DV_dst_y_axle * 0.11)  &
   radius = (.acmTeleF.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmTeleF.PART_acmR.MARKER_12))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmR.CYLINDER_7  &
   length = (.acmTeleF.DV_dst_y_axle * 0.11)  &
   radius = (.acmTeleF.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_acmR.MARKER_16, .acmTeleF.PART_acmR.MARKER_17, "x"))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_dst_x_acm, .acmTeleF.DV_dst_y_acm, .acmTeleF.DV_dst_z_acm}, .acmTeleF.ground.MKR_slaveR))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_acmR.MARKER_16, .acmTeleF.PART_acmR.MARKER_17, "x"))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MARKER_22  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.MKR_slaveR))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmR.MARKER_12))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MARKER_58  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmR.MARKER_17))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmR.MKR_wheel_FR  &
   location =   &
      (LOC_RELATIVE_TO({0, -.acmTeleF.DV_dst_y_wheels / 2, 0}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_acmR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmR.CYLINDER_20  &
   length = ((.acmTeleF.DV_dst_y_wheels - .acmTeleF.DV_dst_y_axle) / 2)
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .acmTeleF.DV_dst_y_axle}, .acmTeleF.PART_axle.MARKER_3))  &
   orientation =   &
      (ORI_RELATIVE_TO(ORI_ALL_AXES({{0, 0, 0}, {-TAN(.acmTeleF.DV_caster)d, -TAN(.acmTeleF.DV_camber)d, 1}, {-1, 0, 0}}, "zx"), .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmL.CYLINDER_6  &
   length = (.acmTeleF.DV_dst_y_axle * 0.11)  &
   radius = (.acmTeleF.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MARKER_15  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_13))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmTeleF.PART_acmL.MARKER_13))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmL.CYLINDER_8  &
   length = (.acmTeleF.DV_dst_y_axle * 0.11)  &
   radius = (.acmTeleF.DV_dst_y_axle * 6.0E-002)
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_acmL.MARKER_20, .acmTeleF.PART_acmL.MARKER_21, "x"))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_dst_x_acm, -.acmTeleF.DV_dst_y_acm, .acmTeleF.DV_dst_z_acm}, .acmTeleF.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_acmL.MARKER_20, .acmTeleF.PART_acmL.MARKER_21, "x"))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.ground.MKR_slaveL))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_13))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_21))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_acmL.MKR_wheel_FL  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_dst_y_wheels / 2, 0}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 90.0, 90.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_acmL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_acmL.CYLINDER_22  &
   length = ((.acmTeleF.DV_dst_y_wheels - .acmTeleF.DV_dst_y_axle) / 2)
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_cylX, -(.acmTeleF.DV_cyl_maxL + .acmTeleF.DV_cyl_minL) / 2, .acmTeleF.DV_cylZ}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 90.0, 90.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_piston.CYLINDER_14  &
   length = (.acmTeleF.DV_cyl_maxL + .acmTeleF.DV_cyl_minL)  &
   radius = (.acmTeleF.DV_cyl_rp)
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_axle.MARKER_26))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_27))  &
   orientation =   &
      (ORI_RELATIVE_TO({90.0, 90.0, 0.0}, .acmTeleF.PART_piston.MARKER_27))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_cylX, 0, .acmTeleF.DV_cylZ}, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({180.0, 0.0, 0.0}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({-.acmTeleF.DV_cylX, (.acmTeleF.DV_cyl_maxL + .acmTeleF.DV_cyl_minL) / 2, .acmTeleF.DV_cylZ}, .acmTeleF.ground.Mkr_master))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_43))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_piston.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_27))  &
   relative_to = .acmTeleF.PART_piston
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
constraint modify joint cylindrical  &
   joint_name = .acmTeleF.JT_axle_to_piston  &
   translational_ic = ((.acmTeleF.DV_cyl_maxL + .acmTeleF.DV_cyl_minL) / 2 - .acmTeleF.DV_cyl_iniL)
!
geometry modify shape force  &
   force_name = .acmTeleF.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.acmTeleF.FORCE_cyl.i)
!
marker modify  &
   marker_name = .acmTeleF.PART_linkL.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_21))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_acmL.MARKER_21, .acmTeleF.PART_piston.MARKER_43, "z"))  &
   relative_to = .acmTeleF.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkL.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_43))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_piston.MARKER_43, .acmTeleF.PART_acmL.MARKER_21, "z"))  &
   relative_to = .acmTeleF.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkL.MARKER_49  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmL.MARKER_21))  &
   relative_to = .acmTeleF.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkL.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_43))  &
   relative_to = .acmTeleF.PART_linkL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkR.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmR.MARKER_17))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_acmR.MARKER_17, .acmTeleF.PART_piston.MARKER_27, "z"))  &
   relative_to = .acmTeleF.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkR.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_27))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_piston.MARKER_27, .acmTeleF.PART_acmR.MARKER_17, "z"))  &
   relative_to = .acmTeleF.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkR.MARKER_53  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_piston.MARKER_27))  &
   relative_to = .acmTeleF.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_linkR.MARKER_59  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_acmR.MARKER_17))  &
   relative_to = .acmTeleF.PART_linkR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
variable modify  &
   variable_name = .acmTeleF.DV_liftCyls_top_xyz  &
   real_value = ({0, -0.4, 0.35})
!
variable modify  &
   variable_name = .acmTeleF.DV_liftCyl_bottom_xyz  &
   real_value = ({0, -0.37, 0.15})
!
variable modify  &
   variable_name = .acmTeleF.DV_topRods_cs_xyz  &
   real_value = ({-0.5, -0.25, 0.15})
!
variable modify  &
   variable_name = .acmTeleF.DV_bottomRods_cs_xyz  &
   real_value = ({-0.5, -0.25, -0.15})
!
material modify  &
   material_name = .acmTeleF.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_73))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_to_cs.MARKER_73, .acmTeleF.PART_axle.MARKER_82, "z"))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_Cyl_liftCyl_R_rc, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.CYLINDER  &
   length = (.acmTeleF.DV_Cyl_liftCyl_R_min_length - .acmTeleF.DV_Cyl_liftCyl_R_rc)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_R_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.CYLINDER_2  &
   length = (.acmTeleF.DV_Cyl_liftCyl_R_rc * 2)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_R_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_cyl.MARKER_97  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_73))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_73))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_82))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_Cyl_liftCyl_R_rc, 0}, .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_R_pis.MKR_liftCyl_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_R_cyl.MKR_liftCyl_R_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.CYLINDER_3  &
   length = (.acmTeleF.DV_Cyl_liftCyl_R_min_length)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_R_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.CYLINDER_4  &
   length = (.acmTeleF.DV_Cyl_liftCyl_R_rc * 2)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_R_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_R_pis.MARKER_101  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_82))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_82))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
material modify  &
   material_name = .acmTeleF.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_65))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_to_cs.MARKER_65, .acmTeleF.PART_axle.MARKER_81, "z"))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_Cyl_liftCyl_L_rc, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.CYLINDER  &
   length = (.acmTeleF.DV_Cyl_liftCyl_L_min_length - .acmTeleF.DV_Cyl_liftCyl_L_rc)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_L_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.CYLINDER_2  &
   length = (.acmTeleF.DV_Cyl_liftCyl_L_rc * 2)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_L_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_cyl.MARKER_99  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_65))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_65))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_81))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_Cyl_liftCyl_L_rc, 0}, .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_L_pis.MKR_liftCyl_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_liftCyl_L_cyl.MKR_liftCyl_L_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.CYLINDER_3  &
   length = (.acmTeleF.DV_Cyl_liftCyl_L_min_length)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_L_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.CYLINDER_4  &
   length = (.acmTeleF.DV_Cyl_liftCyl_L_rc * 2)  &
   radius = (.acmTeleF.DV_Cyl_liftCyl_L_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_liftCyl_L_pis.MARKER_103  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_81))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_81))  &
   relative_to = .acmTeleF.PART_Cyl_liftCyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
variable modify  &
   variable_name = .acmTeleF.DV_bottomRods_axle_xyz  &
   real_value = ({-0.1, -0.25, -0.15})
!
variable modify  &
   variable_name = .acmTeleF.DV_topRods_axle_xyz  &
   real_value = ({-0.1, -0.25, 0.15})
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_110  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_78))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_to_cs.MARKER_78, .acmTeleF.PART_axle.MARKER_109, "z"))  &
   relative_to = .acmTeleF.PART_rod_BR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BR.CYLINDER_33  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_111  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_109))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_axle.MARKER_109, .acmTeleF.PART_to_cs.MARKER_78, "z"))  &
   relative_to = .acmTeleF.PART_rod_BR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BR.CYLINDER_34  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_131  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_78))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_78))  &
   relative_to = .acmTeleF.PART_rod_BR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BR.MARKER_133  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_109))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_109))  &
   relative_to = .acmTeleF.PART_rod_BR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_112  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_76))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_to_cs.MARKER_76, .acmTeleF.PART_axle.MARKER_107, "z"))  &
   relative_to = .acmTeleF.PART_rod_TR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TR.CYLINDER_35  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_113  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_107))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_axle.MARKER_107, .acmTeleF.PART_to_cs.MARKER_76, "z"))  &
   relative_to = .acmTeleF.PART_rod_TR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TR.CYLINDER_36  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_126  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_76))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_76))  &
   relative_to = .acmTeleF.PART_rod_TR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TR.MARKER_129  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_107))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_107))  &
   relative_to = .acmTeleF.PART_rod_TR
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_114  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_70))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_to_cs.MARKER_70, .acmTeleF.PART_axle.MARKER_108, "z"))  &
   relative_to = .acmTeleF.PART_rod_BL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BL.CYLINDER_37  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_115  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_108))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_axle.MARKER_108, .acmTeleF.PART_to_cs.MARKER_70, "z"))  &
   relative_to = .acmTeleF.PART_rod_BL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_BL.CYLINDER_38  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_122  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_70))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_70))  &
   relative_to = .acmTeleF.PART_rod_BL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_BL.MARKER_124  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_108))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_108))  &
   relative_to = .acmTeleF.PART_rod_BL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_116  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_69))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_to_cs.MARKER_69, .acmTeleF.PART_axle.MARKER_106, "z"))  &
   relative_to = .acmTeleF.PART_rod_TL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TL.CYLINDER_39  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_117  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_106))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_axle.MARKER_106, .acmTeleF.PART_to_cs.MARKER_69, "z"))  &
   relative_to = .acmTeleF.PART_rod_TL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_rod_TL.CYLINDER_40  &
   length = (0.35meter)  &
   radius = (.acmTeleF.DV_cyl_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_119  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_69))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_to_cs.MARKER_69))  &
   relative_to = .acmTeleF.PART_rod_TL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_rod_TL.MARKER_121  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_106))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_axle.MARKER_106))  &
   relative_to = .acmTeleF.PART_rod_TL
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
material modify  &
   material_name = .acmTeleF.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
variable modify  &
   variable_name = .acmTeleF.DV_slideCyl_cylmount_xyz  &
   real_value = ({-0.15, 0.2, 0.25})
!
variable modify  &
   variable_name = .acmTeleF.DV_slideCyl_pismount_xyz  &
   real_value = ({-0.15, -0.2, 0.25})
!
material modify  &
   material_name = .acmTeleF.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_slideCyl_cylmount_xyz, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_ALONG_AXIS(.acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave, "z"))  &
   relative_to = .acmTeleF.PART_Cyl_slide_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_Cyl_slide_rc, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_cyl.CYLINDER  &
   length = (.acmTeleF.DV_Cyl_slide_min_length - .acmTeleF.DV_Cyl_slide_rc)  &
   radius = (.acmTeleF.DV_Cyl_slide_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_cyl.CYLINDER_2  &
   length = (.acmTeleF.DV_Cyl_slide_rc * 2)  &
   radius = (.acmTeleF.DV_Cyl_slide_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_cyl.MARKER_148  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO(.acmTeleF.DV_slideCyl_pismount_xyz, .acmTeleF.ground.Mkr_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .acmTeleF.DV_Cyl_slide_rc, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   relative_to = .acmTeleF.PART_Cyl_slide_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_cyl.MKR_slide_cyl_master))  &
   relative_to = .acmTeleF.PART_Cyl_slide_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_pis.CYLINDER_3  &
   length = (.acmTeleF.DV_Cyl_slide_min_length)  &
   radius = (.acmTeleF.DV_Cyl_slide_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .acmTeleF.PART_Cyl_slide_pis.CYLINDER_4  &
   length = (.acmTeleF.DV_Cyl_slide_rc * 2)  &
   radius = (.acmTeleF.DV_Cyl_slide_rc)
!
marker modify  &
   marker_name = .acmTeleF.PART_Cyl_slide_pis.MARKER_150  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .acmTeleF.PART_Cyl_slide_pis.MKR_slide_pis_slave))  &
   relative_to = .acmTeleF.PART_Cyl_slide_pis
!
defaults coordinate_system  &
   default_coordinate_system = .acmTeleF.ground
!
model display  &
   model_name = acmTeleF
