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
   model_name = SSLVertical
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_RArm_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_RArm_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_RArm_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_LArm_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_LArm_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_LArm_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_RArm_bucket_F  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_RArm_bucket_P  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_RArm_bucket_V  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_LArm_bucket_F  &
   adams_id = 11  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_LArm_bucket_P  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .SSLVertical.SV_Cyl_LArm_bucket_V  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .SSLVertical.steel  &
   adams_id = 5  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLVertical.steel_2  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLVertical.steel_3  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLVertical.steel_4  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .SSLVertical.steel_5  &
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
   default_coordinate_system = .SSLVertical.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_Master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p2R  &
   adams_id = 2  &
   location = 0.0, -0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p2L  &
   adams_id = 3  &
   location = 0.0, 0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p1R  &
   adams_id = 4  &
   location = 0.305, -0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p1L  &
   adams_id = 5  &
   location = 0.305, 0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p3R  &
   adams_id = 6  &
   location = -0.9038814982, -0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p3L  &
   adams_id = 7  &
   location = -0.9038814982, 0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p6R  &
   adams_id = 8  &
   location = -0.1434451887, -0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p6L  &
   adams_id = 9  &
   location = -0.1434451887, 0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p4R  &
   adams_id = 10  &
   location = -1.2542104418, -0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p4L  &
   adams_id = 11  &
   location = -1.2542104418, 0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p5R  &
   adams_id = 12  &
   location = -1.2516859612, -0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p5L  &
   adams_id = 13  &
   location = -1.2516859612, 0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p7R  &
   adams_id = 14  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p7L  &
   adams_id = 15  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p8R  &
   adams_id = 16  &
   location = 1.239571648, -0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p8L  &
   adams_id = 17  &
   location = 1.239571648, 0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p9R  &
   adams_id = 101  &
   location = 1.373571648, -0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.ground.Mkr_p9L  &
   adams_id = 102  &
   location = 1.373571648, 0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.ground  &
   material_type = .SSLVertical.steel
!
part attributes  &
   part_name = .SSLVertical.ground  &
   name_visibility = off
!
!---------------------------------- Part_Arm ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_Arm  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_Arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_18  &
   adams_id = 18  &
   location = -1.2516859612, -0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_19  &
   adams_id = 19  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.cm  &
   adams_id = 91  &
   location = -8.7747870689E-002, 0.0, -0.1948661468  &
   orientation = 1.33429624E-007d, -84.4277189935d, 1.3147816008E-007d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_20  &
   adams_id = 20  &
   location = -1.2516859612, -0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_21  &
   adams_id = 21  &
   location = -1.2542104418, -0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_30  &
   adams_id = 30  &
   location = -1.2542104418, -0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_31  &
   adams_id = 31  &
   location = -0.9038814982, -0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_24  &
   adams_id = 24  &
   location = -1.2516859612, 0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_25  &
   adams_id = 25  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_32  &
   adams_id = 32  &
   location = -1.2542104418, 0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_33  &
   adams_id = 33  &
   location = -0.9038814982, 0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_28  &
   adams_id = 28  &
   location = -1.2542104418, 0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_29  &
   adams_id = 29  &
   location = -1.2516859612, 0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_70  &
   adams_id = 70  &
   location = -1.2516859612, 0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_71  &
   adams_id = 71  &
   location = -1.2516859612, -0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_74  &
   adams_id = 74  &
   location = -1.2542104418, -0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_76  &
   adams_id = 76  &
   location = -1.2542104418, 0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_78  &
   adams_id = 78  &
   location = -0.9038814982, -0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_80  &
   adams_id = 80  &
   location = -0.9038814982, 0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_97  &
   adams_id = 97  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_98  &
   adams_id = 98  &
   location = 1.239571648, -0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_99  &
   adams_id = 99  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_100  &
   adams_id = 100  &
   location = 1.239571648, 0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_127  &
   adams_id = 127  &
   location = 1.239571648, -0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_129  &
   adams_id = 129  &
   location = 1.239571648, 0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_136  &
   adams_id = 136  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_Arm.MARKER_138  &
   adams_id = 138  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_Arm  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_1  &
   i_marker = .SSLVertical.Part_Arm.MARKER_18  &
   j_marker = .SSLVertical.Part_Arm.MARKER_19  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_2  &
   i_marker = .SSLVertical.Part_Arm.MARKER_20  &
   j_marker = .SSLVertical.Part_Arm.MARKER_21  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_6  &
   i_marker = .SSLVertical.Part_Arm.MARKER_30  &
   j_marker = .SSLVertical.Part_Arm.MARKER_31  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_4  &
   i_marker = .SSLVertical.Part_Arm.MARKER_24  &
   j_marker = .SSLVertical.Part_Arm.MARKER_25  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_61  &
   i_marker = .SSLVertical.Part_Arm.MARKER_28  &
   j_marker = .SSLVertical.Part_Arm.MARKER_29  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_6_2  &
   i_marker = .SSLVertical.Part_Arm.MARKER_32  &
   j_marker = .SSLVertical.Part_Arm.MARKER_33  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_14  &
   i_marker = .SSLVertical.Part_Arm.MARKER_97  &
   j_marker = .SSLVertical.Part_Arm.MARKER_98  &
   width = 0.23  &
   depth = 0.11
!
geometry create shape link  &
   link_name = .SSLVertical.Part_Arm.LINK_14_2  &
   i_marker = .SSLVertical.Part_Arm.MARKER_99  &
   j_marker = .SSLVertical.Part_Arm.MARKER_100  &
   width = 0.23  &
   depth = 0.11
!
part attributes  &
   part_name = .SSLVertical.Part_Arm  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------------- Part_RLink1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_RLink1  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_RLink1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_34  &
   adams_id = 34  &
   location = -1.2542104418, -0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_35  &
   adams_id = 35  &
   location = 0.0, -0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink1.cm  &
   adams_id = 92  &
   location = -0.6271052209, -0.665, -0.1942454424  &
   orientation = -1.5968449396E-008d, 72.7896661586d, 89.9999998848d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_73  &
   adams_id = 73  &
   location = -1.2542104418, -0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_82  &
   adams_id = 82  &
   location = 0.0, -0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_RLink1  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLVertical.Part_RLink1.LINK_7  &
   i_marker = .SSLVertical.Part_RLink1.MARKER_34  &
   j_marker = .SSLVertical.Part_RLink1.MARKER_35  &
   width = 0.1313  &
   depth = 6.565E-002
!
part attributes  &
   part_name = .SSLVertical.Part_RLink1  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- Part_LLink1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_LLink1  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_LLink1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_36  &
   adams_id = 36  &
   location = -1.2542104418, 0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_37  &
   adams_id = 37  &
   location = 0.0, 0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink1.cm  &
   adams_id = 93  &
   location = -0.6271052209, 0.665, -0.1942454424  &
   orientation = -1.5968613686E-008d, 72.7896661586d, 89.9999998848d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_75  &
   adams_id = 75  &
   location = -1.2542104418, 0.665, -0.3884908849  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_84  &
   adams_id = 84  &
   location = 0.0, 0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_LLink1  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLVertical.Part_LLink1.LINK_8  &
   i_marker = .SSLVertical.Part_LLink1.MARKER_36  &
   j_marker = .SSLVertical.Part_LLink1.MARKER_37  &
   width = 0.1313  &
   depth = 6.565E-002
!
part attributes  &
   part_name = .SSLVertical.Part_LLink1  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- Part_RLink2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_RLink2  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_RLink2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_58  &
   adams_id = 58  &
   location = -1.2516859612, -0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_59  &
   adams_id = 59  &
   location = -0.1434451887, -0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink2.cm  &
   adams_id = 94  &
   location = -0.697565575, -0.665, 0.3993031481  &
   orientation = -2.1744931614E-008d, 52.3602186511d, 89.9999998784d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_67  &
   adams_id = 67  &
   location = -0.1434451887, -0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_72  &
   adams_id = 72  &
   location = -1.2516859612, -0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_RLink2  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLVertical.Part_RLink2.LINK_9  &
   i_marker = .SSLVertical.Part_RLink2.MARKER_58  &
   j_marker = .SSLVertical.Part_RLink2.MARKER_59  &
   width = 0.1399531014  &
   depth = 6.9976550677E-002
!
part attributes  &
   part_name = .SSLVertical.Part_RLink2  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------------- Part_LLink2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_LLink2  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_LLink2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_60  &
   adams_id = 60  &
   location = -1.2516859612, 0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_61  &
   adams_id = 61  &
   location = -0.1434451887, 0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink2.cm  &
   adams_id = 95  &
   location = -0.697565575, 0.665, 0.3993031481  &
   orientation = -2.1744931614E-008d, 52.3602186511d, 89.9999998784d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_65  &
   adams_id = 65  &
   location = -0.1434451887, 0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_69  &
   adams_id = 69  &
   location = -1.2516859612, 0.665, -2.8040229043E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_LLink2  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLVertical.Part_LLink2.LINK_10  &
   i_marker = .SSLVertical.Part_LLink2.MARKER_60  &
   j_marker = .SSLVertical.Part_LLink2.MARKER_61  &
   width = 0.1399531014  &
   depth = 6.9976550677E-002
!
part attributes  &
   part_name = .SSLVertical.Part_LLink2  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- Part_to_cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_to_cs  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_to_cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_62  &
   adams_id = 62  &
   location = -0.1434451887, -0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.cm  &
   adams_id = 96  &
   location = 5.385160375E-002, 0.0, 0.1908821751  &
   orientation = 0.0d, -20.1875504498d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_63  &
   adams_id = 63  &
   location = 0.0, -0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_64  &
   adams_id = 64  &
   location = 0.305, -0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_66  &
   adams_id = 66  &
   location = -0.1434451887, 0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_68  &
   adams_id = 68  &
   location = -0.1434451887, -0.665, 0.8266465253  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_81  &
   adams_id = 81  &
   location = 0.0, -0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_83  &
   adams_id = 83  &
   location = 0.0, 0.665, 0.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_85  &
   adams_id = 85  &
   location = 0.305, -0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_87  &
   adams_id = 87  &
   location = 0.305, 0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_to_cs  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.Part_to_cs.CYLINDER_11  &
   adams_id = 11  &
   center_marker = .SSLVertical.Part_to_cs.MARKER_62  &
   angle_extent = 360.0  &
   length = 1.33  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.Part_to_cs.CYLINDER_12  &
   adams_id = 12  &
   center_marker = .SSLVertical.Part_to_cs.MARKER_63  &
   angle_extent = 360.0  &
   length = 1.33  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.Part_to_cs.CYLINDER_13  &
   adams_id = 13  &
   center_marker = .SSLVertical.Part_to_cs.MARKER_64  &
   angle_extent = 360.0  &
   length = 1.33  &
   radius = 1.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.Part_to_cs  &
   color = RED  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_RArm_cyl ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_Cs_RArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master  &
   adams_id = 38  &
   location = 0.305, -0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cm  &
   adams_id = 39  &
   location = -0.1982134828, -0.665, -0.1955827276  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_2  &
   adams_id = 40  &
   location = 0.305, -0.635, -0.254  &
   orientation = 90.0d, 0.0d, 83.3782617205d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_6  &
   adams_id = 41  &
   location = 0.305, -0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_11  &
   adams_id = 42  &
   location = 0.305, -0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.MARKER_86  &
   adams_id = 86  &
   location = 0.305, -0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl  &
   material_type = .SSLVertical.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master  &
   angle_extent = 360.0  &
   length = 1.07  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_RArm_pis ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_Cs_RArm_pis  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_Cs_RArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave  &
   adams_id = 43  &
   location = -0.9038814982, -0.665, -0.1136628226  &
   orientation = 180.0d, 83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cm  &
   adams_id = 44  &
   location = -0.4294361582, -0.665, -0.168740446  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_4  &
   adams_id = 45  &
   location = -0.9038814982, -0.695, -0.1136628226  &
   orientation = -90.0d, 0.0d, -83.3782617205d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_5  &
   adams_id = 46  &
   location = -0.9038814982, -0.665, -0.1136628226  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_12  &
   adams_id = 47  &
   location = 0.305, -0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.MARKER_77  &
   adams_id = 77  &
   location = -0.9038814982, -0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_Cs_RArm_pis  &
   material_type = .SSLVertical.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave  &
   angle_extent = 360.0  &
   length = 1.1  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_Cs_RArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_LArm_cyl ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_Cs_LArm_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master  &
   adams_id = 48  &
   location = 0.305, 0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cm  &
   adams_id = 49  &
   location = -0.1982134828, 0.665, -0.1955827276  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_2  &
   adams_id = 50  &
   location = 0.305, 0.695, -0.254  &
   orientation = 90.0d, 0.0d, 83.3782617205d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_6  &
   adams_id = 51  &
   location = 0.305, 0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_11  &
   adams_id = 52  &
   location = 0.305, 0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.MARKER_88  &
   adams_id = 88  &
   location = 0.305, 0.665, -0.254  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl  &
   material_type = .SSLVertical.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.CYLINDER  &
   adams_id = 5  &
   center_marker = .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master  &
   angle_extent = 360.0  &
   length = 1.07  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.CYLINDER_2  &
   adams_id = 6  &
   center_marker = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------- PART_Cyl_Cs_LArm_pis ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_Cs_LArm_pis  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_Cs_LArm_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave  &
   adams_id = 53  &
   location = -0.9038814982, 0.665, -0.1136628226  &
   orientation = 180.0d, 83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cm  &
   adams_id = 54  &
   location = -0.4294361582, 0.665, -0.168740446  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_4  &
   adams_id = 55  &
   location = -0.9038814982, 0.635, -0.1136628226  &
   orientation = -90.0d, 0.0d, -83.3782617205d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_5  &
   adams_id = 56  &
   location = -0.9038814982, 0.665, -0.1136628226  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_12  &
   adams_id = 57  &
   location = 0.305, 0.665, -0.254  &
   orientation = 0.0d, -83.3782617205d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.MARKER_79  &
   adams_id = 79  &
   location = -0.9038814982, 0.665, -0.1136628226  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_Cs_LArm_pis  &
   material_type = .SSLVertical.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.CYLINDER_3  &
   adams_id = 7  &
   center_marker = .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave  &
   angle_extent = 360.0  &
   length = 1.1  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.CYLINDER_4  &
   adams_id = 8  &
   center_marker = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_Cs_LArm_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------------- Part_bucket ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.Part_bucket  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.Part_bucket
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_103  &
   adams_id = 103  &
   location = 1.239571648, -0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_104  &
   adams_id = 104  &
   location = 1.373571648, -0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_105  &
   adams_id = 105  &
   location = 1.239571648, 0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_106  &
   adams_id = 106  &
   location = 1.373571648, 0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.cm  &
   adams_id = 140  &
   location = 1.5257995157, 3.0305275203E-011, -0.7650613427  &
   orientation = 90.000000308d, 5.5198737544E-007d, 19.3475640008d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_128  &
   adams_id = 128  &
   location = 1.239571648, -0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_130  &
   adams_id = 130  &
   location = 1.239571648, 0.665, -0.9210970368  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_131  &
   adams_id = 131  &
   location = 1.373571648, -0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MARKER_134  &
   adams_id = 134  &
   location = 1.373571648, 0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.Part_bucket.MAR163  &
   adams_id = 163  &
   location = 1.539571648, 0.0, -1.0210970368  &
   orientation = 0.0d, 0.0d, 180.0d
!
marker attributes  &
   marker_name = .SSLVertical.Part_bucket.MAR163  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.Part_bucket  &
   material_type = .SSLVertical.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .SSLVertical.Part_bucket.LINK_15  &
   i_marker = .SSLVertical.Part_bucket.MARKER_105  &
   j_marker = .SSLVertical.Part_bucket.MARKER_106  &
   width = 2.68E-002  &
   depth = 1.34E-002
!
geometry create shape link  &
   link_name = .SSLVertical.Part_bucket.LINK_14  &
   i_marker = .SSLVertical.Part_bucket.MARKER_103  &
   j_marker = .SSLVertical.Part_bucket.MARKER_104  &
   width = 2.68E-002  &
   depth = 1.34E-002
!
geometry create shape shell  &
   shell_name = .SSLVertical.Part_bucket.SHL44  &
   reference_marker = .SSLVertical.Part_bucket.MAR163  &
   file_name = (eval(getenv("MDI_SD_LIBRARY_SITE")//"/Level3/Loader/SHL44.shl"))  &
   wireframe_only = no
!
part attributes  &
   part_name = .SSLVertical.Part_bucket  &
   color = SILVER  &
   name_visibility = off
!
!-------------------------- PART_Cyl_RArm_bucket_cyl --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_RArm_bucket_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.MARKER_135  &
   adams_id = 135  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master  &
   adams_id = 107  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cm  &
   adams_id = 108  &
   location = 1.1386669592, -0.665, -0.2544249029  &
   orientation = 0.0d, -28.3928180386d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_2  &
   adams_id = 109  &
   location = 1.039571648, -0.635, -7.1097036834E-002  &
   orientation = 90.0d, 0.0d, -151.6071819614d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_6  &
   adams_id = 110  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_11  &
   adams_id = 111  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl  &
   material_type = .SSLVertical.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.CYLINDER  &
   adams_id = 14  &
   center_marker =   &
                   .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master  &
   angle_extent = 360.0  &
   length = 0.47  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.CYLINDER_2  &
   adams_id = 15  &
   center_marker = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------- PART_Cyl_RArm_bucket_pis --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_RArm_bucket_pis  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_RArm_bucket_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.MARKER_132  &
   adams_id = 132  &
   location = 1.373571648, -0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave  &
   adams_id = 112  &
   location = 1.373571648, -0.665, -0.6890022286  &
   orientation = 0.0d, -28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cm  &
   adams_id = 113  &
   location = 1.2844127838, -0.665, -0.5240569439  &
   orientation = 0.0d, -28.3928180386d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_4  &
   adams_id = 114  &
   location = 1.373571648, -0.695, -0.6890022286  &
   orientation = -90.0d, 0.0d, 151.6071819614d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_5  &
   adams_id = 115  &
   location = 1.373571648, -0.665, -0.6890022286  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_12  &
   adams_id = 116  &
   location = 1.039571648, -0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_RArm_bucket_pis  &
   material_type = .SSLVertical.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.CYLINDER_3  &
   adams_id = 16  &
   center_marker =   &
                   .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave  &
   angle_extent = 360.0  &
   length = 0.5  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.CYLINDER_4  &
   adams_id = 17  &
   center_marker = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_RArm_bucket_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------- PART_Cyl_LArm_bucket_cyl --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_LArm_bucket_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master  &
   adams_id = 117  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cm  &
   adams_id = 118  &
   location = 1.1386669592, 0.665, -0.2544249029  &
   orientation = 0.0d, -28.3928180386d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_2  &
   adams_id = 119  &
   location = 1.039571648, 0.695, -7.1097036834E-002  &
   orientation = 90.0d, 0.0d, -151.6071819614d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_6  &
   adams_id = 120  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_11  &
   adams_id = 121  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.MARKER_137  &
   adams_id = 137  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -90.0d, 0.0d, -90.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl  &
   material_type = .SSLVertical.steel_5
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.CYLINDER  &
   adams_id = 18  &
   center_marker =   &
                   .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master  &
   angle_extent = 360.0  &
   length = 0.47  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.CYLINDER_2  &
   adams_id = 19  &
   center_marker = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------- PART_Cyl_LArm_bucket_pis --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
part create rigid_body name_and_position  &
   part_name = .SSLVertical.PART_Cyl_LArm_bucket_pis  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.PART_Cyl_LArm_bucket_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.MARKER_133  &
   adams_id = 133  &
   location = 1.373571648, 0.665, -0.6890022286  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave  &
   adams_id = 122  &
   location = 1.373571648, 0.665, -0.6890022286  &
   orientation = 0.0d, -28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cm  &
   adams_id = 123  &
   location = 1.2844127838, 0.665, -0.5240569439  &
   orientation = 0.0d, -28.3928180386d, 0.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_4  &
   adams_id = 124  &
   location = 1.373571648, 0.635, -0.6890022286  &
   orientation = -90.0d, 0.0d, 151.6071819614d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_5  &
   adams_id = 125  &
   location = 1.373571648, 0.665, -0.6890022286  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
marker create  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_12  &
   adams_id = 126  &
   location = 1.039571648, 0.665, -7.1097036834E-002  &
   orientation = -180.0d, 28.3928180386d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .SSLVertical.PART_Cyl_LArm_bucket_pis  &
   material_type = .SSLVertical.steel_5
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.CYLINDER_3  &
   adams_id = 20  &
   center_marker =   &
                   .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave  &
   angle_extent = 360.0  &
   length = 0.5  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.CYLINDER_4  &
   adams_id = 21  &
   center_marker = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 6.0E-002  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .SSLVertical.PART_Cyl_LArm_bucket_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cs_LLink2  &
   adams_id = 4  &
   i_marker_name = .SSLVertical.Part_LLink2.MARKER_65  &
   j_marker_name = .SSLVertical.Part_to_cs.MARKER_66
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cs_LLink2  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLVertical.JT_Cyl_Cs_RArm_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_11  &
   j_marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_Cs_RArm_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLVertical.JT_Cyl_Cs_LArm_cyl_pis  &
   adams_id = 3  &
   i_marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_11  &
   j_marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_Cs_LArm_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cs_RLink2  &
   adams_id = 5  &
   i_marker_name = .SSLVertical.Part_RLink2.MARKER_67  &
   j_marker_name = .SSLVertical.Part_to_cs.MARKER_68
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cs_RLink2  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_LArm_LLink2  &
   adams_id = 6  &
   i_marker_name = .SSLVertical.Part_LLink2.MARKER_69  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_70
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_LArm_LLink2  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_RArm_RLink2  &
   adams_id = 7  &
   i_marker_name = .SSLVertical.Part_Arm.MARKER_71  &
   j_marker_name = .SSLVertical.Part_RLink2.MARKER_72
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_RArm_RLink2  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_RArm_RLink1  &
   adams_id = 8  &
   i_marker_name = .SSLVertical.Part_RLink1.MARKER_73  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_74
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_RArm_RLink1  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_LArm_LLink1  &
   adams_id = 9  &
   i_marker_name = .SSLVertical.Part_LLink1.MARKER_75  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_76
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_LArm_LLink1  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Pis_Cs_RArm  &
   adams_id = 10  &
   i_marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.MARKER_77  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_78
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Pis_Cs_RArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Pis_Cs_LArm  &
   adams_id = 11  &
   i_marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.MARKER_79  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_80
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Pis_Cs_LArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cs_RArm  &
   adams_id = 12  &
   i_marker_name = .SSLVertical.Part_to_cs.MARKER_81  &
   j_marker_name = .SSLVertical.Part_RLink1.MARKER_82
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cs_RArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cs_LArm  &
   adams_id = 13  &
   i_marker_name = .SSLVertical.Part_to_cs.MARKER_83  &
   j_marker_name = .SSLVertical.Part_LLink1.MARKER_84
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cs_LArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cyl_Cs_RArm  &
   adams_id = 14  &
   i_marker_name = .SSLVertical.Part_to_cs.MARKER_85  &
   j_marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.MARKER_86
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_Cs_RArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cyl_Cs_LArm  &
   adams_id = 15  &
   i_marker_name = .SSLVertical.Part_to_cs.MARKER_87  &
   j_marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.MARKER_88
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_Cs_LArm  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_RArm_bucket  &
   adams_id = 19  &
   i_marker_name = .SSLVertical.Part_Arm.MARKER_127  &
   j_marker_name = .SSLVertical.Part_bucket.MARKER_128
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_RArm_bucket  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLVertical.JT_Cyl_RArm_bucket_cyl_pis  &
   adams_id = 17  &
   i_marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_11  &
   j_marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_RArm_bucket_cyl_pis  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .SSLVertical.JT_Cyl_LArm_bucket_cyl_pis  &
   adams_id = 18  &
   i_marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_11  &
   j_marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_LArm_bucket_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_LArm_bucket  &
   adams_id = 20  &
   i_marker_name = .SSLVertical.Part_Arm.MARKER_129  &
   j_marker_name = .SSLVertical.Part_bucket.MARKER_130
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_LArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Pis_RArm_bucket  &
   adams_id = 21  &
   i_marker_name = .SSLVertical.Part_bucket.MARKER_131  &
   j_marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.MARKER_132
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Pis_RArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Pis_LArm_bucket  &
   adams_id = 22  &
   i_marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.MARKER_133  &
   j_marker_name = .SSLVertical.Part_bucket.MARKER_134
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Pis_LArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cyl_RArm_bucket  &
   adams_id = 23  &
   i_marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.MARKER_135  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_136
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_RArm_bucket  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .SSLVertical.JT_Cyl_LArm_bucket  &
   adams_id = 24  &
   i_marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.MARKER_137  &
   j_marker_name = .SSLVertical.Part_Arm.MARKER_138
!
constraint attributes  &
   constraint_name = .SSLVertical.JT_Cyl_LArm_bucket  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_Cs_RArm_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_5  &
   j_marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_Cs_LArm_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_5  &
   j_marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_RArm_bucket_force  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_5  &
   j_marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_LArm_bucket_force  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_5  &
   j_marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .SSLVertical.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=1.0 number_of_steps=50 model_name=.SSLVertical initial_static=no"
!
simulation script create  &
   sim_script_name = .SSLVertical.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .SSLVertical.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .SSLVertical.Last_Sim_4  &
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
   variable_name = .SSLVertical.Dv_thetab  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -39.7870885834
!
variable create  &
   variable_name = .SSLVertical.Dv_bx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.305
!
variable create  &
   variable_name = .SSLVertical.Dv_bz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.254
!
variable create  &
   variable_name = .SSLVertical.Dv_ArmMountx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .SSLVertical.Dv_ArmMountz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .SSLVertical.Dv_theta3  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -172.8326940435
!
variable create  &
   variable_name = .SSLVertical.Dv_p3x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.9038814982
!
variable create  &
   variable_name = .SSLVertical.Dv_p3z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.1136628226
!
variable create  &
   variable_name = .SSLVertical.Dv_theta4  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -162.7896661586
!
variable create  &
   variable_name = .SSLVertical.Dv_p4x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.2542104418
!
variable create  &
   variable_name = .SSLVertical.Dv_p4z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.3884908849
!
variable create  &
   variable_name = .SSLVertical.Dv_theta5  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -178.7166764211
!
variable create  &
   variable_name = .SSLVertical.Dv_p5x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.2516859612
!
variable create  &
   variable_name = .SSLVertical.Dv_p5z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -2.8040229043E-002
!
variable create  &
   variable_name = .SSLVertical.Dv_theta6  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 99.8443158608
!
variable create  &
   variable_name = .SSLVertical.Dv_p6x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.1434451887
!
variable create  &
   variable_name = .SSLVertical.Dv_p6z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8266465253
!
variable create  &
   variable_name = .SSLVertical.Dv_theta7  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -3.9124064672
!
variable create  &
   variable_name = .SSLVertical.Dv_p7x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.039571648
!
variable create  &
   variable_name = .SSLVertical.Dv_p7z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -7.1097036834E-002
!
variable create  &
   variable_name = .SSLVertical.Dv_loader_width  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.33
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_RArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.1
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_RArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_RArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_RArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_RArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_LArm_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.1
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_LArm_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_LArm_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_LArm_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_Cs_LArm_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLVertical.Dv_p8x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.239571648
!
variable create  &
   variable_name = .SSLVertical.Dv_p8z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.9210970368
!
variable create  &
   variable_name = .SSLVertical.Dv_p9x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.373571648
!
variable create  &
   variable_name = .SSLVertical.Dv_p9z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.6890022286
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_RArm_bucket_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_RArm_bucket_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_RArm_bucket_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_RArm_bucket_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.7
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_RArm_bucket_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8E-002
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_LArm_bucket_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_LArm_bucket_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_LArm_bucket_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_LArm_bucket_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.7
!
variable create  &
   variable_name = .SSLVertical.DV_Cyl_LArm_bucket_rp  &
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
   variable_name = .SSLVertical.SV_Cyl_Cs_RArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_RArm_P  &
   function = "DZ( .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_RArm_V  &
   function = "VZ( .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_LArm_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_LArm_P  &
   function = "DZ( .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_Cs_LArm_V  &
   function = "VZ( .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_RArm_bucket_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_RArm_bucket_P  &
   function = "DZ( .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_RArm_bucket_V  &
   function = "VZ( .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_LArm_bucket_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_LArm_bucket_P  &
   function = "DZ( .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master)"
!
data_element modify variable  &
   variable_name = .SSLVertical.SV_Cyl_LArm_bucket_V  &
   function = "VZ( .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_Cs_RArm_force  &
   function = "VARVAL( .SSLVertical.SV_Cyl_Cs_RArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master) , ",  &
              "VZ( .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master) , ",  &
              ".SSLVertical.DV_Cyl_Cs_RArm_min_length , .SSLVertical.DV_Cyl_Cs_RArm_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_Cs_LArm_force  &
   function = "VARVAL( .SSLVertical.SV_Cyl_Cs_LArm_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master) , ",  &
              "VZ( .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master) , ",  &
              ".SSLVertical.DV_Cyl_Cs_LArm_min_length , .SSLVertical.DV_Cyl_Cs_LArm_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_RArm_bucket_force  &
   function = "VARVAL( .SSLVertical.SV_Cyl_RArm_bucket_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master) , ",  &
              "VZ( .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master) , ",  &
              ".SSLVertical.DV_Cyl_RArm_bucket_min_length , .SSLVertical.DV_Cyl_RArm_bucket_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .SSLVertical.F_Cyl_LArm_bucket_force  &
   function = "VARVAL( .SSLVertical.SV_Cyl_LArm_bucket_F) + ",  &
              "BISTOP( ",  &
              "DZ( .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master) , ",  &
              "VZ( .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master) , ",  &
              ".SSLVertical.DV_Cyl_LArm_bucket_min_length , .SSLVertical.DV_Cyl_LArm_bucket_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p2R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p2L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p1R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p1L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p3R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p3L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p6R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p6L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p4R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p4L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p5R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p5L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p7R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p7L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p8R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p8L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p9R  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
marker modify  &
   marker_name = .SSLVertical.ground.Mkr_p9L  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))
!
material modify  &
   material_name = .SSLVertical.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLVertical.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLVertical.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLVertical.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .SSLVertical.steel_5  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_32  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_33  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_29  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_70  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_71  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_74  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_76  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_78  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_97  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_98  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_99  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_100  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_127  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_129  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_136  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_Arm.MARKER_138  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_Arm
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_73  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink1.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape link  &
   link_name = .SSLVertical.Part_RLink1.LINK_7  &
   width = (0.1313meter)  &
   depth = (6.565E-002meter)
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_36  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_75  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p4x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p4z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink1.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink1
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape link  &
   link_name = .SSLVertical.Part_LLink1.LINK_8  &
   width = (0.1313meter)  &
   depth = (6.565E-002meter)
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_58  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_59  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_67  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_RLink2.MARKER_72  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_RLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape link  &
   link_name = .SSLVertical.Part_RLink2.LINK_9  &
   width = (0.1399531014meter)  &
   depth = (6.9976550677E-002meter)
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_60  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_61  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_65  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_LLink2.MARKER_69  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p5x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p5z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_LLink2
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape link  &
   link_name = .SSLVertical.Part_LLink2.LINK_10  &
   width = (0.1399531014meter)  &
   depth = (6.9976550677E-002meter)
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_62  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_63  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_64  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_66  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_68  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p6x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p6z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_81  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_ArmMountx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_ArmMountz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_85  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_to_cs.MARKER_87  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_to_cs
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.Part_to_cs.CYLINDER_11  &
   length = (1.33meter)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.Part_to_cs.CYLINDER_12  &
   length = (1.33meter)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.Part_to_cs.CYLINDER_13  &
   length = (1.33meter)  &
   radius = (1.0cm)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p1R))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLVertical.ground.Mkr_p1R, .SSLVertical.ground.Mkr_p3R, "z"))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_Cs_RArm_rc, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.MARKER_86  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.CYLINDER  &
   length = (.SSLVertical.DV_Cyl_Cs_RArm_min_length - .SSLVertical.DV_Cyl_Cs_RArm_rc)  &
   radius = (.SSLVertical.DV_Cyl_Cs_RArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_cyl.CYLINDER_2  &
   length = (.SSLVertical.DV_Cyl_Cs_RArm_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_Cs_RArm_rc)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p3R))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_Cs_RArm_rc, 0}, .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_RArm_pis.MKR_Cs_RArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_RArm_cyl.MKR_Cs_RArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.MARKER_77  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_RArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.CYLINDER_3  &
   length = (.SSLVertical.DV_Cyl_Cs_RArm_min_length)  &
   radius = (.SSLVertical.DV_Cyl_Cs_RArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_RArm_pis.CYLINDER_4  &
   length = (.SSLVertical.DV_Cyl_Cs_RArm_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_Cs_RArm_rc)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p1L))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLVertical.ground.Mkr_p1L, .SSLVertical.ground.Mkr_p3L, "z"))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_Cs_LArm_rc, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.MARKER_88  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_bx, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_bz}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.CYLINDER  &
   length = (.SSLVertical.DV_Cyl_Cs_LArm_min_length - .SSLVertical.DV_Cyl_Cs_LArm_rc)  &
   radius = (.SSLVertical.DV_Cyl_Cs_LArm_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_cyl.CYLINDER_2  &
   length = (.SSLVertical.DV_Cyl_Cs_LArm_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_Cs_LArm_rc)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p3L))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_Cs_LArm_rc, 0}, .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_LArm_pis.MKR_Cs_LArm_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_Cs_LArm_cyl.MKR_Cs_LArm_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.MARKER_79  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p3x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p3z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_Cs_LArm_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.CYLINDER_3  &
   length = (.SSLVertical.DV_Cyl_Cs_LArm_min_length)  &
   radius = (.SSLVertical.DV_Cyl_Cs_LArm_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_Cs_LArm_pis.CYLINDER_4  &
   length = (.SSLVertical.DV_Cyl_Cs_LArm_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_Cs_LArm_rc)
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_103  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_104  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_105  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_106  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_128  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_130  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p8z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_131  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MARKER_134  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape link  &
   link_name = .SSLVertical.Part_bucket.LINK_15  &
   width = (2.68E-002meter)  &
   depth = (1.34E-002meter)
!
geometry modify shape link  &
   link_name = .SSLVertical.Part_bucket.LINK_14  &
   width = (2.68E-002meter)  &
   depth = (1.34E-002meter)
!
marker modify  &
   marker_name = .SSLVertical.Part_bucket.MAR163  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p8x + 0.3, 0, .SSLVertical.Dv_p8z - 0.1}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, 0, 90}, .SSLVertical.ground.Mkr_Master))  &
   relative_to = .SSLVertical.Part_bucket
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.MARKER_135  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p7R))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLVertical.ground.Mkr_p7R, .SSLVertical.ground.Mkr_p9R, "z"))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_RArm_bucket_rc, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.CYLINDER  &
   length = (.SSLVertical.DV_Cyl_RArm_bucket_min_length - .SSLVertical.DV_Cyl_RArm_bucket_rc)  &
   radius = (.SSLVertical.DV_Cyl_RArm_bucket_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_cyl.CYLINDER_2  &
   length = (.SSLVertical.DV_Cyl_RArm_bucket_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_RArm_bucket_rc)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.MARKER_132  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, -.SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p9R))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_RArm_bucket_rc, 0}, .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_RArm_bucket_pis.MKR_RArm_bucket_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_RArm_bucket_cyl.MKR_RArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_RArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.CYLINDER_3  &
   length = (.SSLVertical.DV_Cyl_RArm_bucket_min_length)  &
   radius = (.SSLVertical.DV_Cyl_RArm_bucket_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_RArm_bucket_pis.CYLINDER_4  &
   length = (.SSLVertical.DV_Cyl_RArm_bucket_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_RArm_bucket_rc)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p7L))  &
   orientation =   &
      (ORI_ALONG_AXIS(.SSLVertical.ground.Mkr_p7L, .SSLVertical.ground.Mkr_p9L, "z"))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_LArm_bucket_rc, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.MARKER_137  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p7x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p7z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.CYLINDER  &
   length = (.SSLVertical.DV_Cyl_LArm_bucket_min_length - .SSLVertical.DV_Cyl_LArm_bucket_rc)  &
   radius = (.SSLVertical.DV_Cyl_LArm_bucket_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_cyl.CYLINDER_2  &
   length = (.SSLVertical.DV_Cyl_LArm_bucket_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_LArm_bucket_rc)
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.MARKER_133  &
   location =   &
      (LOC_RELATIVE_TO({.SSLVertical.Dv_p9x, .SSLVertical.Dv_loader_width / 2, .SSLVertical.Dv_p9z}, .SSLVertical.ground.Mkr_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.SSLVertical.ground.Mkr_Master, "zy"))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.ground.Mkr_p9L))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .SSLVertical.DV_Cyl_LArm_bucket_rc, 0}, .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_LArm_bucket_pis.MKR_LArm_bucket_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
marker modify  &
   marker_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .SSLVertical.PART_Cyl_LArm_bucket_cyl.MKR_LArm_bucket_cyl_master))  &
   relative_to = .SSLVertical.PART_Cyl_LArm_bucket_pis
!
defaults coordinate_system  &
   default_coordinate_system = .SSLVertical.ground
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.CYLINDER_3  &
   length = (.SSLVertical.DV_Cyl_LArm_bucket_min_length)  &
   radius = (.SSLVertical.DV_Cyl_LArm_bucket_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .SSLVertical.PART_Cyl_LArm_bucket_pis.CYLINDER_4  &
   length = (.SSLVertical.DV_Cyl_LArm_bucket_rc * 2)  &
   radius = (.SSLVertical.DV_Cyl_LArm_bucket_rc)
!
variable modify  &
   variable_name = .SSLVertical.Dv_thetab  &
   real_value = (-90 - ATAN((.SSLVertical.Dv_bx / .SSLVertical.Dv_bz)d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_theta3  &
   real_value = (.SSLVertical.Dv_thetab - ACOS(((.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2 + 0.911**2 - 1.217**2) / (2 * (.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2)**0.5 * 0.911))d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p3x  &
   real_value = (.SSLVertical.Dv_ArmMountx + 0.911 * COS(.SSLVertical.Dv_theta3 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p3z  &
   real_value = (.SSLVertical.Dv_ArmMountz + 0.911 * SIN(.SSLVertical.Dv_theta3 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_theta4  &
   real_value = (.SSLVertical.Dv_thetab - ACOS((.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2 + 1.313**2 - 1.565**2) / (2 * (.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2)**0.5 * 1.313)d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p4x  &
   real_value = (.SSLVertical.Dv_ArmMountx + 1.313 * COS(.SSLVertical.Dv_theta4 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p4z  &
   real_value = (.SSLVertical.Dv_ArmMountz + 1.313 * SIN(.SSLVertical.Dv_theta4 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_theta5  &
   real_value = (.SSLVertical.Dv_thetab - ACOS((.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2 + 1.252**2 - 1.573**2) / (2 * (.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2)**0.5 * 1.252)d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p5x  &
   real_value = (.SSLVertical.Dv_ArmMountx + 1.252 * COS(.SSLVertical.Dv_theta5 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p5z  &
   real_value = (.SSLVertical.Dv_ArmMountz + 1.252 * SIN(.SSLVertical.Dv_theta5 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_theta6  &
   real_value = (.SSLVertical.Dv_thetab + ACOS((.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2 + 0.839**2 - 1.17**2) / (2 * (.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2)**0.5 * 0.839)d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p6x  &
   real_value = (.SSLVertical.Dv_ArmMountx + 0.839 * COS(.SSLVertical.Dv_theta6 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p6z  &
   real_value = (.SSLVertical.Dv_ArmMountz + 0.839 * SIN(.SSLVertical.Dv_theta6 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_theta7  &
   real_value = (.SSLVertical.Dv_thetab + ACOS(((.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2 + 1.042**2 - 0.757**2) / (2 * (.SSLVertical.Dv_bz**2 + .SSLVertical.Dv_bx**2)**0.5 * 1.042))d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p7x  &
   real_value = (.SSLVertical.Dv_ArmMountx + 1.042 * COS(.SSLVertical.Dv_theta7 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p7z  &
   real_value = (.SSLVertical.Dv_ArmMountz + 1.042 * SIN(.SSLVertical.Dv_theta7 d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p8x  &
   real_value = (.SSLVertical.Dv_p7x + 0.2)
!
variable modify  &
   variable_name = .SSLVertical.Dv_p8z  &
   real_value = (.SSLVertical.Dv_p7z - 0.85)
!
variable modify  &
   variable_name = .SSLVertical.Dv_p9x  &
   real_value = (.SSLVertical.Dv_p8x + 0.268 * COS(60d))
!
variable modify  &
   variable_name = .SSLVertical.Dv_p9z  &
   real_value = (.SSLVertical.Dv_p8z + 0.268 * SIN(60d))
!
model display  &
   model_name = SSLVertical
