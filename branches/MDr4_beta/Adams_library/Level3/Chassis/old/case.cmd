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
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = case
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .case.steel  &
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
   default_coordinate_system = .case.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .case.ground.test_road_ref_1  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .case.ground.test_road_ref_1  &
   visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .case.ground.wgeelRearL_tire_jf_1  &
   adams_id = 11
!
floating_marker create  &
   floating_marker_name = .case.ground.wheelRearR_tire_jf_1  &
   adams_id = 12
!
part create rigid_body mass_properties  &
   part_name = .case.ground  &
   material_type = .case.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .case.ground.wheelCenterR  &
   location = 0.0, 0.67, 1.05
!
point create  &
   point_name = .case.ground.wheelCenterL  &
   location = 0.0, 0.67, -1.05
!
point create  &
   point_name = .case.ground.houseLowerL  &
   location = -0.42, 0.67, -0.735
!
point create  &
   point_name = .case.ground.frontLoverL  &
   location = -0.42, 0.87, -0.315
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .case.ground  &
   name_visibility = off
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
part create rigid_body name_and_position  &
   part_name = .case.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .case.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .case.PART_3.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.67, 1.05  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .case.PART_3.MARKER_2  &
   adams_id = 2  &
   location = -0.42, 0.67, -0.735  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .case.PART_3.cm  &
   adams_id = 14  &
   location = 0.5324514671, 1.5343626326, 0.0  &
   orientation = 257.440980414d, 90.0d, 90.0d
!
marker create  &
   marker_name = .case.PART_3.MARKER_3  &
   adams_id = 3  &
   location = -0.42, 0.87, -0.315  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .case.PART_3.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.67, 1.05  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .case.PART_3.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.67, -1.05  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .case.PART_3  &
   density = 780.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .case.PART_3.BOX_6  &
   adams_id = 6  &
   corner_marker = .case.PART_3.MARKER_2  &
   diag_corner_coords = 1.47, 2.03, 1.47
!
geometry create shape cylinder  &
   cylinder_name = .case.PART_3.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .case.PART_3.MARKER_1  &
   angle_extent = 360.0  &
   length = 2.1  &
   radius = 0.25  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .case.PART_3.CSG_8  &
   adams_id = 8  &
   base_object = .case.PART_3.BOX_6  &
   object = .case.PART_3.CYLINDER_4  &
   type = union
!
geometry create shape block  &
   block_name = .case.PART_3.BOX_7  &
   adams_id = 7  &
   corner_marker = .case.PART_3.MARKER_3  &
   diag_corner_coords = 3.2, 0.84, 0.63
!
part attributes  &
   part_name = .case.PART_3  &
   color = MAIZE  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .case.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=1.0 number_of_steps=50 model_name=.caseChassis initial_static=no"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .case.test_road  &
   definition_name = .MDI.Forces.vpg_road  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0, 90.0, 180.0
!
ude attributes  &
   instance_name = .case.test_road  &
   color = DimGray  &
   visibility = on
!
ude create instance  &
   instance_name = .case.wgeelRearL  &
   definition_name = .MDI.Forces.vpg_tire  &
   location = 0.0, 0.67, -1.05  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .case.wgeelRearL.wheel_part.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
ude create instance  &
   instance_name = .case.wheelRearR  &
   definition_name = .MDI.Forces.vpg_tire  &
   location = 0.0, 0.67, 1.05  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .case.wheelRearR.wheel_part.MARKER_4  &
   adams_id = 4  &
   location = 0.0, 0.0, -0.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .case.test_road.ref_marker  &
   object_value = .case.ground.test_road_ref_1
!
variable modify  &
   variable_name = .case.test_road.road_property_file  &
   string_value = "D:/Skole/M9/cylinder/mdi_2d_flat.rdf"
!
variable modify  &
   variable_name = .case.test_road.road_graphics  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .case.test_road
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .case.wgeelRearL.cm_offset  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wgeelRearL.center_offset  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wgeelRearL.long_vel  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wgeelRearL.spin_vel  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wgeelRearL.side  &
   string_value = "left"
!
variable modify  &
   variable_name = .case.wgeelRearL.road_property_file  &
   string_value = (.case.test_road.road_property_file)
!
variable modify  &
   variable_name = .case.wgeelRearL.j_fmarker  &
   object_value = .case.ground.wgeelRearL_tire_jf_1
!
variable modify  &
   variable_name = .case.wgeelRearL.ref_marker  &
   object_value = (.case.test_road.ref_marker.object_value)
!
variable modify  &
   variable_name = .case.wgeelRearL.wheel_tire_mass  &
   real_value = 70.0
!
variable modify  &
   variable_name = .case.wgeelRearL.Ixx_Iyy  &
   real_value = 10.0
!
variable modify  &
   variable_name = .case.wgeelRearL.Izz  &
   real_value = 12.0
!
variable modify  &
   variable_name = .case.wgeelRearL.property_file  &
   string_value = "D:/Skole/M9/cylinder/caseRearWheel.tir"
!
variable modify  &
   variable_name = .case.wgeelRearL.road_name  &
   string_value = (.case.test_road)
!
ude modify instance  &
   instance_name = .case.wgeelRearL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .case.wheelRearR.cm_offset  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wheelRearR.center_offset  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wheelRearR.long_vel  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wheelRearR.spin_vel  &
   real_value = 0.0
!
variable modify  &
   variable_name = .case.wheelRearR.side  &
   string_value = "right"
!
variable modify  &
   variable_name = .case.wheelRearR.road_property_file  &
   string_value = (.case.test_road.road_property_file)
!
variable modify  &
   variable_name = .case.wheelRearR.j_fmarker  &
   object_value = .case.ground.wheelRearR_tire_jf_1
!
variable modify  &
   variable_name = .case.wheelRearR.ref_marker  &
   object_value = (.case.test_road.ref_marker.object_value)
!
variable modify  &
   variable_name = .case.wheelRearR.wheel_tire_mass  &
   real_value = 70.0
!
variable modify  &
   variable_name = .case.wheelRearR.Ixx_Iyy  &
   real_value = 10.0
!
variable modify  &
   variable_name = .case.wheelRearR.Izz  &
   real_value = 12.0
!
variable modify  &
   variable_name = .case.wheelRearR.property_file  &
   string_value = "D:/Skole/M9/cylinder/caseRearWheel.tir"
!
variable modify  &
   variable_name = .case.wheelRearR.road_name  &
   string_value = (.case.test_road)
!
ude modify instance  &
   instance_name = .case.wheelRearR
!
undo end_block
!
!--------------------------- UDE Dependent Objects ----------------------------!
!
!
constraint create joint revolute  &
   joint_name = .case.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .case.wheelRearR.wheel_part.MARKER_4  &
   j_marker_name = .case.PART_3.MARKER_5
!
constraint attributes  &
   constraint_name = .case.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .case.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .case.wgeelRearL.wheel_part.MARKER_6  &
   j_marker_name = .case.PART_3.MARKER_7
!
constraint attributes  &
   constraint_name = .case.JOINT_2  &
   name_visibility = off
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   y_component_gravity = -9.80665
!
force attributes  &
   force_name = .case.gravity  &
   visibility = off
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .case.wheelWidth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.1
!
variable create  &
   variable_name = .case.overallLength  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.2
!
variable create  &
   variable_name = .case.overallHeight  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.7
!
variable create  &
   variable_name = .case.rearWheelRadius  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.67
!
!---------------------------- Function definitions ----------------------------!
!
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .case.test_road
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .case.wgeelRearL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .case.wheelRearR
!
!------------------------- Part IC Reference Markers --------------------------!
!
!
part modify rigid_body initial_velocity  &
   part_name = .case.wgeelRearL.wheel_part  &
   vm = .case.wgeelRearL.wheel_part.wheel_cm  &
   wm = .case.wgeelRearL.wheel_part.wheel_cm
!
part modify rigid_body initial_velocity  &
   part_name = .case.wheelRearR.wheel_part  &
   vm = .case.wheelRearR.wheel_part.wheel_cm  &
   wm = .case.wheelRearR.wheel_part.wheel_cm
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
point modify  &
   point_name = .case.ground.wheelCenterR  &
   location =   &
      0.0,  &
      (.case.rearWheelRadius),  &
      (.case.wheelWidth * 0.5)
!
marker modify  &
   marker_name = .case.ground.test_road_ref_1  &
   location =   &
      (.case.test_road.location)  &
   orientation =   &
      (.case.test_road.orientation)
!
point modify  &
   point_name = .case.ground.wheelCenterL  &
   location =   &
      0.0,  &
      (.case.rearWheelRadius),  &
      (-(.case.wheelWidth * 0.5))
!
point modify  &
   point_name = .case.ground.houseLowerL  &
   location =   &
      (-(0.2 * .case.wheelWidth)),  &
      (.case.rearWheelRadius),  &
      (-(0.35 * .case.wheelWidth))
!
point modify  &
   point_name = .case.ground.frontLoverL  &
   location =   &
      (-(0.2 * .case.wheelWidth)),  &
      (.case.rearWheelRadius + 0.2),  &
      (-(0.15 * .case.wheelWidth))
!
marker modify  &
   marker_name = .case.PART_3.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.houseLowerL))  &
   relative_to = .case.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
marker modify  &
   marker_name = .case.PART_3.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.frontLoverL))  &
   relative_to = .case.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
geometry modify shape block  &
   block_name = .case.PART_3.BOX_7  &
   diag_corner_coords =   &
      (.case.overallLength),  &
      (0.4 * .case.wheelWidth),  &
      (0.3 * .case.wheelWidth)
!
part modify rigid_body mass_properties  &
   part_name = .case.PART_3  &
   density = (780.0(kg/meter**3))
!
geometry modify shape block  &
   block_name = .case.PART_3.CSG_8.BOX_6  &
   diag_corner_coords =   &
      (0.7 * .case.wheelWidth),  &
      (.case.overallHeight - .case.rearWheelRadius),  &
      (0.7 * .case.wheelWidth)
!
geometry modify shape cylinder  &
   cylinder_name = .case.PART_3.CSG_8.CYLINDER_4  &
   length = (.case.wheelWidth)  &
   radius = (0.25meter)
!
marker modify  &
   marker_name = .case.PART_3.MARKER_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterR))  &
   orientation =   &
      (ORI_ALONG_AXIS(.case.ground.wheelCenterR, .case.ground.wheelCenterL, "Z"))  &
   relative_to = .case.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
marker modify  &
   marker_name = .case.PART_3.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterR))  &
   relative_to = .case.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
marker modify  &
   marker_name = .case.PART_3.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterL))  &
   relative_to = .case.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
material modify  &
   material_name = .case.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .case.wgeelRearL.wheel_part.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterL))  &
   relative_to = .case.wgeelRearL.wheel_part
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
ude modify instance  &
   instance_name = .case.wgeelRearL  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterL))
!
marker modify  &
   marker_name = .case.wheelRearR.wheel_part.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterR))  &
   relative_to = .case.wheelRearR.wheel_part
!
defaults coordinate_system  &
   default_coordinate_system = .case.ground
!
ude modify instance  &
   instance_name = .case.wheelRearR  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .case.ground.wheelCenterR))
!
model display  &
   model_name = case
