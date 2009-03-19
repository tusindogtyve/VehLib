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
   model_name = Stabi1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Stabi1.SV_Cyl_L_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .Stabi1.SV_Cyl_L_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Stabi1.SV_Cyl_L_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Stabi1.SV_Cyl_R_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .Stabi1.SV_Cyl_R_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Stabi1.SV_Cyl_R_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Stabi1.steel  &
   adams_id = 5  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .Stabi1.steel_2  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .Stabi1.steel_3  &
   adams_id = 3  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .Stabi1.steel_2_2  &
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
   default_coordinate_system = .Stabi1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.ground.Mkr_Stabi_L_Slave  &
   adams_id = 1  &
   location = -0.6, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 110.0d
!
marker create  &
   marker_name = .Stabi1.ground.Mkr_L_Cyl_Arm  &
   adams_id = 3  &
   location = -0.702606043, 0.2819077862, -0.1  &
   orientation = 0.0d, 0.0d, 110.0d
!
marker create  &
   marker_name = .Stabi1.ground.Mkr_Master  &
   adams_id = 79  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 90.0d
!
marker create  &
   marker_name = .Stabi1.ground.MARKER_44  &
   adams_id = 44  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.ground.Mkr_Stabi_R_Slave  &
   adams_id = 49  &
   location = 0.6, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 70.0d
!
marker create  &
   marker_name = .Stabi1.ground.Mkr_R_Cyl_Arm  &
   adams_id = 50  &
   location = 0.702606043, 0.2819077862, -0.1  &
   orientation = 0.0d, 0.0d, 70.0d
!
marker create  &
   marker_name = .Stabi1.ground.MARKER_44_2  &
   adams_id = 51  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
!--------------------------------- PART_To_Cs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_To_Cs  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_To_Cs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_80  &
   adams_id = 80  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 90.0d
!
marker create  &
   marker_name = .Stabi1.PART_To_Cs.cm  &
   adams_id = 89  &
   location = -1.5E-002, 1.5E-002, 1.5E-002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_82  &
   adams_id = 82  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_84  &
   adams_id = 84  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_86  &
   adams_id = 86  &
   location = 0.6, 0.0, 0.0  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_87  &
   adams_id = 87  &
   location = -0.6, 0.0, 0.0  &
   orientation = -90.0d, 70.0d, -180.0d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_To_Cs  &
   material_type = .Stabi1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Stabi1.PART_To_Cs.BOX_20  &
   adams_id = 20  &
   corner_marker = .Stabi1.PART_To_Cs.MARKER_80  &
   diag_corner_coords = 3.0E-002, 3.0E-002, 3.0E-002
!
geometry attributes  &
   geometry_name = .Stabi1.PART_To_Cs.BOX_20  &
   visibility = off
!
part attributes  &
   part_name = .Stabi1.PART_To_Cs  &
   color = GREEN  &
   visibility = on  &
   name_visibility = on
!
!--------------------------------- PART_L_Leg ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_L_Leg  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_L_Leg
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_17  &
   adams_id = 17  &
   location = -0.6, 0.0, 0.0  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_18  &
   adams_id = 18  &
   location = -0.702606043, 0.2819077862, -0.1  &
   orientation = 90.0d, -70.0d, 180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_40  &
   adams_id = 40  &
   location = -1.0187158436, 0.2732710053, -0.1  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.Mkr_L_Cyl_Arm_side  &
   adams_id = 23  &
   location = -0.9845138292, 0.1793017432, -0.1  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.cm  &
   adams_id = 36  &
   location = -0.7788694791, 0.1844246308, -7.4738816258E-002  &
   orientation = -117.6353809289d, -67.3794608752d, -101.3834880141d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_24  &
   adams_id = 24  &
   location = -1.0187158436, 0.2732710053, -0.1  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_48  &
   adams_id = 48  &
   location = -0.702606043, 0.2819077862, -0.1  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_88  &
   adams_id = 88  &
   location = -0.6, 0.0, 0.0  &
   orientation = -90.0d, 70.0d, -180.0d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_L_Leg  &
   material_type = .Stabi1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_L_Leg.CYLINDER_6  &
   adams_id = 6  &
   center_marker = .Stabi1.PART_L_Leg.MARKER_18  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .Stabi1.PART_L_Leg.LINK_5  &
   i_marker = .Stabi1.PART_L_Leg.MARKER_17  &
   j_marker = .Stabi1.PART_L_Leg.MARKER_18  &
   width = 5.16227766E-002  &
   depth = 0.1258113883
!
geometry create shape link  &
   link_name = .Stabi1.PART_L_Leg.LINK_8  &
   i_marker = .Stabi1.PART_L_Leg.Mkr_L_Cyl_Arm_side  &
   j_marker = .Stabi1.PART_L_Leg.MARKER_24  &
   width = 0.1041421356  &
   depth = 5.0E-002
!
part attributes  &
   part_name = .Stabi1.PART_L_Leg  &
   color = WHITE  &
   name_visibility = off
!
!------------------------------- PART_Cyl_L_cyl -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_Cyl_L_cyl  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_Cyl_L_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master  &
   adams_id = 45  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, -10.936364847d, -173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cm  &
   adams_id = 9  &
   location = -0.6511411787, 0.1405092336, 0.1257097951  &
   orientation = 32.065569763d, 10.936364847d, -6.7778929178d
!
marker attributes  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cm  &
   color = WHITE
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_2  &
   adams_id = 2  &
   location = -0.6284081445, 0.1366395344, 0.2254102132  &
   orientation = 120.7738639564d, -6.6542345295d, 168.9885392999d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_6  &
   adams_id = 6  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, -10.936364847d, -173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_11  &
   adams_id = 11  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, -10.936364847d, -173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.MARKER_81  &
   adams_id = 81  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_Cyl_L_cyl  &
   material_type = .Stabi1.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master  &
   angle_extent = 360.0  &
   length = 0.25  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Stabi1.PART_Cyl_L_cyl  &
   color = WHITE  &
   name_visibility = off
!
!------------------------------- PART_Cyl_L_pis -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_Cyl_L_pis  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_Cyl_L_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_pis.MARKER_47  &
   adams_id = 47  &
   location = -0.702606043, 0.2819077862, -0.1  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave  &
   adams_id = 46  &
   location = -0.702606043, 0.2819077862, -0.1  &
   orientation = 32.065569763d, 10.936364847d, 173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cm  &
   adams_id = 10  &
   location = -0.6878298796, 0.2413106111, -3.5196082845E-002  &
   orientation = 32.065569763d, 10.936364847d, -6.7778929177d
!
marker attributes  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cm  &
   color = DARK_GRAY
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_4  &
   adams_id = 4  &
   location = -0.7083999128, 0.2392375139, -0.1254102132  &
   orientation = -59.2261360436d, 6.6542345295d, -168.9885392999d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_5  &
   adams_id = 5  &
   location = -0.702606043, 0.2819077862, -0.1  &
   orientation = -147.934430237d, -10.936364847d, -173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_12  &
   adams_id = 12  &
   location = -0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, -10.936364847d, -173.2221070822d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_Cyl_L_pis  &
   material_type = .Stabi1.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .Stabi1.PART_Cyl_L_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Stabi1.PART_Cyl_L_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------------- PART_L_Plate --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_L_Plate  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_L_Plate
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_25  &
   adams_id = 25  &
   location = -0.8585017481, 0.1985619456, -0.2  &
   orientation = 90.0d, -70.0d, 180.0d
!
marker attributes  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_25  &
   color = WHITE
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_26  &
   adams_id = 26  &
   location = -0.8585017481, 0.1985619456, -0.18  &
   orientation = 90.0d, -70.0d, 180.0d
!
marker attributes  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_26  &
   color = WHITE
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_41  &
   adams_id = 41  &
   location = -1.0187158436, 0.2732710053, -0.1  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_27  &
   adams_id = 27  &
   location = -0.9440067839, 0.4334851008, -0.18  &
   orientation = 90.0d, -70.0d, 180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_30  &
   adams_id = 30  &
   location = -1.0657004746, 0.2561699982, -0.1  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_31  &
   adams_id = 31  &
   location = -1.0657004746, 0.2561699982, -0.159  &
   orientation = 0.0d, 0.0d, 110.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_34  &
   adams_id = 34  &
   location = -0.9717312125, 0.2903720125, -0.1  &
   orientation = -90.0d, 70.0d, -180.0d
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_35  &
   adams_id = 35  &
   location = -0.9717312125, 0.2903720125, -0.159  &
   orientation = 0.0d, 0.0d, 110.0d
!
marker attributes  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_35  &
   color = WHITE
!
marker create  &
   marker_name = .Stabi1.PART_L_Plate.cm  &
   adams_id = 39  &
   location = -1.0187158436, 0.2732710053, -0.1738863152  &
   orientation = 89.9999999985d, -70.0000000115d, 89.9999999986d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_L_Plate  &
   material_type = .Stabi1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Stabi1.PART_L_Plate.LINK_13  &
   i_marker = .Stabi1.PART_L_Plate.MARKER_34  &
   j_marker = .Stabi1.PART_L_Plate.MARKER_35  &
   width = 8.0E-002  &
   depth = 2.0E-002
!
geometry create shape link  &
   link_name = .Stabi1.PART_L_Plate.LINK_131  &
   i_marker = .Stabi1.PART_L_Plate.MARKER_30  &
   j_marker = .Stabi1.PART_L_Plate.MARKER_31  &
   width = 8.0E-002  &
   depth = 2.0E-002
!
geometry create shape block  &
   block_name = .Stabi1.PART_L_Plate.BOX_9  &
   adams_id = 9  &
   corner_marker = .Stabi1.PART_L_Plate.MARKER_25  &
   diag_corner_coords = 0.25, -2.0E-002, 0.25
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_9.BLEND_1  &
   subtype = edge  &
   radius1 = 5.0E-002  &
   radius2 = 5.0E-002  &
   reference_marker = .Stabi1.PART_L_Plate.MARKER_25  &
   locations = 0.0, 0.0, 0.125  &
   chamfer = no
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_9.BLEND_2  &
   subtype = edge  &
   radius1 = 5.0E-002  &
   radius2 = 5.0E-002  &
   reference_marker = .Stabi1.PART_L_Plate.MARKER_25  &
   locations = 0.25, 0.0, 0.125  &
   chamfer = no
!
geometry create shape block  &
   block_name = .Stabi1.PART_L_Plate.BOX_10  &
   adams_id = 10  &
   corner_marker = .Stabi1.PART_L_Plate.MARKER_26  &
   diag_corner_coords = 2.0E-002, -2.0E-002, 0.25
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_10.BLEND_1  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_L_Plate.MARKER_26  &
   locations = 2.0E-002, -2.0E-002, 0.125  &
   chamfer = no
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_10.BLEND_2  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_L_Plate.MARKER_26  &
   locations = 0.0, -2.0E-002, 0.125  &
   chamfer = no
!
geometry create shape block  &
   block_name = .Stabi1.PART_L_Plate.BOX_11  &
   adams_id = 11  &
   corner_marker = .Stabi1.PART_L_Plate.MARKER_27  &
   diag_corner_coords = -2.0E-002, -2.0E-002, 0.25
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_11.BLEND_1  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_L_Plate.MARKER_27  &
   locations = -2.0E-002, -2.0E-002, 0.125  &
   chamfer = no
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_11.BLEND_2  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_L_Plate.MARKER_27  &
   locations = 0.0, -2.0E-002, 0.125  &
   chamfer = no
!
part attributes  &
   part_name = .Stabi1.PART_L_Plate  &
   color = WHITE  &
   name_visibility = off
!
!--------------------------------- PART_R_Leg ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_R_Leg  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_R_Leg
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_85  &
   adams_id = 85  &
   location = 0.6, 0.0, 0.0  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_93  &
   adams_id = 93  &
   location = 1.0187158436, 0.2732710053, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_17  &
   adams_id = 52  &
   location = 0.6, 0.0, 0.0  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_18  &
   adams_id = 53  &
   location = 0.702606043, 0.2819077862, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.Mkr_Cyl_Arm_side  &
   adams_id = 55  &
   location = 0.9845138292, 0.1793017432, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.cm  &
   adams_id = 56  &
   location = 0.7788694791, 0.1844246308, -7.4738816258E-002  &
   orientation = 62.3646190699d, -67.379460874d, 78.6165119828d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_24  &
   adams_id = 57  &
   location = 1.0187158436, 0.2732710053, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_48  &
   adams_id = 58  &
   location = 0.702606043, 0.2819077862, -0.1  &
   orientation = -90.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_R_Leg  &
   material_type = .Stabi1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_R_Leg.CYLINDER_6  &
   adams_id = 12  &
   center_marker = .Stabi1.PART_R_Leg.MARKER_18  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 3.75E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .Stabi1.PART_R_Leg.LINK_5  &
   i_marker = .Stabi1.PART_R_Leg.MARKER_17  &
   j_marker = .Stabi1.PART_R_Leg.MARKER_18  &
   width = 5.16227766E-002  &
   depth = 0.1258113883
!
geometry create shape link  &
   link_name = .Stabi1.PART_R_Leg.LINK_8  &
   i_marker = .Stabi1.PART_R_Leg.Mkr_Cyl_Arm_side  &
   j_marker = .Stabi1.PART_R_Leg.MARKER_24  &
   width = 0.1041421356  &
   depth = 5.0E-002
!
part attributes  &
   part_name = .Stabi1.PART_R_Leg  &
   color = WHITE  &
   name_visibility = off
!
!------------------------------- PART_Cyl_R_cyl -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_Cyl_R_cyl  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_Cyl_R_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.MARKER_83  &
   adams_id = 83  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master  &
   adams_id = 59  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, 10.936364847d, 173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cm  &
   adams_id = 60  &
   location = 0.6511411787, 0.1405092336, 0.1257097951  &
   orientation = 32.065569763d, -10.936364847d, 6.7778929178d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_2  &
   adams_id = 61  &
   location = 0.6284081445, 0.1366395344, 0.2254102132  &
   orientation = 120.7738639564d, 6.6542345295d, -168.9885392999d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_6  &
   adams_id = 62  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, 10.936364847d, 173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_11  &
   adams_id = 63  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, 10.936364847d, 173.2221070822d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_Cyl_R_cyl  &
   material_type = .Stabi1.steel_2_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_cyl.CYLINDER  &
   adams_id = 13  &
   center_marker = .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master  &
   angle_extent = 360.0  &
   length = 0.25  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_cyl.CYLINDER_2  &
   adams_id = 14  &
   center_marker = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Stabi1.PART_Cyl_R_cyl  &
   color = WHITE  &
   name_visibility = off
!
!------------------------------- PART_Cyl_R_pis -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_Cyl_R_pis  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_Cyl_R_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_pis.MARKER_47  &
   adams_id = 64  &
   location = 0.702606043, 0.2819077862, -0.1  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave  &
   adams_id = 65  &
   location = 0.702606043, 0.2819077862, -0.1  &
   orientation = 32.065569763d, -10.936364847d, -173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cm  &
   adams_id = 66  &
   location = 0.6878298796, 0.2413106111, -3.5196082845E-002  &
   orientation = 32.065569763d, -10.936364847d, 6.7778929178d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_4  &
   adams_id = 67  &
   location = 0.7083999128, 0.2392375139, -0.1254102132  &
   orientation = -59.2261360436d, -6.6542345295d, 168.9885392999d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_5  &
   adams_id = 68  &
   location = 0.702606043, 0.2819077862, -0.1  &
   orientation = -147.934430237d, 10.936364847d, 173.2221070822d
!
marker create  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_12  &
   adams_id = 69  &
   location = 0.6342020143, 9.3969262079E-002, 0.2  &
   orientation = -147.934430237d, 10.936364847d, 173.2221070822d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_Cyl_R_pis  &
   material_type = .Stabi1.steel_2_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_pis.CYLINDER_3  &
   adams_id = 15  &
   center_marker = .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave  &
   angle_extent = 360.0  &
   length = 0.3  &
   radius = 3.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_pis.CYLINDER_4  &
   adams_id = 16  &
   center_marker = .Stabi1.PART_Cyl_R_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Stabi1.PART_Cyl_R_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------------- PART_R_Plate --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
part create rigid_body name_and_position  &
   part_name = .Stabi1.PART_R_Plate  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.PART_R_Plate
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_92  &
   adams_id = 92  &
   location = 1.0187158436, 0.2732710053, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_25  &
   adams_id = 70  &
   location = 1.0934249032, 0.1130569098, -0.2  &
   orientation = -90.0d, -70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_26  &
   adams_id = 71  &
   location = 1.0934249032, 0.1130569098, -0.18  &
   orientation = -90.0d, -70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_27  &
   adams_id = 73  &
   location = 1.1789299391, 0.347980065, -0.18  &
   orientation = -90.0d, -70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_30  &
   adams_id = 74  &
   location = 0.9717312125, 0.2903720125, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_31  &
   adams_id = 75  &
   location = 0.9717312125, 0.2903720125, -0.159  &
   orientation = 0.0d, 0.0d, 70.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_34  &
   adams_id = 76  &
   location = 1.0657004746, 0.2561699982, -0.1  &
   orientation = 90.0d, 70.0d, 0.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_35  &
   adams_id = 77  &
   location = 1.0657004746, 0.2561699982, -0.159  &
   orientation = 0.0d, 0.0d, 70.0d
!
marker create  &
   marker_name = .Stabi1.PART_R_Plate.cm  &
   adams_id = 78  &
   location = 1.0187158436, 0.2732710053, -0.1738863152  &
   orientation = -89.9999999985d, -69.9999999884d, -89.9999999986d
!
part create rigid_body mass_properties  &
   part_name = .Stabi1.PART_R_Plate  &
   material_type = .Stabi1.steel_3
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Stabi1.PART_R_Plate.LINK_13  &
   i_marker = .Stabi1.PART_R_Plate.MARKER_34  &
   j_marker = .Stabi1.PART_R_Plate.MARKER_35  &
   width = 8.0E-002  &
   depth = 2.0E-002
!
geometry create shape link  &
   link_name = .Stabi1.PART_R_Plate.LINK_131  &
   i_marker = .Stabi1.PART_R_Plate.MARKER_30  &
   j_marker = .Stabi1.PART_R_Plate.MARKER_31  &
   width = 8.0E-002  &
   depth = 2.0E-002
!
geometry create shape block  &
   block_name = .Stabi1.PART_R_Plate.BOX_9  &
   adams_id = 17  &
   corner_marker = .Stabi1.PART_R_Plate.MARKER_25  &
   diag_corner_coords = 0.25, -2.0E-002, 0.25
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_9.BLEND_1  &
   subtype = edge  &
   radius1 = 5.0E-002  &
   radius2 = 5.0E-002  &
   reference_marker = .Stabi1.PART_R_Plate.MARKER_25  &
   locations = 0.0, 0.0, 0.125  &
   chamfer = no
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_9.BLEND_2  &
   subtype = edge  &
   radius1 = 5.0E-002  &
   radius2 = 5.0E-002  &
   reference_marker = .Stabi1.PART_R_Plate.MARKER_25  &
   locations = 0.25, 0.0, 0.125  &
   chamfer = no
!
geometry create shape block  &
   block_name = .Stabi1.PART_R_Plate.BOX_10  &
   adams_id = 18  &
   corner_marker = .Stabi1.PART_R_Plate.MARKER_26  &
   diag_corner_coords = 2.0E-002, -2.0E-002, 0.25
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_10.BLEND_1  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_R_Plate.MARKER_26  &
   locations = 2.0E-002, -2.0E-002, 0.125  &
   chamfer = no
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_10.BLEND_2  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_R_Plate.MARKER_26  &
   locations = 0.0, -2.0E-002, 0.125  &
   chamfer = no
!
geometry create shape block  &
   block_name = .Stabi1.PART_R_Plate.BOX_11  &
   adams_id = 19  &
   corner_marker = .Stabi1.PART_R_Plate.MARKER_27  &
   diag_corner_coords = -2.0E-002, -2.0E-002, 0.25
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_11.BLEND_1  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_R_Plate.MARKER_27  &
   locations = -2.0E-002, -2.0E-002, 0.125  &
   chamfer = no
!
geometry create feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_11.BLEND_2  &
   subtype = edge  &
   radius1 = 1.0E-002  &
   radius2 = 1.0E-002  &
   reference_marker = .Stabi1.PART_R_Plate.MARKER_27  &
   locations = 0.0, -2.0E-002, 0.125  &
   chamfer = no
!
part attributes  &
   part_name = .Stabi1.PART_R_Plate  &
   color = WHITE  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .Stabi1.Jt_L_Leg_Plate  &
   adams_id = 3  &
   i_marker_name = .Stabi1.PART_L_Leg.MARKER_40  &
   j_marker_name = .Stabi1.PART_L_Plate.MARKER_41
!
constraint attributes  &
   constraint_name = .Stabi1.Jt_L_Leg_Plate  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Stabi1.Jt_L_Cyl_Leg  &
   adams_id = 5  &
   i_marker_name = .Stabi1.PART_Cyl_L_pis.MARKER_47  &
   j_marker_name = .Stabi1.PART_L_Leg.MARKER_48
!
constraint attributes  &
   constraint_name = .Stabi1.Jt_L_Cyl_Leg  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Stabi1.Jt_L_Cs_Cyl  &
   adams_id = 9  &
   i_marker_name = .Stabi1.PART_Cyl_L_cyl.MARKER_81  &
   j_marker_name = .Stabi1.PART_To_Cs.MARKER_82
!
constraint attributes  &
   constraint_name = .Stabi1.Jt_L_Cs_Cyl  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .Stabi1.JT_Cyl_L_cyl_pis  &
   adams_id = 2  &
   i_marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_11  &
   j_marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .Stabi1.JT_Cyl_L_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Stabi1.Jt_R_Cs_Cyl  &
   adams_id = 10  &
   i_marker_name = .Stabi1.PART_Cyl_R_cyl.MARKER_83  &
   j_marker_name = .Stabi1.PART_To_Cs.MARKER_84
!
constraint attributes  &
   constraint_name = .Stabi1.Jt_R_Cs_Cyl  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Stabi1.Jt_R_Cs_Leg  &
   adams_id = 11  &
   i_marker_name = .Stabi1.PART_R_Leg.MARKER_85  &
   j_marker_name = .Stabi1.PART_To_Cs.MARKER_86
!
constraint attributes  &
   constraint_name = .Stabi1.Jt_R_Cs_Leg  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Stabi1.Jt_L_Cs_Leg  &
   adams_id = 12  &
   i_marker_name = .Stabi1.PART_To_Cs.MARKER_87  &
   j_marker_name = .Stabi1.PART_L_Leg.MARKER_88
!
constraint attributes  &
   constraint_name = .Stabi1.Jt_L_Cs_Leg  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Stabi1.Jt__R_Cyl_Leg  &
   adams_id = 7  &
   i_marker_name = .Stabi1.PART_Cyl_R_pis.MARKER_47  &
   j_marker_name = .Stabi1.PART_R_Leg.MARKER_48
!
constraint attributes  &
   constraint_name = .Stabi1.Jt__R_Cyl_Leg  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Stabi1.JOINT_14  &
   adams_id = 14  &
   i_marker_name = .Stabi1.PART_R_Plate.MARKER_92  &
   j_marker_name = .Stabi1.PART_R_Leg.MARKER_93
!
constraint attributes  &
   constraint_name = .Stabi1.JOINT_14  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .Stabi1.JT_Cyl_R_cyl_pis  &
   adams_id = 8  &
   i_marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_11  &
   j_marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .Stabi1.JT_Cyl_R_cyl_pis  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .Stabi1.F_Cyl_L_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_5  &
   j_marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force attributes  &
   force_name = .Stabi1.F_Cyl_L_force  &
   color = WHITE
!
force create direct single_component_force  &
   single_component_force_name = .Stabi1.F_Cyl_R_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_5  &
   j_marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Stabi1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=1.0 number_of_steps=50 model_name=.Stabi1 initial_static=no"
!
simulation script create  &
   sim_script_name = .Stabi1.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .Stabi1.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=4.0 number_of_steps=500 model_name=.Stabi1 initial_static=no"
!
simulation script create  &
   sim_script_name = .Stabi1.Last_Sim_2_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
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
   variable_name = .Stabi1.DV_cylmount_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1, 0.0, 0.2
!
variable create  &
   variable_name = .Stabi1.DV_CylLeg_xyz  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3, 0.0, -0.1
!
variable create  &
   variable_name = .Stabi1.DV_Legwidth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .Stabi1.DV_PlateJoint_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .Stabi1.DV_PlateJoint_z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.1
!
variable create  &
   variable_name = .Stabi1.DV_PlateWidth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .Stabi1.DV_PlateDepth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .Stabi1.DV_PlateHeight  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_L_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_L_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_L_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_L_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_L_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_R_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.3
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_R_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_R_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_R_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .Stabi1.DV_Cyl_R_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.0E-002
!
variable create  &
   variable_name = .Stabi1.DV_Dist_y_Legs  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .Stabi1.DV_AngleToForward  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 20.0
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Stabi1.SV_Cyl_L_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Stabi1.SV_Cyl_L_P  &
   function = "DZ( .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master)"
!
data_element modify variable  &
   variable_name = .Stabi1.SV_Cyl_L_V  &
   function = "VZ( .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master)"
!
data_element modify variable  &
   variable_name = .Stabi1.SV_Cyl_R_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Stabi1.SV_Cyl_R_P  &
   function = "DZ( .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master)"
!
data_element modify variable  &
   variable_name = .Stabi1.SV_Cyl_R_V  &
   function = "VZ( .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .Stabi1.F_Cyl_L_force  &
   function = "VARVAL( .Stabi1.SV_Cyl_L_F) + ",  &
              "BISTOP( ",  &
              "DZ( .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master) , ",  &
              "VZ( .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master) , ",  &
              ".Stabi1.DV_Cyl_L_min_length , .Stabi1.DV_Cyl_L_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
force modify direct single_component_force  &
   single_component_force_name = .Stabi1.F_Cyl_R_force  &
   function = "VARVAL( .Stabi1.SV_Cyl_R_F) + ",  &
              "BISTOP( ",  &
              "DZ( .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master) , ",  &
              "VZ( .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master) , ",  &
              ".Stabi1.DV_Cyl_R_min_length , .Stabi1.DV_Cyl_R_max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .Stabi1.ground.Mkr_Stabi_L_Slave  &
   location =   &
      (LOC_RELATIVE_TO({0, .Stabi1.DV_Dist_y_Legs / 2, 0}, .Stabi1.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, .Stabi1.DV_AngleToForward}, .Stabi1.ground.Mkr_Master))
!
marker modify  &
   marker_name = .Stabi1.ground.Mkr_L_Cyl_Arm  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_CylLeg_xyz}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))
!
marker modify  &
   marker_name = .Stabi1.ground.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))
!
marker modify  &
   marker_name = .Stabi1.ground.Mkr_Stabi_R_Slave  &
   location =   &
      (LOC_RELATIVE_TO({0, -.Stabi1.DV_Dist_y_Legs / 2, 0}, .Stabi1.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, -.Stabi1.DV_AngleToForward}, .Stabi1.ground.Mkr_Master))
!
marker modify  &
   marker_name = .Stabi1.ground.Mkr_R_Cyl_Arm  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_CylLeg_xyz}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))
!
marker modify  &
   marker_name = .Stabi1.ground.MARKER_44_2  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_cylmount_xyz}, .Stabi1.ground.Mkr_Stabi_R_Slave))
!
material modify  &
   material_name = .Stabi1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .Stabi1.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .Stabi1.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .Stabi1.steel_2_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_80  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Master))  &
   relative_to = .Stabi1.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.MARKER_44))  &
   relative_to = .Stabi1.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.MARKER_44_2))  &
   relative_to = .Stabi1.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_86  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_To_Cs.MARKER_87  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_To_Cs
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_L_Cyl_Arm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_40  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_L_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_L_Leg.MARKER_24))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.Mkr_L_Cyl_Arm_side  &
   location =   &
      (LOC_RELATIVE_TO({0, .Stabi1.DV_Legwidth, 0}, .Stabi1.ground.Mkr_L_Cyl_Arm)S)  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_PlateJoint_x, .Stabi1.DV_Legwidth, .Stabi1.DV_PlateJoint_z}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_L_Cyl_Arm))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Leg.MARKER_88  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_L_Leg.CYLINDER_6  &
   length = (.Stabi1.DV_Legwidth)  &
   radius = (3.75E-002meter)
!
geometry modify shape link  &
   link_name = .Stabi1.PART_L_Leg.LINK_5  &
   width = (5.16227766E-002meter)  &
   depth = (0.1258113883meter)
!
geometry modify shape link  &
   link_name = .Stabi1.PART_L_Leg.LINK_8  &
   width = (0.1041421356meter)  &
   depth = (5.0E-002meter)
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_cylmount_xyz}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Stabi1.ground.MARKER_44, .Stabi1.ground.Mkr_L_Cyl_Arm, "z"))  &
   relative_to = .Stabi1.PART_Cyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .Stabi1.DV_Cyl_L_rc, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_cyl.MARKER_81  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.MARKER_44))  &
   relative_to = .Stabi1.PART_Cyl_L_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_cyl.CYLINDER  &
   length = (.Stabi1.DV_Cyl_L_min_length - .Stabi1.DV_Cyl_L_rc)  &
   radius = (.Stabi1.DV_Cyl_L_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_cyl.CYLINDER_2  &
   length = (.Stabi1.DV_Cyl_L_rc * 2)  &
   radius = (.Stabi1.DV_Cyl_L_rc)
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_pis.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_L_Cyl_Arm))  &
   relative_to = .Stabi1.PART_Cyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_L_Cyl_Arm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .Stabi1.DV_Cyl_L_rc, 0}, .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave))  &
   relative_to = .Stabi1.PART_Cyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_pis.MKR_L_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_L_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_L_cyl.MKR_L_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_L_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_pis.CYLINDER_3  &
   length = (.Stabi1.DV_Cyl_L_min_length)  &
   radius = (.Stabi1.DV_Cyl_L_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_L_pis.CYLINDER_4  &
   length = (.Stabi1.DV_Cyl_L_rc * 2)  &
   radius = (.Stabi1.DV_Cyl_L_rc)
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({-.Stabi1.DV_PlateDepth / 2, -.Stabi1.DV_PlateHeight, .Stabi1.DV_PlateWidth / 2}, .Stabi1.PART_L_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, 0}, .Stabi1.PART_L_Plate.MARKER_35))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({0, -2.0E-002, 0}, .Stabi1.PART_L_Plate.MARKER_25))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_L_Plate.MARKER_25))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_L_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_L_Leg.MARKER_24))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_PlateDepth, -2.0E-002, 0}, .Stabi1.PART_L_Plate.MARKER_25))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_L_Plate.MARKER_25))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -5.0E-002}, .Stabi1.PART_L_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, 4.1E-002 - .Stabi1.DV_PlateHeight, 0}, .Stabi1.PART_L_Plate.MARKER_30))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 5.0E-002}, .Stabi1.PART_L_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_L_Plate.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 4.1E-002 - .Stabi1.DV_PlateHeight, 0}, .Stabi1.PART_L_Plate.MARKER_34))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_L_Slave))  &
   relative_to = .Stabi1.PART_L_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape link  &
   link_name = .Stabi1.PART_L_Plate.LINK_13  &
   width = (8.0E-002meter)  &
   depth = (2.0E-002meter)
!
geometry modify shape link  &
   link_name = .Stabi1.PART_L_Plate.LINK_131  &
   width = (8.0E-002meter)  &
   depth = (2.0E-002meter)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_9.BLEND_1  &
   radius1 = (5.0cm)  &
   radius2 = (5.0cm)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_9.BLEND_2  &
   radius1 = (5.0cm)  &
   radius2 = (5.0cm)
!
geometry modify shape block  &
   block_name = .Stabi1.PART_L_Plate.BOX_9  &
   diag_corner_coords =   &
      (.Stabi1.DV_PlateDepth),  &
      (-2.0E-002meter),  &
      (.Stabi1.DV_PlateWidth)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_10.BLEND_1  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_10.BLEND_2  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify shape block  &
   block_name = .Stabi1.PART_L_Plate.BOX_10  &
   diag_corner_coords =   &
      (2.0E-002meter),  &
      (-2.0E-002meter),  &
      (.Stabi1.DV_PlateWidth)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_11.BLEND_1  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_L_Plate.BOX_11.BLEND_2  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify shape block  &
   block_name = .Stabi1.PART_L_Plate.BOX_11  &
   diag_corner_coords =   &
      (-2.0E-002meter),  &
      (-2.0E-002meter),  &
      (.Stabi1.DV_PlateWidth)
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_85  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_93  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_R_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_R_Leg.MARKER_24))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_R_Cyl_Arm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.Mkr_Cyl_Arm_side  &
   location =   &
      (LOC_RELATIVE_TO({0, -.Stabi1.DV_Legwidth, 0}, .Stabi1.ground.Mkr_R_Cyl_Arm)S)  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_PlateJoint_x, -.Stabi1.DV_Legwidth, .Stabi1.DV_PlateJoint_z}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Leg.MARKER_48  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_R_Cyl_Arm))  &
   relative_to = .Stabi1.PART_R_Leg
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_R_Leg.CYLINDER_6  &
   length = (.Stabi1.DV_Legwidth)  &
   radius = (3.75E-002meter)
!
geometry modify shape link  &
   link_name = .Stabi1.PART_R_Leg.LINK_5  &
   width = (5.16227766E-002meter)  &
   depth = (0.1258113883meter)
!
geometry modify shape link  &
   link_name = .Stabi1.PART_R_Leg.LINK_8  &
   width = (0.1041421356meter)  &
   depth = (5.0E-002meter)
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.MARKER_44_2))  &
   relative_to = .Stabi1.PART_Cyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.MARKER_44_2))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Stabi1.ground.MARKER_44_2, .Stabi1.ground.Mkr_R_Cyl_Arm, "z"))  &
   relative_to = .Stabi1.PART_Cyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .Stabi1.DV_Cyl_R_rc, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_R_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_cyl.CYLINDER  &
   length = (.Stabi1.DV_Cyl_R_min_length - .Stabi1.DV_Cyl_R_rc)  &
   radius = (.Stabi1.DV_Cyl_R_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_cyl.CYLINDER_2  &
   length = (.Stabi1.DV_Cyl_R_rc * 2)  &
   radius = (.Stabi1.DV_Cyl_R_rc)
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_pis.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_R_Cyl_Arm))  &
   relative_to = .Stabi1.PART_Cyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_R_Cyl_Arm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .Stabi1.DV_Cyl_R_rc, 0}, .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave))  &
   relative_to = .Stabi1.PART_Cyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_R_pis.MKR_R_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_Cyl_R_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_Cyl_R_cyl.MKR_R_cyl_master))  &
   relative_to = .Stabi1.PART_Cyl_R_pis
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_pis.CYLINDER_3  &
   length = (.Stabi1.DV_Cyl_R_min_length)  &
   radius = (.Stabi1.DV_Cyl_R_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .Stabi1.PART_Cyl_R_pis.CYLINDER_4  &
   length = (.Stabi1.DV_Cyl_R_rc * 2)  &
   radius = (.Stabi1.DV_Cyl_R_rc)
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_92  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_R_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_R_Leg.MARKER_24))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({-.Stabi1.DV_PlateDepth / 2, -.Stabi1.DV_PlateHeight, .Stabi1.DV_PlateWidth / 2}, .Stabi1.PART_R_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -90, 0}, .Stabi1.PART_R_Plate.MARKER_35))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({0, -2.0E-002, 0}, .Stabi1.PART_R_Plate.MARKER_25))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_R_Plate.MARKER_25))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({.Stabi1.DV_PlateDepth, -2.0E-002, 0}, .Stabi1.PART_R_Plate.MARKER_25))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.PART_R_Plate.MARKER_25))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_30  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -5.0E-002}, .Stabi1.PART_R_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_31  &
   location =   &
      (LOC_RELATIVE_TO({0, 4.1E-002 - .Stabi1.DV_PlateHeight, 0}, .Stabi1.PART_R_Plate.MARKER_30))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 5.0E-002}, .Stabi1.PART_R_Leg.MARKER_24))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
marker modify  &
   marker_name = .Stabi1.PART_R_Plate.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 4.1E-002 - .Stabi1.DV_PlateHeight, 0}, .Stabi1.PART_R_Plate.MARKER_34))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .Stabi1.ground.Mkr_Stabi_R_Slave))  &
   relative_to = .Stabi1.PART_R_Plate
!
defaults coordinate_system  &
   default_coordinate_system = .Stabi1.ground
!
geometry modify shape link  &
   link_name = .Stabi1.PART_R_Plate.LINK_13  &
   width = (8.0E-002meter)  &
   depth = (2.0E-002meter)
!
geometry modify shape link  &
   link_name = .Stabi1.PART_R_Plate.LINK_131  &
   width = (8.0E-002meter)  &
   depth = (2.0E-002meter)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_9.BLEND_1  &
   radius1 = (5.0cm)  &
   radius2 = (5.0cm)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_9.BLEND_2  &
   radius1 = (5.0cm)  &
   radius2 = (5.0cm)
!
geometry modify shape block  &
   block_name = .Stabi1.PART_R_Plate.BOX_9  &
   diag_corner_coords =   &
      (.Stabi1.DV_PlateDepth),  &
      (-2.0E-002meter),  &
      (.Stabi1.DV_PlateWidth)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_10.BLEND_1  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_10.BLEND_2  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify shape block  &
   block_name = .Stabi1.PART_R_Plate.BOX_10  &
   diag_corner_coords =   &
      (2.0E-002meter),  &
      (-2.0E-002meter),  &
      (.Stabi1.DV_PlateWidth)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_11.BLEND_1  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify feature blend  &
   blend_name = .Stabi1.PART_R_Plate.BOX_11.BLEND_2  &
   radius1 = (1.0cm)  &
   radius2 = (1.0cm)
!
geometry modify shape block  &
   block_name = .Stabi1.PART_R_Plate.BOX_11  &
   diag_corner_coords =   &
      (-2.0E-002meter),  &
      (-2.0E-002meter),  &
      (.Stabi1.DV_PlateWidth)
!
model display  &
   model_name = Stabi1
