!-----------------------------------------------------------------------!
! Start up file for SD specialized Adams install			!
!									!
! History:								!
! Dec-19-2007	Final version				AAU-student	!
! Jan-03-2007	Added setting of directions		JBM		!
!									!
!-----------------------------------------------------------------------!



model create model="MODEL_1" 

!------------- Set directions -----------------------------
var set var=.MDI.up_axis      str="Z_pos"
var set var=.MDI.forward_axis str="X_pos"


int grid modify orient=(eval(convert_angles({0,-90d,0},"BODY313"))) view_normal=no

view manage orient view=bottom up_axis=(.MDI.up_axis) forward_axis=(.MDI.forward_axis)

!!! Set units.
default units length=meter mass=kg force=newton time=Second angle=degrees frequency=hz

!!! Set gravity.
force create body gravitational gravity = gravity &
      x_comp = 0.0 &
      y_comp = 0.0 &
      z_comp = -9.80665


library create library=.SDlib_plugin
library create library=.SDlib_plugin.dboxes
library create library=.SDlib_plugin.macros
library create library=.SDlib_plugin.variables

!!! Read the menu.
interface menubar read menubar=.gui.main.mbar file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/sauer-danfoss.mnu"))

!!! Read dialog boxes.
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_acmCircular.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_acmRect.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_acmTeleF.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_BHPlate2.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_cs4w.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_stiffAxle.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_BH1_cyl.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_BH1.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_BHPlate1.cmd"))
!file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox_CaseLoader.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_Loader1.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_cylinder.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_differential.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_SSLRadial.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_SSLVertical.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_MarkerLoc.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_MarkerClone.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_MarkerOrialongaxis.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_MarkerOrientrelativeto.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_MarkerLocOri.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_Stabi1.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_driveline.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/dbox_testmodel.cmd"))
file command read file=(eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/arrayShow.cmd"))

macro read  &
   macro_name = .SDlib_plugin.macros.skriv  &
   file_name = (eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/arrayShow.cmd"))  &
   wrap_in_undo = no  &
   create_panel = no

macro read  &
   macro_name = .SDlib_plugin.macros.createDbox  &
   file_name = (eval(getenv("MDI_SD_LIBRARY_SITE")//"/dbox/createDbox.cmd"))  &
   wrap_in_undo = no  &
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
                              "    entity= .gui.main.mbar.SauerDanfoss"

macro create &
      macro=.SDlib_plugin.unload  &
      wrap_in_undo=No &
      user="mdi SDlib_plugin unload"   &
      commands_to_be_executed="if condition=(db_exists(\".gui.main.mbar.SauerDanfoss\"))", &
                              " entity delete entity_name = .gui.main.mbar.SauerDanfoss", &
                              "end" 


!file binary write file_name = "SDlib_plugin.bin" &
!	entity_name = .SDlib_plugin, .gui.main.mbar.SauerDanfoss