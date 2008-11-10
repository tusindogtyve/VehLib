!-----------------------------------------------------------------------!
! Start up file for SD specialized Adams install			!
!									!
! History:								!
! Dec-19-2007	Final version				AAU-student	!
! Jan-03-2007	Added setting of directions		JBM		!
!									!
!-----------------------------------------------------------------------!


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
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_acmCircular.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_acmRect.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_acmTeleF.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BHPlate2.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_cs4w.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_stiffAxle.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BH1_cyl.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BH1.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_BHPlate1.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Loader1.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_cylinder.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_differential.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_SSLRadial.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_SSLVertical.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerLoc.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerClone.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerOrialongaxis.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerOrientrelativeto.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_MarkerLocOri.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Stabi1.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_driveline.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_testmodel.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/arrayShow.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_TelBoom.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_template.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Add_spherical_joint.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_Add_revolute_joint.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_flexbeam.cmd"))
!file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_flexbeam_contact.cmd"))
file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_flexbeam_contact2.cmd"))
!file command read file=(eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/dbox_backhoe.cmd"))


macro read  &
   macro_name = .SDlib_plugin.macros.writeArray  &
   file_name = (eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/writeArray.cmd"))  &
   wrap_in_undo = no  &
   create_panel = no

macro read  &
   macro_name = .SDlib_plugin.macros.createDbox  &
   file_name = (eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/createDbox.cmd"))  &
   wrap_in_undo = no  &
   create_panel = no

macro read &
	macro_name = .SDlib_plugin.macros.AreaInertia &
	file_name = (eval(getenv("MDI_SD_DEVTOOLS")//"/dbox/AreaInertia.cmd")) &
	wrap_in_undo = no &
	create_panel = no


! Create load/unload macros for the plugin: 
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
			      "  end "

macro create &
      macro=.SDlib_plugin.unload  &
      wrap_in_undo=No &
      user="mdi SDlib_plugin unload"   &
      commands_to_be_executed="if condition=(db_exists(\".gui.main.mbar.SauerDanfoss\"))", &
                              " entity delete entity_name = .gui.main.mbar.SauerDanfoss", &
                              "end" 

