!-----------------------------------------------------------------------!
! 			aviewAS.cmd					!
!									!
! History:								!
! Dec-19-2007	Final version				AAU-student	!
! Jan-03-2007	Added setting of directions		JBM		!
!									!
!-----------------------------------------------------------------------!

model create model="MODEL_1" 
!if condition=(rows(db_immediate_children(NONE, "model")) == 0)
!   interface dialog display dialog=.gui.new_session
!end

!------------- Create library structure -----------------
library create library=.SauerDanfoss
 library create library=.SauerDanfoss.dboxes
 library create library=.SauerDanfoss.macros
 library create library=.SauerDanfoss.variables

!------------- Set units ----------------------------------
default units length=meter mass=kg force=newton time=Second angle=degrees frequency=hz
view manage modify spacing_for_grid=1.0

!------------- Set the view and grid ----------------------
view manage orient view=bottom up_axis=(.MDI.up_axis) forward_axis=(.MDI.forward_axis)
int grid modify orient=(eval(convert_angles({0,-90d,0},"BODY313"))) view_normal=no

!------------- Set gravity --------------------------------
! Check how many gravities we have!
if cond=( DB_OBJECT_COUNT(DB_CHILDREN( db_default( .system_defaults, "model"), "gravity_field") ) > 1)
   mdi gui_utl_alert_box_1 &
      type="Warning" &
      text="This Model has more than one Gravity Field."
end

!------------- Set directions -----------------------------
var set var=.MDI.up_axis      str="Z_pos"
var set var=.MDI.forward_axis str="X_pos"

force create body gravitational gravity = gravity &
      x_comp = 0.0 &
      y_comp = 0.0 &
      z_comp = -9.80665


!------------- Read the menu ------------------------------
interface menubar read menubar=.gui.main.mbar file="sauer-danfoss.mnu"

!!! Read dialog boxes.
file command read file="dbox_acmCircular.cmd"
file command read file="dbox_acmRect.cmd"
file command read file="dbox_acmTeleF.cmd"
file command read file="dbox_BHPlate2.cmd"
file command read file="dbox_cs4w.cmd"
file command read file="dbox_stiffAxle.cmd"
file command read file="dbox_BH1_cyl.cmd"
file command read file="dbox_BH1.cmd"
file command read file="dbox_BHPlate1.cmd"
file command read file="dbox_Loader1.cmd"
file command read file="level2/dbox_cylinder.cmd"
file command read file="level2/dbox_differential.cmd"
file command read file="dbox_SSLRadial.cmd"
file command read file="dbox_SSLVertical.cmd"
file command read file="dbox_TelBoom.cmd"
file command read file="dbox_MarkerLoc.cmd"
file command read file="dbox_MarkerClone.cmd"
file command read file="dbox_MarkerOrialongaxis.cmd"
file command read file="dbox_MarkerOrientrelativeto.cmd"
file command read file="dbox_MarkerLocOri.cmd"
file command read file="dbox_Stabi1.cmd"
file command read file="dbox_driveline.cmd"
file command read file="dbox_testmodel.cmd"
file command read file="dbox_template.cmd"
file command read file="arrayShow.cmd"

macro read  &
   macro_name = writeArray  &
   file_name = "writeArray.cmd"  &
   wrap_in_undo = no  &
   create_panel = no

macro read  &
   macro_name = createDbox  &
   file_name = "createDbox.cmd"  &
   wrap_in_undo = no  &
   create_panel = no

!__________________________Done AviewAS.cmd________________!