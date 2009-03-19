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
   model_name = BH1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Stick_F  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Stick_P  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Stick_V  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Boom_F  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Boom_P  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Boom_V  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Tele_F  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Tele_P  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Tele_V  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Buc_F  &
   adams_id = 11  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Buc_P  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .BH1.SV_Cyl_Buc_V  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .BH1.steel  &
   adams_id = 12  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_2  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_3  &
   adams_id = 2  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_4  &
   adams_id = 4  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_5  &
   adams_id = 5  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_6  &
   adams_id = 6  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_7  &
   adams_id = 7  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_8  &
   adams_id = 9  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_9  &
   adams_id = 10  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
material create  &
   material_name = .BH1.steel_10  &
   adams_id = 11  &
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
   default_coordinate_system = .BH1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.ground.MKR_Master  &
   adams_id = 1  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.ground.MKR_Master  &
   visibility = on
!
marker create  &
   marker_name = .BH1.ground.Mkr_slave  &
   adams_id = 45  &
   location = 0.1, 0.0, 1.5  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.ground.Mkr_slave  &
   visibility = on
!
!--------------------------------- Part_Boom ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Boom  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Boom
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 1.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_2  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MKR_3  &
   adams_id = 3  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MKR_3  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.cm  &
   adams_id = 22  &
   location = -0.8229814564, 0.0, 1.7306237157  &
   orientation = -3.4637752052E-009d, -48.8723289889d, 1.2225839939E-007d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_4  &
   adams_id = 4  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_4  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_5  &
   adams_id = 5  &
   location = -1.6686565114, 0.0, 2.4337313023  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_5  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_6  &
   adams_id = 6  &
   location = -1.6686565114, 0.0, 2.4337313023  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_6  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_7  &
   adams_id = 7  &
   location = -0.9998327638, 0.0, 1.9799665528  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_7  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_8  &
   adams_id = 8  &
   location = -0.9998327638, 0.0, 1.9799665528  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_8  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_9  &
   adams_id = 9  &
   location = 0.0, 0.0, 1.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_9  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_91  &
   adams_id = 91  &
   location = 0.0, 0.0, 1.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_91  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_69  &
   adams_id = 69  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_69  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_83  &
   adams_id = 83  &
   location = -0.9998327638, 0.0, 1.9799665528  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_83  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom.MARKER_93  &
   adams_id = 93  &
   location = -1.6686565114, 0.0, 2.4337313023  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom.MARKER_93  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Boom  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BH1.Part_Boom.LINK_1  &
   i_marker = .BH1.Part_Boom.MARKER_2  &
   j_marker = .BH1.Part_Boom.MKR_3  &
   width = 0.2  &
   depth = 0.25
!
geometry create shape link  &
   link_name = .BH1.Part_Boom.LINK_2  &
   i_marker = .BH1.Part_Boom.MARKER_4  &
   j_marker = .BH1.Part_Boom.MARKER_5  &
   width = 0.2  &
   depth = 0.25
!
geometry create shape link  &
   link_name = .BH1.Part_Boom.LINK_3  &
   i_marker = .BH1.Part_Boom.MARKER_6  &
   j_marker = .BH1.Part_Boom.MARKER_7  &
   width = 0.2  &
   depth = 0.25
!
geometry create shape link  &
   link_name = .BH1.Part_Boom.LINK_4  &
   i_marker = .BH1.Part_Boom.MARKER_8  &
   j_marker = .BH1.Part_Boom.MARKER_9  &
   width = 0.2  &
   depth = 0.25
!
part attributes  &
   part_name = .BH1.Part_Boom  &
   color = YELLOW  &
   name_visibility = off
!
!------------------------------- Part_Stick_in --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Stick_in  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Stick_in
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_10  &
   adams_id = 10  &
   location = -1.6686565114, 0.0, 2.4337313023  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_10  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MKR_p1  &
   adams_id = 11  &
   location = -1.3946404661, 0.0, 2.8289280932  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MKR_p1  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.cm  &
   adams_id = 23  &
   location = -1.8792618054, 0.0, 2.0128205105  &
   orientation = -179.9999999935d, -26.9216438591d, -90.0000095828d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_12  &
   adams_id = 12  &
   location = -1.6686565114, 0.0, 2.4337313023  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_12  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_13  &
   adams_id = 13  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_13  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_14  &
   adams_id = 14  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_14  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_15  &
   adams_id = 15  &
   location = -2.3300807998, 0.0, 1.0483612477  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_15  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_65  &
   adams_id = 65  &
   location = -1.3946404661, 0.0, 2.8289280932  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_65  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_70  &
   adams_id = 70  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -180.0d, -23.4755326267d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_70  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_94  &
   adams_id = 94  &
   location = -1.6686565114, 0.0, 2.4337313023  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_94  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_in.MARKER_105  &
   adams_id = 105  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_in.MARKER_105  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Stick_in  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BH1.Part_Stick_in.LINK_5  &
   i_marker = .BH1.Part_Stick_in.MARKER_10  &
   j_marker = .BH1.Part_Stick_in.MKR_p1  &
   width = 0.14  &
   depth = 0.175
!
geometry create shape link  &
   link_name = .BH1.Part_Stick_in.LINK_6  &
   i_marker = .BH1.Part_Stick_in.MARKER_12  &
   j_marker = .BH1.Part_Stick_in.MARKER_13  &
   width = 0.175  &
   depth = 0.175
!
geometry create shape link  &
   link_name = .BH1.Part_Stick_in.LINK_7  &
   i_marker = .BH1.Part_Stick_in.MARKER_14  &
   j_marker = .BH1.Part_Stick_in.MARKER_15  &
   width = 0.14  &
   depth = 0.175
!
part attributes  &
   part_name = .BH1.Part_Stick_in  &
   color = SILVER  &
   name_visibility = off
!
!------------------------------- Part_Stick_out -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Stick_out  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Stick_out
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_16  &
   adams_id = 16  &
   location = -2.3499986705, 0.0, 1.0024997341  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_16  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_17  &
   adams_id = 17  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_17  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.cm  &
   adams_id = 24  &
   location = -2.0755487895, 0.0, 1.662294026  &
   orientation = -1.0798205507E-008d, 21.8206339071d, 2.0262673003E-007d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_18  &
   adams_id = 18  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_18  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_19  &
   adams_id = 19  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_19  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_20  &
   adams_id = 20  &
   location = -2.3499986705, 0.0, 1.0024997341  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_20  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_21  &
   adams_id = 21  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_21  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_51  &
   adams_id = 51  &
   location = -2.3499986705, 0.0, 1.0024997341  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_51  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_53  &
   adams_id = 53  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_53  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_71  &
   adams_id = 71  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -180.0d, -23.4755326267d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_71  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_107  &
   adams_id = 107  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_107  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_out.MARKER_119  &
   adams_id = 119  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_out.MARKER_119  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Stick_out  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BH1.Part_Stick_out.LINK_8  &
   i_marker = .BH1.Part_Stick_out.MARKER_16  &
   j_marker = .BH1.Part_Stick_out.MARKER_17  &
   width = 0.2  &
   depth = 0.25
!
geometry create shape link  &
   link_name = .BH1.Part_Stick_out.LINK_9  &
   i_marker = .BH1.Part_Stick_out.MARKER_18  &
   j_marker = .BH1.Part_Stick_out.MARKER_19  &
   width = 0.2  &
   depth = 0.25
!
geometry create shape link  &
   link_name = .BH1.Part_Stick_out.LINK_10  &
   i_marker = .BH1.Part_Stick_out.MARKER_20  &
   j_marker = .BH1.Part_Stick_out.MARKER_21  &
   width = 0.2  &
   depth = 0.25
!
part attributes  &
   part_name = .BH1.Part_Stick_out  &
   color = YELLOW  &
   name_visibility = off
!
!--------------------------------- Part_Link3 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Link3  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Link3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Link3.MARKER_126  &
   adams_id = 126  &
   location = -2.3694702772, 0.0, 0.7498940554  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link3.MARKER_126  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link3.MARKER_25  &
   adams_id = 25  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link3.MARKER_25  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link3.MARKER_26  &
   adams_id = 26  &
   location = -2.3694702772, 0.0, 0.7498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link3.MARKER_26  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link3.cm  &
   adams_id = 42  &
   location = -2.3694702772, 0.0, 0.8498940554  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link3.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link3.MARKER_52  &
   adams_id = 52  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link3.MARKER_52  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link3.Mkr_BucShell  &
   adams_id = 388  &
   location = -2.3194702772, 0.0, 0.9498940554  &
   orientation = 0.0d, -90.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link3.Mkr_BucShell  &
   visibility = on  &
   name_visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Link3  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BH1.Part_Link3.link3  &
   i_marker = .BH1.Part_Link3.MARKER_25  &
   j_marker = .BH1.Part_Link3.MARKER_26  &
   width = 6.0E-002  &
   depth = 7.5E-002
!
geometry create shape shell  &
   shell_name = .BH1.Part_Link3.SHL109  &
   reference_marker = .BH1.Part_Link3.Mkr_BucShell  &
   file_name = (eval(getenv("MDI_SD_LIBRARY_SITE")//"/Level3/Backhoe/SHL109.shl"))  &
   wireframe_only = no
!
part attributes  &
   part_name = .BH1.Part_Link3  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- Part_Link1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Link1  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Link1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Link1.MARKER_128  &
   adams_id = 128  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link1.MARKER_128  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link1.MARKER_27  &
   adams_id = 27  &
   location = -2.3499986705, 0.0, 1.0024997341  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link1.MARKER_27  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link1.MARKER_28  &
   adams_id = 28  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link1.MARKER_28  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link1.cm  &
   adams_id = 43  &
   location = -2.4623124008, 0.0, 0.9476305626  &
   orientation = -179.9999999685d, -63.9628787783d, -179.9999998756d
!
marker attributes  &
   marker_name = .BH1.Part_Link1.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link1.MARKER_50  &
   adams_id = 50  &
   location = -2.3499986705, 0.0, 1.0024997341  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link1.MARKER_50  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link1.MARKER_122  &
   adams_id = 122  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link1.MARKER_122  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Link1  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BH1.Part_Link1.LINK_12  &
   i_marker = .BH1.Part_Link1.MARKER_27  &
   j_marker = .BH1.Part_Link1.MARKER_28  &
   width = 6.0E-002  &
   depth = 7.5E-002
!
part attributes  &
   part_name = .BH1.Part_Link1  &
   color = SILVER  &
   name_visibility = off
!
!------------------------------ PART_To_BHPlate -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.PART_To_BHPlate  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.PART_To_BHPlate
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_92  &
   adams_id = 92  &
   location = 0.0, 0.0, 1.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_92  &
   visibility = on
!
marker create  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_84  &
   adams_id = 84  &
   location = 0.1, 0.0, 1.5  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_84  &
   visibility = on
!
marker create  &
   marker_name = .BH1.PART_To_BHPlate.cm  &
   adams_id = 90  &
   location = 5.5E-002, 5.0E-003, 1.255  &
   orientation = 0.0d, 11.309932474d, 0.0d
!
marker attributes  &
   marker_name = .BH1.PART_To_BHPlate.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_85  &
   adams_id = 85  &
   location = 0.1, 0.0, 1.5  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_85  &
   visibility = on
!
marker create  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_87  &
   adams_id = 87  &
   location = 0.0, 0.0, 1.0  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_87  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.PART_To_BHPlate  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .BH1.PART_To_BHPlate.BOX_14  &
   adams_id = 14  &
   corner_marker = .BH1.PART_To_BHPlate.MARKER_84  &
   diag_corner_coords = 1.0E-002, 1.0E-002, 1.0E-002
!
geometry create shape block  &
   block_name = .BH1.PART_To_BHPlate.BOX_15  &
   adams_id = 15  &
   corner_marker = .BH1.PART_To_BHPlate.MARKER_87  &
   diag_corner_coords = 1.0E-002, 1.0E-002, 1.0E-002
!
part attributes  &
   part_name = .BH1.PART_To_BHPlate  &
   color = RED  &
   name_visibility = off
!
!------------------------------- Part_Stick_cyl -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Stick_cyl  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Stick_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Stick_cyl.MARKER_68  &
   adams_id = 68  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_cyl.MARKER_68  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_cyl.MKR__Stick_cyl_master  &
   adams_id = 54  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_cyl.MKR__Stick_cyl_master  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_cyl.cm  &
   adams_id = 55  &
   location = -0.8872253982, 0.0, 1.9621260059  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_cyl.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_2  &
   adams_id = 56  &
   location = -0.6199782557, 5.0E-002, 1.5055956511  &
   orientation = 90.0d, 0.0d, 30.3441706829d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_2  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_6  &
   adams_id = 57  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_6  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_11  &
   adams_id = 58  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_11  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Stick_cyl  &
   material_type = .BH1.steel_6
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Stick_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .BH1.Part_Stick_cyl.MKR__Stick_cyl_master  &
   angle_extent = 360.0  &
   length = 1.15  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Stick_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .BH1.Part_Stick_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Stick_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!------------------------------- Part_Stick_pis -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Stick_pis  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Stick_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Stick_pis.MARKER_64  &
   adams_id = 64  &
   location = -1.3946404661, 0.0, 2.8289280932  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_pis.MARKER_64  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_pis.MKR__Stick_pis_slave  &
   adams_id = 59  &
   location = -1.3946404661, 0.0, 2.8289280932  &
   orientation = 180.0d, 30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_pis.MKR__Stick_pis_slave  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_pis.cm  &
   adams_id = 60  &
   location = -1.1673035774, 0.0, 2.4405752395  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_pis.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_4  &
   adams_id = 61  &
   location = -1.3946404661, -5.0E-002, 2.8289280932  &
   orientation = -90.0d, 0.0d, -30.3441706829d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_4  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_5  &
   adams_id = 62  &
   location = -1.3946404661, 0.0, 2.8289280932  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_5  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_12  &
   adams_id = 63  &
   location = -0.6199782557, 0.0, 1.5055956511  &
   orientation = 0.0d, -30.3441706829d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_12  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Stick_pis  &
   material_type = .BH1.steel_6
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Stick_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .BH1.Part_Stick_pis.MKR__Stick_pis_slave  &
   angle_extent = 360.0  &
   length = 1.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Stick_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .BH1.Part_Stick_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Stick_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!------------------------------- Part_Boom_cyl --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Boom_cyl  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Boom_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Boom_cyl.MARKER_86  &
   adams_id = 86  &
   location = 0.1, 0.0, 1.5  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_cyl.MARKER_86  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_cyl.MARKER_98  &
   adams_id = 72  &
   location = 0.1, 0.0, 1.5  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_cyl.MARKER_98  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_cyl.cm  &
   adams_id = 73  &
   location = -0.2032627106, 0.0, 1.6323437186  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_cyl.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_2  &
   adams_id = 74  &
   location = 0.1, 5.0E-002, 1.5  &
   orientation = 90.0d, 0.0d, 66.4235639675d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_2  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_6  &
   adams_id = 75  &
   location = 0.1, 0.0, 1.5  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_6  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_11  &
   adams_id = 76  &
   location = 0.1, 0.0, 1.5  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_11  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Boom_cyl  &
   material_type = .BH1.steel_7
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Boom_cyl.CYLINDER  &
   adams_id = 5  &
   center_marker = .BH1.Part_Boom_cyl.MARKER_98  &
   angle_extent = 360.0  &
   length = 0.75  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Boom_cyl.CYLINDER_2  &
   adams_id = 6  &
   center_marker = .BH1.Part_Boom_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Boom_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!------------------------------- Part_Boom_pis --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Boom_pis  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Boom_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Boom_pis.MARKER_82  &
   adams_id = 82  &
   location = -0.9998327638, 0.0, 1.9799665528  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_pis.MARKER_82  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_pis.MKR_Boom_pis_slave  &
   adams_id = 77  &
   location = -0.9998327638, 0.0, 1.9799665528  &
   orientation = 180.0d, 66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_pis.MKR_Boom_pis_slave  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_pis.cm  &
   adams_id = 78  &
   location = -0.7554254829, 0.0, 1.8733073188  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_pis.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_4  &
   adams_id = 79  &
   location = -0.9998327638, -5.0E-002, 1.9799665528  &
   orientation = -90.0d, 0.0d, -66.4235639675d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_4  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_5  &
   adams_id = 80  &
   location = -0.9998327638, 0.0, 1.9799665528  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_5  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_12  &
   adams_id = 81  &
   location = 0.1, 0.0, 1.5  &
   orientation = 0.0d, -66.4235639675d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_12  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Boom_pis  &
   material_type = .BH1.steel_7
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Boom_pis.CYLINDER_3  &
   adams_id = 7  &
   center_marker = .BH1.Part_Boom_pis.MKR_Boom_pis_slave  &
   angle_extent = 360.0  &
   length = 0.8  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Boom_pis.CYLINDER_4  &
   adams_id = 8  &
   center_marker = .BH1.Part_Boom_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Boom_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!------------------------------- Part_Tele_cyl --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Tele_cyl  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Tele_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Tele_cyl.MARKER_106  &
   adams_id = 106  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_cyl.MARKER_106  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_cyl.MKR__Tele_cyl_master  &
   adams_id = 95  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -180.0d, -23.3510754883d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_cyl.MKR__Tele_cyl_master  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_cyl.cm  &
   adams_id = 96  &
   location = -2.0142274668, 0.0, 1.772738758  &
   orientation = 0.0d, 23.3510754883d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_cyl.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_2  &
   adams_id = 97  &
   location = -1.8045508679, 5.0E-002, 2.2584101736  &
   orientation = 90.0d, 0.0d, 156.6489245117d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_2  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_6  &
   adams_id = 98  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -180.0d, -23.3510754883d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_6  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_11  &
   adams_id = 99  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -180.0d, -23.3510754883d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_11  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Tele_cyl  &
   material_type = .BH1.steel_8
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Tele_cyl.CYLINDER  &
   adams_id = 16  &
   center_marker = .BH1.Part_Tele_cyl.MKR__Tele_cyl_master  &
   angle_extent = 360.0  &
   length = 1.15  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Tele_cyl.CYLINDER_2  &
   adams_id = 17  &
   center_marker = .BH1.Part_Tele_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Tele_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!------------------------------- Part_Tele_pis --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Tele_pis  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Tele_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Tele_pis.MARKER_108  &
   adams_id = 108  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_pis.MARKER_108  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_pis.MKR__Tele_pis_slave  &
   adams_id = 100  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = 0.0d, 23.3510754883d, 180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_pis.MKR__Tele_pis_slave  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_pis.cm  &
   adams_id = 101  &
   location = -2.1911064407, 0.0, 1.3630360914  &
   orientation = 0.0d, 23.3510754883d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_pis.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_4  &
   adams_id = 102  &
   location = -2.3694702772, -5.0E-002, 0.9498940554  &
   orientation = -90.0d, 0.0d, -156.6489245117d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_4  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_5  &
   adams_id = 103  &
   location = -2.3694702772, 0.0, 0.9498940554  &
   orientation = -180.0d, -23.3510754883d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_5  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_12  &
   adams_id = 104  &
   location = -1.8045508679, 0.0, 2.2584101736  &
   orientation = -180.0d, -23.3510754883d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_12  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Tele_pis  &
   material_type = .BH1.steel_8
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Tele_pis.CYLINDER_3  &
   adams_id = 18  &
   center_marker = .BH1.Part_Tele_pis.MKR__Tele_pis_slave  &
   angle_extent = 360.0  &
   length = 1.2  &
   radius = 2.5E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Tele_pis.CYLINDER_4  &
   adams_id = 19  &
   center_marker = .BH1.Part_Tele_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Tele_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!-------------------------------- Part_Buc_cyl --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Buc_cyl  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Buc_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Buc_cyl.MARKER_120  &
   adams_id = 120  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_cyl.MARKER_120  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_cyl.MKR_Buc_cyl_master  &
   adams_id = 109  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -180.0d, -23.9101723478d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_cyl.MKR_Buc_cyl_master  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_cyl.cm  &
   adams_id = 110  &
   location = -2.1417712223, 0.0, 1.8690860039  &
   orientation = 0.0d, 23.9101723478d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_cyl.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_2  &
   adams_id = 111  &
   location = -1.9374305071, 5.0E-002, 2.3299861014  &
   orientation = 90.0d, 0.0d, 156.0898276522d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_2  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_6  &
   adams_id = 112  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -180.0d, -23.9101723478d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_6  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_11  &
   adams_id = 113  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -180.0d, -23.9101723478d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_11  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Buc_cyl  &
   material_type = .BH1.steel_10
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Buc_cyl.CYLINDER  &
   adams_id = 20  &
   center_marker = .BH1.Part_Buc_cyl.MKR_Buc_cyl_master  &
   angle_extent = 360.0  &
   length = 1.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Buc_cyl.CYLINDER_2  &
   adams_id = 21  &
   center_marker = .BH1.Part_Buc_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Buc_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!-------------------------------- Part_Buc_pis --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Buc_pis  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Buc_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Buc_pis.MARKER_121  &
   adams_id = 121  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_pis.MARKER_121  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_pis.MKR_Buc_pis_slave  &
   adams_id = 114  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = 0.0d, 23.9101723478d, 180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_pis.MKR_Buc_pis_slave  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_pis.cm  &
   adams_id = 115  &
   location = -2.4351556306, 0.0, 1.2073436671  &
   orientation = 0.0d, 23.9101723478d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_pis.cm  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_4  &
   adams_id = 116  &
   location = -2.5746261311, -5.0E-002, 0.892761391  &
   orientation = -90.0d, 0.0d, -156.0898276522d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_4  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_5  &
   adams_id = 117  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = -180.0d, -23.9101723478d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_5  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_12  &
   adams_id = 118  &
   location = -1.9374305071, 0.0, 2.3299861014  &
   orientation = -180.0d, -23.9101723478d, -180.0d
!
marker attributes  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_12  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Buc_pis  &
   material_type = .BH1.steel_10
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Buc_pis.CYLINDER_3  &
   adams_id = 22  &
   center_marker = .BH1.Part_Buc_pis.MKR_Buc_pis_slave  &
   angle_extent = 360.0  &
   length = 1.15  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .BH1.Part_Buc_pis.CYLINDER_4  &
   adams_id = 23  &
   center_marker = .BH1.Part_Buc_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 0.1  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .BH1.Part_Buc_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!--------------------------------- Part_Link2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
part create rigid_body name_and_position  &
   part_name = .BH1.Part_Link2  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.Part_Link2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .BH1.Part_Link2.MARKER_125  &
   adams_id = 125  &
   location = -2.3694702772, 0.0, 0.7498940554  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link2.MARKER_125  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link2.MARKER_127  &
   adams_id = 127  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link2.MARKER_127  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link2.MARKER_123  &
   adams_id = 123  &
   location = -2.5746261311, 0.0, 0.892761391  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link2.MARKER_123  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link2.MARKER_124  &
   adams_id = 124  &
   location = -2.3694702772, 0.0, 0.7498940554  &
   orientation = -90.0d, 0.0d, -90.0d
!
marker attributes  &
   marker_name = .BH1.Part_Link2.MARKER_124  &
   visibility = on
!
marker create  &
   marker_name = .BH1.Part_Link2.cm  &
   adams_id = 215  &
   location = -2.4720482041, 0.0, 0.8213277232  &
   orientation = 2.4227402796E-008d, -55.1472488438d, -7.6133564573E-008d
!
marker attributes  &
   marker_name = .BH1.Part_Link2.cm  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .BH1.Part_Link2  &
   material_type = .BH1.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .BH1.Part_Link2.LINK_24  &
   i_marker = .BH1.Part_Link2.MARKER_123  &
   j_marker = .BH1.Part_Link2.MARKER_124  &
   width = 6.0E-002  &
   depth = 7.5E-002
!
geometry attributes  &
   geometry_name = .BH1.Part_Link2.LINK_24  &
   color = SILVER
!
part attributes  &
   part_name = .BH1.Part_Link2  &
   color = SILVER  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_Link2_Link3  &
   adams_id = 22  &
   i_marker_name = .BH1.Part_Link2.MARKER_125  &
   j_marker_name = .BH1.Part_Link3.MARKER_126
!
constraint attributes  &
   constraint_name = .BH1.Jt_Link2_Link3  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_Link1_Link2  &
   adams_id = 23  &
   i_marker_name = .BH1.Part_Link2.MARKER_127  &
   j_marker_name = .BH1.Part_Link1.MARKER_128
!
constraint attributes  &
   constraint_name = .BH1.Jt_Link1_Link2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .BH1.Jt_Link1_StickOut  &
   adams_id = 3  &
   i_marker_name = .BH1.Part_Link1.MARKER_50  &
   j_marker_name = .BH1.Part_Stick_out.MARKER_51
!
constraint attributes  &
   constraint_name = .BH1.Jt_Link1_StickOut  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .BH1.Jt_Link3_StickOut  &
   adams_id = 4  &
   i_marker_name = .BH1.Part_Link3.MARKER_52  &
   j_marker_name = .BH1.Part_Stick_out.MARKER_53
!
constraint attributes  &
   constraint_name = .BH1.Jt_Link3_StickOut  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_StickCyl_StickIn  &
   adams_id = 6  &
   i_marker_name = .BH1.Part_Stick_pis.MARKER_64  &
   j_marker_name = .BH1.Part_Stick_in.MARKER_65
!
constraint attributes  &
   constraint_name = .BH1.Jt_StickCyl_StickIn  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BH1.JT_Stick_cyl_pis  &
   adams_id = 5  &
   i_marker_name = .BH1.Part_Stick_cyl.cyl_MKR_11  &
   j_marker_name = .BH1.Part_Stick_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BH1.JT_Stick_cyl_pis  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .BH1.Jt_BHPlate_Boom  &
   adams_id = 14  &
   i_marker_name = .BH1.Part_Boom.MARKER_91  &
   j_marker_name = .BH1.PART_To_BHPlate.MARKER_92
!
constraint attributes  &
   constraint_name = .BH1.Jt_BHPlate_Boom  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_Boom_StickCyl  &
   adams_id = 8  &
   i_marker_name = .BH1.Part_Stick_cyl.MARKER_68  &
   j_marker_name = .BH1.Part_Boom.MARKER_69
!
constraint attributes  &
   constraint_name = .BH1.Jt_Boom_StickCyl  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .BH1.Jt_StickIn_StickOut  &
   adams_id = 9  &
   i_marker_name = .BH1.Part_Stick_in.MARKER_70  &
   j_marker_name = .BH1.Part_Stick_out.MARKER_71
!
constraint attributes  &
   constraint_name = .BH1.Jt_StickIn_StickOut  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_BoomCyl_Boom  &
   adams_id = 11  &
   i_marker_name = .BH1.Part_Boom_pis.MARKER_82  &
   j_marker_name = .BH1.Part_Boom.MARKER_83
!
constraint attributes  &
   constraint_name = .BH1.Jt_BoomCyl_Boom  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BH1.JT_Boom_cyl_pis  &
   adams_id = 10  &
   i_marker_name = .BH1.Part_Boom_cyl.cyl_MKR_11  &
   j_marker_name = .BH1.Part_Boom_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BH1.JT_Boom_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_BHPlate_BoomCyl  &
   adams_id = 12  &
   i_marker_name = .BH1.PART_To_BHPlate.MARKER_85  &
   j_marker_name = .BH1.Part_Boom_cyl.MARKER_86
!
constraint attributes  &
   constraint_name = .BH1.Jt_BHPlate_BoomCyl  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .BH1.Jt_Boom_StickIn  &
   adams_id = 15  &
   i_marker_name = .BH1.Part_Boom.MARKER_93  &
   j_marker_name = .BH1.Part_Stick_in.MARKER_94
!
constraint attributes  &
   constraint_name = .BH1.Jt_Boom_StickIn  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_StickIn_TeleCyl  &
   adams_id = 17  &
   i_marker_name = .BH1.Part_Stick_in.MARKER_105  &
   j_marker_name = .BH1.Part_Tele_cyl.MARKER_106
!
constraint attributes  &
   constraint_name = .BH1.Jt_StickIn_TeleCyl  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BH1.JT_Tele_cyl_pis  &
   adams_id = 16  &
   i_marker_name = .BH1.Part_Tele_cyl.cyl_MKR_11  &
   j_marker_name = .BH1.Part_Tele_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BH1.JT_Tele_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_TeleCyl_StickOut  &
   adams_id = 18  &
   i_marker_name = .BH1.Part_Stick_out.MARKER_107  &
   j_marker_name = .BH1.Part_Tele_pis.MARKER_108
!
constraint attributes  &
   constraint_name = .BH1.Jt_TeleCyl_StickOut  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_StickOut_BucCyl  &
   adams_id = 20  &
   i_marker_name = .BH1.Part_Stick_out.MARKER_119  &
   j_marker_name = .BH1.Part_Buc_cyl.MARKER_120
!
constraint attributes  &
   constraint_name = .BH1.Jt_StickOut_BucCyl  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .BH1.JT_Buc_cyl_pis  &
   adams_id = 19  &
   i_marker_name = .BH1.Part_Buc_cyl.cyl_MKR_11  &
   j_marker_name = .BH1.Part_Buc_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .BH1.JT_Buc_cyl_pis  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .BH1.Jt_BucCyl_Link1  &
   adams_id = 21  &
   i_marker_name = .BH1.Part_Buc_pis.MARKER_121  &
   j_marker_name = .BH1.Part_Link1.MARKER_122
!
constraint attributes  &
   constraint_name = .BH1.Jt_BucCyl_Link1  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Stick_force  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .BH1.Part_Stick_pis.cyl_MKR_5  &
   j_marker_name = .BH1.Part_Stick_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Boom_force  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .BH1.Part_Boom_pis.cyl_MKR_5  &
   j_marker_name = .BH1.Part_Boom_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Tele_force  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .BH1.Part_Tele_pis.cyl_MKR_5  &
   j_marker_name = .BH1.Part_Tele_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Buc_force  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .BH1.Part_Buc_pis.cyl_MKR_5  &
   j_marker_name = .BH1.Part_Buc_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.25 number_of_steps=100 model_name=.BH1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_4  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_5  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_6  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_7  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_8  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_9  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
simulation script create  &
   sim_script_name = .BH1.Last_Sim_10  &
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
   variable_name = .BH1.DV_CylMount_x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1
!
variable create  &
   variable_name = .BH1.DV_CylMount_z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .BH1.DV_dist_a_MM_cyl  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5099019514
!
variable create  &
   variable_name = .BH1.DV_theta_backhoe  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 11.309932474
!
variable create  &
   variable_name = .BH1.DV_thetab1  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 62.1125008473
!
variable create  &
   variable_name = .BH1.DV_thetab2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 56.8848452113
!
variable create  &
   variable_name = .BH1.DV_thetab3  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 60.640333576
!
variable create  &
   variable_name = .BH1.DV_boom_p3x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.6686565114
!
variable create  &
   variable_name = .BH1.DV_boom_p3z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.4337313023
!
variable create  &
   variable_name = .BH1.DV_boom_p2x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.9998327638
!
variable create  &
   variable_name = .BH1.DV_boom_p2z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9799665528
!
variable create  &
   variable_name = .BH1.DV_boom_p1x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.6199782557
!
variable create  &
   variable_name = .BH1.DV_boom_p1z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5055956511
!
variable create  &
   variable_name = .BH1.DV_thetab8  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 102.5213557068
!
variable create  &
   variable_name = .BH1.DV_thetab7  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 101.2489859886
!
variable create  &
   variable_name = .BH1.DV_thetab6  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 66.8415389284
!
variable create  &
   variable_name = .BH1.DV_thetab5  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 66.4197995373
!
variable create  &
   variable_name = .BH1.DV_thetab4  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 48.6370930841
!
variable create  &
   variable_name = .BH1.DV_stick_out_p3x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -2.3694702772
!
variable create  &
   variable_name = .BH1.DV_stick_out_p3z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -5.0105944569E-002
!
variable create  &
   variable_name = .BH1.DV_stick_out_p2x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -2.3499986705
!
variable create  &
   variable_name = .BH1.DV_stick_out_p2z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.4997340991E-003
!
variable create  &
   variable_name = .BH1.DV_stick_out_p1x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.9374305071
!
variable create  &
   variable_name = .BH1.DV_stick_out_p1z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.3299861014
!
variable create  &
   variable_name = .BH1.DV_stick_in_p1x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.3946404661
!
variable create  &
   variable_name = .BH1.DV_stick_in_p1z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.8289280932
!
variable create  &
   variable_name = .BH1.DV_stick_in_p2x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -1.8045508679
!
variable create  &
   variable_name = .BH1.DV_stick_in_p2z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2584101736
!
variable create  &
   variable_name = .BH1.DV_PFHeight  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.25
!
variable create  &
   variable_name = .BH1.DV_PFWidth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.2
!
variable create  &
   variable_name = .BH1.DV_Bucket_P1x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -2.3694702772
!
variable create  &
   variable_name = .BH1.DV_Bucket_P1z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.2501059446
!
variable create  &
   variable_name = .BH1.DV_thetab9  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 59.555063811
!
variable create  &
   variable_name = .BH1.DV_thetab10  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 26.0371212217
!
variable create  &
   variable_name = .BH1.DV_link1_P1x  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -2.5746261311
!
variable create  &
   variable_name = .BH1.DV_link1_P1z  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.107238609
!
variable create  &
   variable_name = .BH1.DV_Cyl_Stick_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .BH1.DV_Cyl_Stick_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Stick_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .BH1.DV_Cyl_Stick_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.5
!
variable create  &
   variable_name = .BH1.DV_Cyl_Stick_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.5E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Boom_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.8
!
variable create  &
   variable_name = .BH1.DV_Cyl_Boom_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Boom_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.7
!
variable create  &
   variable_name = .BH1.DV_Cyl_Boom_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.4
!
variable create  &
   variable_name = .BH1.DV_Cyl_Boom_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.5E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Tele_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .BH1.DV_Cyl_Tele_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Tele_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.3
!
variable create  &
   variable_name = .BH1.DV_Cyl_Tele_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .BH1.DV_Cyl_Tele_rp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.5E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Buc_min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.15
!
variable create  &
   variable_name = .BH1.DV_Cyl_Buc_rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0E-002
!
variable create  &
   variable_name = .BH1.DV_Cyl_Buc_max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.6
!
variable create  &
   variable_name = .BH1.DV_Cyl_Buc_ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.4
!
variable create  &
   variable_name = .BH1.DV_Cyl_Buc_rp  &
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
   variable_name = .BH1.SV_Cyl_Stick_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Stick_P  &
   function = "DZ( .BH1.Part_Stick_pis.MKR__Stick_pis_slave, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Stick_V  &
   function = "VZ( .BH1.Part_Stick_pis.MKR__Stick_pis_slave, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Boom_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Boom_P  &
   function = "DZ( .BH1.Part_Boom_pis.MKR_Boom_pis_slave, .BH1.Part_Boom_cyl.MARKER_98, .BH1.Part_Boom_cyl.MARKER_98)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Boom_V  &
   function = "VZ( .BH1.Part_Boom_pis.MKR_Boom_pis_slave, .BH1.Part_Boom_cyl.MARKER_98, .BH1.Part_Boom_cyl.MARKER_98, .BH1.Part_Boom_cyl.MARKER_98)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Tele_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Tele_P  &
   function = "DZ( .BH1.Part_Tele_pis.MKR__Tele_pis_slave, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Tele_V  &
   function = "VZ( .BH1.Part_Tele_pis.MKR__Tele_pis_slave, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Buc_F  &
   function = "0"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Buc_P  &
   function = "DZ( .BH1.Part_Buc_pis.MKR_Buc_pis_slave, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master)"
!
data_element modify variable  &
   variable_name = .BH1.SV_Cyl_Buc_V  &
   function = "VZ( .BH1.Part_Buc_pis.MKR_Buc_pis_slave, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Stick_force  &
   function = "BISTOP( ",  &
              "DZ( .BH1.Part_Stick_pis.MKR__Stick_pis_slave, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master) , ",  &
              "VZ( .BH1.Part_Stick_pis.MKR__Stick_pis_slave, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master) , ",  &
              ".BH1.DV_Cyl_Stick_min_length , .BH1.DV_Cyl_Stick_max_length , 50000000 , 1.0 , 20000000 , 0.1 )"
!
force modify direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Boom_force  &
   function = "BISTOP( ",  &
              "DZ( .BH1.Part_Boom_pis.MKR_Boom_pis_slave, .BH1.Part_Boom_cyl.MARKER_98, .BH1.Part_Boom_cyl.MARKER_98) , ",  &
              "VZ( .BH1.Part_Boom_pis.MKR_Boom_pis_slave, .BH1.Part_Boom_cyl.MARKER_98, .BH1.Part_Boom_cyl.MARKER_98, .BH1.Part_Boom_cyl.MARKER_98) , ",  &
              ".BH1.DV_Cyl_Boom_min_length , .BH1.DV_Cyl_Boom_max_length , 50000000 , 1.0 , 20000000 , 0.1 )"
!
force modify direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Tele_force  &
   function = "BISTOP( ",  &
              "DZ( .BH1.Part_Tele_pis.MKR__Tele_pis_slave, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master) , ",  &
              "VZ( .BH1.Part_Tele_pis.MKR__Tele_pis_slave, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master) , ",  &
              ".BH1.DV_Cyl_Tele_min_length , .BH1.DV_Cyl_Tele_max_length , 50000000 , 1.0 , 20000000 , 0.1 )"
!
force modify direct single_component_force  &
   single_component_force_name = .BH1.F_Cyl_Buc_force  &
   function = "VARVAL( .BH1.SV_Cyl_Buc_F) + ",  &
              "BISTOP( ",  &
              "DZ( .BH1.Part_Buc_pis.MKR_Buc_pis_slave, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master) , ",  &
              "VZ( .BH1.Part_Buc_pis.MKR_Buc_pis_slave, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master) , ",  &
              ".BH1.DV_Cyl_Buc_min_length , .BH1.DV_Cyl_Buc_max_length , 50000000 , 1.0 , 20000000 , 0.1 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .BH1.ground.Mkr_slave  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_CylMount_x, 0, .BH1.DV_CylMount_z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_2))
!
material modify  &
   material_name = .BH1.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_5  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_6  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_7  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_8  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_9  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .BH1.steel_10  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MKR_3  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p1x, 0, .BH1.DV_boom_p1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_2))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MKR_3))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p3x, 0, .BH1.DV_boom_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_5))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_8))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p2x, 0, .BH1.DV_boom_p2z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_9  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_91  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_69  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MKR_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_2))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_83  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p2x, 0, .BH1.DV_boom_p2z}, .BH1.ground.MKR_Master))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom.MARKER_93  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p3x, 0, .BH1.DV_boom_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Boom
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape link  &
   link_name = .BH1.Part_Boom.LINK_1  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
geometry modify shape link  &
   link_name = .BH1.Part_Boom.LINK_2  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
geometry modify shape link  &
   link_name = .BH1.Part_Boom.LINK_3  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
geometry modify shape link  &
   link_name = .BH1.Part_Boom.LINK_4  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_10  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_5))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MKR_p1  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_in_p1x, 0, .BH1.DV_stick_in_p1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_5))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_13  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_in_p2x, 0, .BH1.DV_stick_in_p2z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_14  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MARKER_13))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_15  &
   location =   &
      (LOC_ALONG_LINE(.BH1.Part_Stick_out.MARKER_16, .BH1.Part_Stick_in.MARKER_13, 5.0E-002))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_65  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MKR_p1))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_70  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MARKER_13))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BH1.Part_Stick_in.MARKER_13, .BH1.Part_Stick_in.MARKER_15, "z"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_94  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p3x, 0, .BH1.DV_boom_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_in.MARKER_105  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_in_p2x, 0, .BH1.DV_stick_in_p2z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_in
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape link  &
   link_name = .BH1.Part_Stick_in.LINK_5  &
   width = (.BH1.DV_PFWidth * 0.7)  &
   depth = (.BH1.DV_PFHeight * 0.7)
!
geometry modify shape link  &
   link_name = .BH1.Part_Stick_in.LINK_6  &
   width = (.BH1.DV_PFHeight * 0.7)  &
   depth = (.BH1.DV_PFHeight * 0.7)
!
geometry modify shape link  &
   link_name = .BH1.Part_Stick_in.LINK_7  &
   width = (.BH1.DV_PFWidth * 0.7)  &
   depth = (.BH1.DV_PFHeight * 0.7)
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_16  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p2x, 0, .BH1.DV_stick_out_p2z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MARKER_13))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_18  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MARKER_13))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p1x, 0, .BH1.DV_stick_out_p1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_20  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_16))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p3x, 0, .BH1.DV_stick_out_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_51  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_16))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_53  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p3x, 0, .BH1.DV_stick_out_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_71  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_in_p2x, 0, .BH1.DV_stick_in_p2z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BH1.Part_Stick_in.MARKER_13, .BH1.Part_Stick_in.MARKER_15, "z"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_107  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p3x, 0, .BH1.DV_stick_out_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_out.MARKER_119  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p1x, 0, .BH1.DV_stick_out_p1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_out
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape link  &
   link_name = .BH1.Part_Stick_out.LINK_8  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
geometry modify shape link  &
   link_name = .BH1.Part_Stick_out.LINK_9  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
geometry modify shape link  &
   link_name = .BH1.Part_Stick_out.LINK_10  &
   width = (.BH1.DV_PFWidth)  &
   depth = (.BH1.DV_PFHeight)
!
marker modify  &
   marker_name = .BH1.Part_Link3.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_21))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link3
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link3.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_Bucket_P1x, 0, .BH1.DV_Bucket_P1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link3
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link3.MARKER_52  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_21))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link3
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape link  &
   link_name = .BH1.Part_Link3.link3  &
   width = (.BH1.DV_PFWidth * 0.3)  &
   depth = (.BH1.DV_PFHeight * 0.3)
!
marker modify  &
   marker_name = .BH1.Part_Link3.MARKER_126  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link3.MARKER_26))  &
   relative_to = .BH1.Part_Link3
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link3.Mkr_BucShell  &
   location =   &
      (LOC_RELATIVE_TO({5.0E-002, 0, 0.2}, .BH1.Part_Link2.MARKER_125))  &
   orientation =   &
      (ORI_RELATIVE_TO({90, -90, -90}, .BH1.Part_Link2.MARKER_125))  &
   relative_to = .BH1.Part_Link3
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link1.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_16))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link1
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link1.MARKER_28  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_link1_P1x, 0, .BH1.DV_link1_P1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link1
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link1.MARKER_50  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_16))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link1
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link1.MARKER_122  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Link1
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape link  &
   link_name = .BH1.Part_Link1.LINK_12  &
   width = (.BH1.DV_PFWidth * 0.3)  &
   depth = (.BH1.DV_PFHeight * 0.3)
!
marker modify  &
   marker_name = .BH1.Part_Link1.MARKER_128  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   relative_to = .BH1.Part_Link1
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_92  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.PART_To_BHPlate
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_84  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_CylMount_x, 0, .BH1.DV_CylMount_z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_2))  &
   relative_to = .BH1.PART_To_BHPlate
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_85  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_CylMount_x, 0, .BH1.DV_CylMount_z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_2))  &
   relative_to = .BH1.PART_To_BHPlate
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.PART_To_BHPlate.MARKER_87  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.PART_To_BHPlate
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape block  &
   block_name = .BH1.PART_To_BHPlate.BOX_14  &
   diag_corner_coords =   &
      (1.0E-002meter),  &
      (1.0E-002meter),  &
      (1.0E-002meter)
!
geometry modify shape block  &
   block_name = .BH1.PART_To_BHPlate.BOX_15  &
   diag_corner_coords =   &
      (1.0E-002meter),  &
      (1.0E-002meter),  &
      (1.0E-002meter)
!
marker modify  &
   marker_name = .BH1.Part_Stick_cyl.MARKER_68  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MKR_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_2))  &
   relative_to = .BH1.Part_Stick_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_cyl.MKR__Stick_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MKR_3))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BH1.Part_Boom.MKR_3, .BH1.Part_Stick_in.MKR_p1, "z"))  &
   relative_to = .BH1.Part_Stick_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Stick_rc, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   relative_to = .BH1.Part_Stick_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   relative_to = .BH1.Part_Stick_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   relative_to = .BH1.Part_Stick_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Stick_cyl.CYLINDER  &
   length = (.BH1.DV_Cyl_Stick_min_length - .BH1.DV_Cyl_Stick_rc)  &
   radius = (.BH1.DV_Cyl_Stick_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Stick_cyl.CYLINDER_2  &
   length = (.BH1.DV_Cyl_Stick_rc * 2)  &
   radius = (.BH1.DV_Cyl_Stick_rc)
!
marker modify  &
   marker_name = .BH1.Part_Stick_pis.MARKER_64  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_pis.MKR__Stick_pis_slave))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Stick_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_pis.MKR__Stick_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MKR_p1))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   relative_to = .BH1.Part_Stick_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Stick_rc, 0}, .BH1.Part_Stick_pis.MKR__Stick_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Stick_pis.MKR__Stick_pis_slave))  &
   relative_to = .BH1.Part_Stick_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_pis.MKR__Stick_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   relative_to = .BH1.Part_Stick_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Stick_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_cyl.MKR__Stick_cyl_master))  &
   relative_to = .BH1.Part_Stick_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Stick_pis.CYLINDER_3  &
   length = (.BH1.DV_Cyl_Stick_min_length)  &
   radius = (.BH1.DV_Cyl_Stick_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Stick_pis.CYLINDER_4  &
   length = (.BH1.DV_Cyl_Stick_rc * 2)  &
   radius = (.BH1.DV_Cyl_Stick_rc)
!
marker modify  &
   marker_name = .BH1.Part_Boom_cyl.MARKER_86  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_CylMount_x, 0, .BH1.DV_CylMount_z}, .BH1.ground.MKR_Master))  &
   relative_to = .BH1.Part_Boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_cyl.MARKER_98  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.ground.Mkr_slave))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BH1.ground.Mkr_slave, .BH1.Part_Boom.MARKER_7, "z"))  &
   relative_to = .BH1.Part_Boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Boom_rc, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   relative_to = .BH1.Part_Boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   relative_to = .BH1.Part_Boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   relative_to = .BH1.Part_Boom_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Boom_cyl.CYLINDER  &
   length = (.BH1.DV_Cyl_Boom_min_length - .BH1.DV_Cyl_Boom_rc)  &
   radius = (.BH1.DV_Cyl_Boom_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Boom_cyl.CYLINDER_2  &
   length = (.BH1.DV_Cyl_Boom_rc * 2)  &
   radius = (.BH1.DV_Cyl_Boom_rc)
!
marker modify  &
   marker_name = .BH1.Part_Boom_pis.MARKER_82  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_boom_p2x, 0, .BH1.DV_boom_p2z}, .BH1.ground.MKR_Master))  &
   relative_to = .BH1.Part_Boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_pis.MKR_Boom_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom.MARKER_7))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   relative_to = .BH1.Part_Boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Boom_rc, 0}, .BH1.Part_Boom_pis.MKR_Boom_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Boom_pis.MKR_Boom_pis_slave))  &
   relative_to = .BH1.Part_Boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom_pis.MKR_Boom_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   relative_to = .BH1.Part_Boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Boom_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Boom_cyl.MARKER_98))  &
   relative_to = .BH1.Part_Boom_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Boom_pis.CYLINDER_3  &
   length = (.BH1.DV_Cyl_Boom_min_length)  &
   radius = (.BH1.DV_Cyl_Boom_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Boom_pis.CYLINDER_4  &
   length = (.BH1.DV_Cyl_Boom_rc * 2)  &
   radius = (.BH1.DV_Cyl_Boom_rc)
!
marker modify  &
   marker_name = .BH1.Part_Tele_cyl.MARKER_106  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_in_p2x, 0, .BH1.DV_stick_in_p2z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Tele_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_cyl.MKR__Tele_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_in.MARKER_13))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BH1.Part_Stick_in.MARKER_13, .BH1.Part_Stick_out.MARKER_21, "z"))  &
   relative_to = .BH1.Part_Tele_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Tele_rc, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   relative_to = .BH1.Part_Tele_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   relative_to = .BH1.Part_Tele_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   relative_to = .BH1.Part_Tele_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Tele_cyl.CYLINDER  &
   length = (.BH1.DV_Cyl_Tele_min_length - .BH1.DV_Cyl_Tele_rc)  &
   radius = (.BH1.DV_Cyl_Tele_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Tele_cyl.CYLINDER_2  &
   length = (.BH1.DV_Cyl_Tele_rc * 2)  &
   radius = (.BH1.DV_Cyl_Tele_rc)
!
marker modify  &
   marker_name = .BH1.Part_Tele_pis.MARKER_108  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p3x, 0, .BH1.DV_stick_out_p3z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Tele_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_pis.MKR__Tele_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_21))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   relative_to = .BH1.Part_Tele_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Tele_rc, 0}, .BH1.Part_Tele_pis.MKR__Tele_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Tele_pis.MKR__Tele_pis_slave))  &
   relative_to = .BH1.Part_Tele_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Tele_pis.MKR__Tele_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   relative_to = .BH1.Part_Tele_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Tele_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Tele_cyl.MKR__Tele_cyl_master))  &
   relative_to = .BH1.Part_Tele_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Tele_pis.CYLINDER_3  &
   length = (.BH1.DV_Cyl_Tele_min_length)  &
   radius = (.BH1.DV_Cyl_Tele_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Tele_pis.CYLINDER_4  &
   length = (.BH1.DV_Cyl_Tele_rc * 2)  &
   radius = (.BH1.DV_Cyl_Tele_rc)
!
marker modify  &
   marker_name = .BH1.Part_Buc_cyl.MARKER_120  &
   location =   &
      (LOC_RELATIVE_TO({.BH1.DV_stick_out_p1x, 0, .BH1.DV_stick_out_p1z}, .BH1.ground.MKR_Master))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Buc_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_cyl.MKR_Buc_cyl_master  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Stick_out.MARKER_19))  &
   orientation =   &
      (ORI_ALONG_AXIS(.BH1.Part_Stick_out.MARKER_19, .BH1.Part_Link1.MARKER_28, "z"))  &
   relative_to = .BH1.Part_Buc_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Buc_rc, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   relative_to = .BH1.Part_Buc_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   relative_to = .BH1.Part_Buc_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   relative_to = .BH1.Part_Buc_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Buc_cyl.CYLINDER  &
   length = (.BH1.DV_Cyl_Buc_min_length - .BH1.DV_Cyl_Buc_rc)  &
   radius = (.BH1.DV_Cyl_Buc_rc)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Buc_cyl.CYLINDER_2  &
   length = (.BH1.DV_Cyl_Buc_rc * 2)  &
   radius = (.BH1.DV_Cyl_Buc_rc)
!
marker modify  &
   marker_name = .BH1.Part_Buc_pis.MARKER_121  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   orientation =   &
      (ORI_ALIGN_AXIS(.BH1.ground.MKR_Master, "zy"))  &
   relative_to = .BH1.Part_Buc_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_pis.MKR_Buc_pis_slave  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   relative_to = .BH1.Part_Buc_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .BH1.DV_Cyl_Buc_rc, 0}, .BH1.Part_Buc_pis.MKR_Buc_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .BH1.Part_Buc_pis.MKR_Buc_pis_slave))  &
   relative_to = .BH1.Part_Buc_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Buc_pis.MKR_Buc_pis_slave))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   relative_to = .BH1.Part_Buc_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Buc_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Buc_cyl.MKR_Buc_cyl_master))  &
   relative_to = .BH1.Part_Buc_pis
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Buc_pis.CYLINDER_3  &
   length = (.BH1.DV_Cyl_Buc_min_length)  &
   radius = (.BH1.DV_Cyl_Buc_rp)
!
geometry modify shape cylinder  &
   cylinder_name = .BH1.Part_Buc_pis.CYLINDER_4  &
   length = (.BH1.DV_Cyl_Buc_rc * 2)  &
   radius = (.BH1.DV_Cyl_Buc_rc)
!
marker modify  &
   marker_name = .BH1.Part_Link2.MARKER_123  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   relative_to = .BH1.Part_Link2
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link2.MARKER_124  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link3.MARKER_26))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link3.MARKER_26))  &
   relative_to = .BH1.Part_Link2
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
geometry modify shape link  &
   link_name = .BH1.Part_Link2.LINK_24  &
   width = (.BH1.DV_PFWidth * 0.3)  &
   depth = (.BH1.DV_PFHeight * 0.3)
!
marker modify  &
   marker_name = .BH1.Part_Link2.MARKER_125  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link3.MARKER_26))  &
   relative_to = .BH1.Part_Link2
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
marker modify  &
   marker_name = .BH1.Part_Link2.MARKER_127  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .BH1.Part_Link1.MARKER_28))  &
   relative_to = .BH1.Part_Link2
!
defaults coordinate_system  &
   default_coordinate_system = .BH1.ground
!
variable modify  &
   variable_name = .BH1.DV_dist_a_MM_cyl  &
   real_value = ((.BH1.DV_CylMount_x**2 + .BH1.DV_CylMount_z**2)**0.5)
!
variable modify  &
   variable_name = .BH1.DV_theta_backhoe  &
   real_value = (ATAN(.BH1.DV_CylMount_x / .BH1.DV_CylMount_z))
!
variable modify  &
   variable_name = .BH1.DV_thetab1  &
   real_value = (ACOS((0.72**2 - 0.8**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 0.8 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_thetab2  &
   real_value = (ACOS((1.2**2 - 1.4**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 1.4 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_thetab3  &
   real_value = (ACOS((2**2 - 2.2**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 2.2 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_boom_p3x  &
   real_value = (-2.2 * SIN(.BH1.DV_thetab3 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_boom_p3z  &
   real_value = (2.2 * COS(.BH1.DV_thetab3 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_boom_p2x  &
   real_value = (-1.4 * SIN(.BH1.DV_thetab2 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_boom_p2z  &
   real_value = (1.4 * COS(.BH1.DV_thetab2 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_boom_p1x  &
   real_value = (-0.8 * SIN(.BH1.DV_thetab1 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_boom_p1z  &
   real_value = (0.8 * COS(.BH1.DV_thetab1 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_thetab8  &
   real_value = (ACOS((2.53**2 - 2.37**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 2.37 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_thetab7  &
   real_value = (ACOS((2.5**2 - 2.35**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 2.35 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_thetab6  &
   real_value = (ACOS((2.2**2 - 2.35**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 2.35 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_thetab5  &
   real_value = (ACOS((2.05**2 - 2.2**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 2.2 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_thetab4  &
   real_value = (ACOS((2**2 - 2.3**2 - .BH1.DV_dist_a_MM_cyl**2) / (-2 * 2.3 * .BH1.DV_dist_a_MM_cyl)))
!
variable modify  &
   variable_name = .BH1.DV_stick_out_p3x  &
   real_value = (-2.37 * SIN(.BH1.DV_thetab8 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_out_p3z  &
   real_value = (2.37 * COS(.BH1.DV_thetab8 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_out_p2x  &
   real_value = (-2.35 * SIN(.BH1.DV_thetab7 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_out_p2z  &
   real_value = (2.35 * COS(.BH1.DV_thetab7 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_out_p1x  &
   real_value = (-2.35 * SIN(.BH1.DV_thetab6 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_out_p1z  &
   real_value = (2.35 * COS(.BH1.DV_thetab6 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_in_p1x  &
   real_value = (-2.3 * SIN(.BH1.DV_thetab4 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_in_p1z  &
   real_value = (2.3 * COS(.BH1.DV_thetab4 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_in_p2x  &
   real_value = (-2.2 * SIN(.BH1.DV_thetab5 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_stick_in_p2z  &
   real_value = (2.2 * COS(.BH1.DV_thetab5 - .BH1.DV_theta_backhoe))
!
variable modify  &
   variable_name = .BH1.DV_Bucket_P1x  &
   real_value = (.BH1.DV_stick_out_p3x)
!
variable modify  &
   variable_name = .BH1.DV_Bucket_P1z  &
   real_value = (.BH1.DV_stick_out_p3z - 0.2)
!
variable modify  &
   variable_name = .BH1.DV_thetab9  &
   real_value = (ACOS(((.BH1.DV_Bucket_P1x - .BH1.DV_stick_out_p2x)**2 + (.BH1.DV_Bucket_P1z - .BH1.DV_stick_out_p2z)**2 + 0.25**2 - 0.25**2) / (2 * 0.25 * ((.BH1.DV_Bucket_P1x - .BH1.DV_stick_out_p2x)**2 + (.BH1.DV_Bucket_P1z - .BH1.DV_stick_out_p2z)**2)**0.5)))
!
variable modify  &
   variable_name = .BH1.DV_thetab10  &
   real_value = (90 - .BH1.DV_thetab9 - ATAN((.BH1.DV_stick_out_p2x - .BH1.DV_Bucket_P1x) / (.BH1.DV_stick_out_p2z - .BH1.DV_Bucket_P1z)))
!
variable modify  &
   variable_name = .BH1.DV_link1_P1x  &
   real_value = (.BH1.DV_stick_out_p2x - COS(.BH1.DV_thetab10) * 0.25)
!
variable modify  &
   variable_name = .BH1.DV_link1_P1z  &
   real_value = (.BH1.DV_stick_out_p2z - SIN(.BH1.DV_thetab10) * 0.25)
!
material modify  &
   material_name = .BH1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = BH1
