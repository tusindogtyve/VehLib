! This file is part of SDlib_plugin.
!    
!  Copyright (c) 2008 Sauer-Danfoss http://www.sauer-danfoss.com
!
! Permission is hereby granted, free of charge, to any person obtaining
! a copy of this software and associated documentation files (the
! "Software"), to deal in the Software without restriction, including
! without limitation the rights to use, copy, modify, merge, publish,
! distribute, sublicense, and/or sell copies of the Software, and to
! permit persons to whom the Software is furnished to do so, subject to
! the following conditions:
!
! The above copyright notice and this permission notice shall be
! included in all copies or substantial portions of the Software.
! 
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
! EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
! MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
! NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
! LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
! OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
! WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


if cond = (db_exists("Model_1")==0)
	model create model="model_1" 
end


!!! Set the view and grid
var set var=.MDI.up_axis      str="Z_pos"
var set var=.MDI.forward_axis str="X_neg"
!view manage orient view=bottom up_axis=(.MDI.up_axis) forward_axis=(.MDI.forward_axis)
int grid modify orient=(eval(convert_angles({0,-90d,0},"BODY313"))) view_normal=no


!!! Set units.
default units length=meter mass=kg force=newton time=Second angle=degrees frequency=hz

!!! Set gravity.
if cond = (DB_OBJECT_COUNT(DB_CHILDREN( db_default( .system_defaults, "model"), "gravity_field") ) == 0)
	force create body gravitational gravity = gravity &
	      x_comp = 0.0 &
	      y_comp = 0.0 &
	      z_comp = -9.80665
else
        force modify body gravitational gravity = gravity &
	      x_comp = 0.0 &
	      y_comp = 0.0 &
	      z_comp = -9.80665
end

library create library=.SDlib_plugin
library create library=.SDlib_plugin.dboxes
library create library=.SDlib_plugin.macros
library create library=.SDlib_plugin.variables

!!! Read the menu.
interface menubar read menubar=.gui.main.mbar file=(eval(getenv("MDI_SD_DEVTOOLS")//"/sauer-danfoss.mnu"))

!!! Read dialog boxes.
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_acmCircular.cmd"))	! Ackermann axle, round appearance, symmetric cylinder
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_acmRect.cmd"))	! Ackermann axle, square appearance, symmetric cylinder
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_acmTeleF.cmd"))	! Ackermann axle, Merlo telehandler
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BHPlate2.cmd"))	! Slewing mechanism, bakchoe
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_cs4w.cmd"))		! Chassis w. 4 wheels + road
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_stiffAxle.cmd"))	! Rigid axle
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BH1_cyl.cmd"))	! ?
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BH1.cmd"))		! ?
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BHPlate1.cmd"))	! Slewing mechanism, bakhoe
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Loader1.cmd"))	! Loader
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_cylinder.cmd"))	! Cylinder
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_differential.cmd"))	! Driveline
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_SSLRadial.cmd"))	! SSL loader type 1
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_SSLVertical.cmd"))	! SSL loader type 2
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerLoc.cmd"))	! Marker loc
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerClone.cmd"))	! Marker clone
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerOrialongaxis.cmd"))		! Marker orientation along
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerOrientrelativeto.cmd"))	! Marker orientation relative
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerLocOri.cmd"))	! Marker locate and orientate
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Stabi1.cmd"))	! Merlo telehandler stabilizers
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_driveline.cmd"))	! Driveline
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_testmodel.cmd"))	! Empty test model
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/arrayShow.cmd"))		! Macro to display edit sub-model dbox
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_TelBoom.cmd"))	! Telehandler boom v.1
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_template.cmd"))	! Dbox template
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Add_spherical_joint.cmd"))	! Spherical joint
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Add_revolute_joint.cmd"))	! Revolute joint
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_flexbeam.cmd"))		! Generate flexible beam (finite segment)
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_contact_at_beam_elements"))	! Contact between flexible beams
!file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_flexbeam_contact.cmd"))
!file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_backhoe.cmd"))


! Write array macro, called by arrayshow
macro read  & 
   macro_name = .SDlib_plugin.macros.writeArray  &
   file_name = (eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/writeArray.cmd"))  &
   wrap_in_undo = no  &
   create_panel = no

! Create dbox macro, called by arrayshow 
macro read  & 
   macro_name = .SDlib_plugin.macros.createDbox  &
   file_name = (eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/createDbox.cmd"))  &
   wrap_in_undo = no  &
   create_panel = no

! Macro to calculate areaInertia of flexbeam
macro read & 
	macro_name = .SDlib_plugin.macros.AreaInertia &
	file_name = (eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/AreaInertia.cmd")) &
	wrap_in_undo = no &
	create_panel = no


! Load plugin macro 
macro create &
      macro=.SDlib_plugin.load  &
      wrap_in_undo=No &
      user="mdi SDlib_plugin load" &
      commands_to_be_executed="! Commands when plugin is loaded: ", &
                              "", &
                              "! Read the menu out of the binary into the current gui library", &
                              "  file binary read &", &
                              "    file=(getenv(\"MDI_USER_PLUGIN_DIR\") // \"/SDlib_plugin\") &", &
                              "    entity= .gui.main.mbar.SauerDanfoss", &
			      "  var set var=.MDI.up_axis      str=\"Z_pos\" ", &
			      "  var set var=.MDI.forward_axis str=\"X_neg\" ", &
			      " int grid modify orient=(eval(convert_angles({0,-90d,0},'BODY313'))) view_normal=no ", &
 			      "  if cond = (db_exists(\"Model_1\")==0) ", &
			      "		model create model=\"Model_1\" ", & 
			      "  end ", &
			      "  if cond = (db_exists('gravity') == 0) ", &
			      "	     force create body gravitational gravity = gravity & ", &
			      "      x_comp = 0.0 & ", &
			      "      y_comp = 0.0 & ", &
			      "      z_comp = -9.80665 ", &
			      "  else ", &
			      "	     force modify body gravitational gravity = gravity & ", &
			      "      x_comp = 0.0 & ", &
			      "      y_comp = 0.0 & ", &
			      "      z_comp = -9.80665 ", &
			      "  end ", &
			      " var cre variable_name = check_graphics_sd real = (putenv('MDI_AVIEW_BITMAPS',(getenv('MDI_AVIEW_BITMAPS')//';'//(getenv('MDI_SD_LIBRARY_SITE'))//'/DboxGraphics'))) ", &
			      " if cond = (db_exists('check_graphics_sd')==1) ", &
			      "      variable delete variable_name = check_graphics_sd ", &
			      " end "
! Unload plugin macro
macro create &
      macro=.SDlib_plugin.unload  &
      wrap_in_undo=No &
      user="mdi SDlib_plugin unload"   &
      commands_to_be_executed="if condition=(db_exists(\".gui.main.mbar.SauerDanfoss\"))", &
                              " entity delete entity_name = .gui.main.mbar.SauerDanfoss", &
                              "end" 

