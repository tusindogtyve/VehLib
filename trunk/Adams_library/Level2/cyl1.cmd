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
   model_name = cyl1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .cyl1.cylForce  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .cyl1.cylPos  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .cyl1.cylVel  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .cyl1.steel  &
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
   default_coordinate_system = .cyl1.ground
!
part create rigid_body mass_properties  &
   part_name = .cyl1.ground  &
   material_type = .cyl1.steel
!
part attributes  &
   part_name = .cyl1.ground  &
   name_visibility = off
!
!---------------------------------- PART_cyl ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
part create rigid_body name_and_position  &
   part_name = .cyl1.PART_cyl  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.PART_cyl
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .cyl1.PART_cyl.MKR_cyl_master  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_cyl.cm  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.1472727273  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_cyl.cyl_MKR_2  &
   adams_id = 2  &
   location = 0.0, 4.0E-002, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_cyl.cyl_MKR_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_cyl.cyl_MKR_11  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .cyl1.PART_cyl  &
   material_type = .cyl1.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .cyl1.PART_cyl.CYLINDER  &
   adams_id = 1  &
   center_marker = .cyl1.PART_cyl.MKR_cyl_master  &
   angle_extent = 360.0  &
   length = 0.36  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .cyl1.PART_cyl.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .cyl1.PART_cyl.cyl_MKR_2  &
   angle_extent = 360.0  &
   length = 8.0E-002  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .cyl1.PART_cyl  &
   color = YELLOW  &
   name_visibility = off
!
!---------------------------------- PART_pis ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
part create rigid_body name_and_position  &
   part_name = .cyl1.PART_pis  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.PART_pis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .cyl1.PART_pis.cyl_MKR_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.5  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_pis.cm  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.399378882  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_pis.cyl_MKR_4  &
   adams_id = 4  &
   location = 0.0, -4.0E-002, 0.5  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_pis.cyl_MKR_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .cyl1.PART_pis.cyl_MKR_12  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .cyl1.PART_pis  &
   material_type = .cyl1.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .cyl1.PART_pis.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .cyl1.PART_pis.cyl_MKR_3  &
   angle_extent = 360.0  &
   length = 0.4  &
   radius = 1.8E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .cyl1.PART_pis.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .cyl1.PART_pis.cyl_MKR_4  &
   angle_extent = 360.0  &
   length = 8.0E-002  &
   radius = 4.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .cyl1.PART_pis  &
   color = DARK_GRAY  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint cylindrical  &
   joint_name = .cyl1.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .cyl1.PART_cyl.cyl_MKR_11  &
   j_marker_name = .cyl1.PART_pis.cyl_MKR_12
!
constraint attributes  &
   constraint_name = .cyl1.JOINT_2  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .cyl1.endforce  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .cyl1.PART_pis.cyl_MKR_5  &
   j_marker_name = .cyl1.PART_cyl.cyl_MKR_6  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .cyl1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.5 number_of_steps=100 model_name=.cyl1 initial_static=no"
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
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
   variable_name = .cyl1.min_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .cyl1.rc  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 4.0E-002
!
variable create  &
   variable_name = .cyl1.max_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.6
!
variable create  &
   variable_name = .cyl1.ini_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .cyl1.rp  &
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
   variable_name = .cyl1.cylForce  &
   function = "0"
!
data_element modify variable  &
   variable_name = .cyl1.cylPos  &
   function = "DZ( .cyl1.PART_pis.cyl_MKR_3, .cyl1.PART_cyl.MKR_cyl_master, .cyl1.PART_cyl.MKR_cyl_master)"
!
data_element modify variable  &
   variable_name = .cyl1.cylVel  &
   function = "VZ( .cyl1.PART_pis.cyl_MKR_3, .cyl1.PART_cyl.MKR_cyl_master, .cyl1.PART_cyl.MKR_cyl_master, .cyl1.PART_cyl.MKR_cyl_master)"
!
force modify direct single_component_force  &
   single_component_force_name = .cyl1.endforce  &
   function = "VARVAL( .cyl1.cylForce) + ",  &
              "BISTOP( ",  &
              "DZ( .cyl1.PART_pis.cyl_MKR_3, .cyl1.PART_cyl.MKR_cyl_master, .cyl1.PART_cyl.MKR_cyl_master) , ",  &
              "VZ( .cyl1.PART_pis.cyl_MKR_3, .cyl1.PART_cyl.MKR_cyl_master, .cyl1.PART_cyl.MKR_cyl_master, .cyl1.PART_cyl.MKR_cyl_master) , ",  &
              ".cyl1.min_length , .cyl1.max_length , 50e6 , 1.0 , 20e6 , 0.01 )"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape cylinder  &
   cylinder_name = .cyl1.PART_cyl.CYLINDER  &
   length = (.cyl1.min_length - .cyl1.rc)  &
   radius = (.cyl1.rc)
!
marker modify  &
   marker_name = .cyl1.PART_cyl.cyl_MKR_2  &
   location =   &
      (LOC_RELATIVE_TO({0, .cyl1.rc, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   relative_to = .cyl1.PART_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .cyl1.PART_cyl.CYLINDER_2  &
   length = (.cyl1.rc * 2)  &
   radius = (.cyl1.rc)
!
marker modify  &
   marker_name = .cyl1.PART_cyl.cyl_MKR_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   relative_to = .cyl1.PART_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
marker modify  &
   marker_name = .cyl1.PART_cyl.cyl_MKR_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   relative_to = .cyl1.PART_cyl
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
marker modify  &
   marker_name = .cyl1.PART_pis.cyl_MKR_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, .cyl1.ini_length}, .cyl1.PART_cyl.MKR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 180, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   relative_to = .cyl1.PART_pis
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .cyl1.PART_pis.CYLINDER_3  &
   length = (.cyl1.min_length)  &
   radius = (.cyl1.rp)
!
marker modify  &
   marker_name = .cyl1.PART_pis.cyl_MKR_4  &
   location =   &
      (LOC_RELATIVE_TO({0, .cyl1.rc, 0}, .cyl1.PART_pis.cyl_MKR_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90, 0}, .cyl1.PART_pis.cyl_MKR_3))  &
   relative_to = .cyl1.PART_pis
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .cyl1.PART_pis.CYLINDER_4  &
   length = (.cyl1.rc * 2)  &
   radius = (.cyl1.rc)
!
marker modify  &
   marker_name = .cyl1.PART_pis.cyl_MKR_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .cyl1.PART_pis.cyl_MKR_3))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   relative_to = .cyl1.PART_pis
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
marker modify  &
   marker_name = .cyl1.PART_pis.cyl_MKR_12  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .cyl1.PART_cyl.MKR_cyl_master))  &
   relative_to = .cyl1.PART_pis
!
defaults coordinate_system  &
   default_coordinate_system = .cyl1.ground
!
material modify  &
   material_name = .cyl1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = cyl1
