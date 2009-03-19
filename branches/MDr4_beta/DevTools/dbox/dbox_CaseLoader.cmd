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
interface dialog_box create  &
   dialog_box_name = .SDlib_plugin.dboxes.dbox_CaseLoader  &
   location = 697.0, 46.0  &
   height = 717.0  &
   width = 306.0  &
   units = pixel  &
   horiz_resizing = scale_all  &
   vert_resizing = scale_all  &
   title = "dbox_loader"  &
   iconifiable = no  &
   start_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "! INSTRUCTIONS                               !",  &
                    "! Main model field in this code = $field_18  !",  &
                    "! Old name field in this code   = $field_19  !",  &
                    "! New name field in this code   = $field_1   !",  &
                    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                    "",  &
                    "if condition = (db_exists(\"NewModelName\"))",  &
                    "  var del var = NewModelName",  &
                    "end",  &
                    "",  &
                    "if condition = (db_exists(\"OldModelName\"))",  &
                    "  var del var = OldModelName",  &
                    "end",  &
                    "",  &
                    "if condition = (db_exists(\"MainModelName\"))",  &
                    "  var del var = MainModelName",  &
                    "end",  &
                    "",  &
                    "! These variables holds the names of the models.",  &
                    "var cre var = $_self.NewModelName string_value = \"\"",  &
                    "var cre var = $_self.OldModelName string_value = \"\"",  &
                    "",  &
                    "! Find the name of the main model.",  &
                    "if cond = (db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\") != (none))",  &
                    "  var cre var = $_self.MainModelName string_value = (eval(db_ANCESTOR(db_default( .system_defaults, \"model\"),\"model\")))",  &
                    "else",  &
                    "  var cre var = $_self.MainModelName string_value = (eval(db_default( .system_defaults, \"model\")))",  &
                    "end",  &
                    "!#####################################################!",  &
                    "!                REMEMBER TO CHANGE                   !",  &
                    "int field set field= $_self.field_26 string = ($_self.MainModelName[1])",  &
                    "!#####################################################!",  &
                    "",  &
                    "! It is examined, if the purpose is to change an existing model or to import a new one",  &
                    "if condition = (db_exists(\"dv_model_to_change\"))",  &
                    "  !Find the old name of the submodel",  &
                    "  !#####################################################!",  &
                    "  !                REMEMBER TO CHANGE                   !",  &
                    "  int field set field = $_self.field_16 string = (dv_model_to_change[1])",  &
                    "  !#####################################################!",  &
                    "  ! By default, the new name of the model is set to the original name",  &
                    "  !#####################################################!",  &
                    "  !                REMEMBER TO CHANGE                   !",  &
                    "  int field set field= $_self.field_25 string = $field_16",  &
                    "  !#####################################################!",  &
                    "",  &
                    "  ! Read the values that was used last time for this sub model",  &
                    "  !#####################################################!",  &
                    "  !                REMEMBER TO CHANGE                   !",  &
                    "  int field set field = $_self.field_9 string = ($'field_26.$'field_25'.Dv_CaseLoader_size_link1)",  &
                    "  int field set field = $_self.field_10 string = ($'field_26.$'field_25'.Dv_CaseLoader_size_link2)",  &
                    "  int field set field = $_self.field_11 string = ($'field_26.$'field_25'.Dv_CaseLoader_size_link3)",  &
                    "  int field set field = $_self.field_13 string = ($'field_26.$'field_25'.Dv_CaseLoader_loader_width)",  &
                    "  int field set field = $_self.field_14 string = ($'field_26.$'field_25'.Dv_CaseLoader_bucket_length)",  &
                    "  int field set field = $_self.field_15 string = ($'field_26.$'field_25'.Dv_CaseLoader_bucket_height)",  &
                    "  int field set field = $_self.field_17 string = ($'field_26.$'field_25'.DV_Cyl_Cs_LArm_min_length)",  &
                    "  int field set field = $_self.field_18 string = ($'field_26.$'field_25'.DV_Cyl_Cs_LArm_max_length)",  &
                    "  int field set field = $_self.field_19 string = ($'field_26.$'field_25'.DV_Cyl_LLink1_LArm_min_length)",  &
                    "  int field set field = $_self.field_20 string = ($'field_26.$'field_25'.DV_Cyl_LLink1_LArm_max_length)",  &
                    "  int field set field = $_self.field_21 string = ($'field_26.$'field_25'.DV_Cyl_Cs_RArm_rc)",  &
                    "  int field set field = $_self.field_22 string = ($'field_26.$'field_25'.DV_Cyl_Cs_LArm_ini_length)",  &
                    "  int field set field = $_self.field_23 string = ($'field_26.$'field_25'.DV_Cyl_LLink1_LArm_ini_length)",  &
                    "  int field set field = $_self.field_24 string = ($'field_26.$'field_25'.DV_Cyl_Cs_RArm_rp)",  &
                    "  !#####################################################!",  &
                    "",  &
                    "else",  &
                    "  !There is no old model name...",  &
                    "!#####################################################!",  &
                    "!                REMEMBER TO CHANGE                   !",  &
                    "  int field set field = $_self.field_16 string = \"\"",  &
                    "!#####################################################!",  &
                    "end"  &
   finish_commands = "if condition = (db_exists(\"NewModelName\"))",  &
                     "  var del var = NewModelName",  &
                     "end",  &
                     "",  &
                     "if condition = (db_exists(\"OldModelName\"))",  &
                     "  var del var = OldModelName",  &
                     "end",  &
                     "",  &
		     !------ return view to main model
                     "default model model=(eval($_self.MainModelName))",  &
                     "model display fit_to_view=no",  &
		     !------
                     "if condition = (db_exists(\"MainModelName\"))",  &
                     "  var del var = MainModelName",  &
                     "end"  &
   execution_commands = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "! INSTRUCTIONS                               !",  &
                        "! Main model field in this code = $field_18  !",  &
                        "! Old name field in this code   = $field_19  !",  &
                        "! New name field in this code   = $field_1   !",  &
                        "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",  &
                        "",  &
                        "! Get the new name of the sub model",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "var mod var = $_self.NewModelName string_value = $field_25",  &
                        "!#####################################################!",  &
                        "",  &
                        "! If there is a old sub model put the name in a variable",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "if cond = ((STR_IS_SPACE(\"$field_16\"))==0)",  &
                        " var mod var = $_self.OldModelName string_value = $field_16",  &
                        "!#####################################################!",  &
                        "else ",  &
                        " var mod var = $_self.OldModelName string_value = \"\"",  &
                        "end",  &
                        "",  &
                        "! if the name is changed, the model is renamed:",  &
                        "if condition = (STR_Compare( $_self.OldModelName[1], $_self.NewModelName[1]) != 0 && ((STR_IS_SPACE($_self.OldModelName[1]))==0) )",  &
                        "  entity modify entity = (eval($_self.MainModelName[1]//\".\"//$_self.OldModelName[1])) new = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1]))",  &
                        "end",  &
                        "",  &
                        "! The old model field is updated, since the model name has been changed.",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "int field set field = $_self.field_16 string = (eval($_self.NewModelName[1]))",  &
                        "!#####################################################!",  &
                        "",  &
                        "! it is examined if a new model should be imported or an existing should be edited",  &
                        "if condition=((db_exists (\"DV_model_to_change\")) || (db_exists (eval($_self.NewModelName[1])//\".\"//\"dv_width\")))",  &
                        "else",  &
                        "  ! read the exported model.",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "  file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/Level3/Loader/CaseLoader\"))",  &
                        "!#####################################################!",  &
                        "  model copy &",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "     model_name = CaseLoader &",  &
                        "!#####################################################!",  &
                        "     new_model_name = (eval($_self.MainModelName[1]//\".\"//$_self.NewModelName[1])) &",  &
                        "     view_name = main.front",  &
                        "!#####################################################!",  &
                        "!                REMEMBER TO CHANGE                   !",  &
                        "  model delete model=CaseLoader",  &
                        "!#####################################################!",  &
                        "",  &
                        "end ",  &
                        "",  &
                        "!!! The stuff for pressing OK and Apply",  &
                        "if condition = (db_exists(\"DV_model_to_change\"))",  &
                        "  var mod var = DV_subs &",  &
                        "      index = (eval(DV_model_to_change[2])) &",  &
                        "      string_value = (eval(NewModelName[1]))",  &
                        "",  &
                        "  var mod var = DV_model_to_change &",  &
                        "     index = 1 &",  &
                        "     string_value = (eval($_self.NewModelName[1]))",  &
                        "else",  &
                        "  if condition = (db_exists(\"DV_subs\"))",  &
                        "    var mod var = DV_subs &",  &
                        "        index = (rows(DV_subs)+1) &",  &
                        "        string_value = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "    var cre var = DV_model_to_change &",  &
                        "       index = 1 &",  &
                        "       string_value = (eval($_self.NewModelName[1]))",  &
                        "    var mod var = DV_model_to_change &",  &
                        "       index = 2 &",  &
                        "       string_value = (rows(DV_subs)+1)",  &
                        "  else",  &
                        "    var cre var = (eval($_self.MainModelName[1])//\".\"//\"DV_subs\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval($_self.NewModelName[1]))",  &
                        "",  &
                        "    var cre var = DV_model_to_change &",  &
                        "       index = 1 &",  &
                        "       string_value = (eval($_self.NewModelName[1]))",  &
                        "    var mod var = DV_model_to_change &",  &
                        "       index = 2 &",  &
                        "       string_value = (1)",  &
                        "  end",  &
                        "  if condition = (db_exists(\"DV_subs_dbox\"))",  &
                        "    var mod var = DV_subs_dbox &",  &
                        "        index = (rows(DV_subs_dbox)+1) &",  &
                        "        string_value = (eval($_self))",  &
                        "  else",  &
                        "    var cre var = (eval($_self.MainModelName[1])//\".\"//\"DV_subs_dbox\") &",  &
                        "        index = 1 &",  &
                        "        string_value = (eval($_self))",  &
                        "  end",  &
                        "end",  &
                        "",  &
                        "! Below follows the code of the dialog box ",  &
                        "",  &
                        "!If the implement is not included, load the file",  &
                        "if condition=(DB_EXISTS(\"Mkr_CaseLoader_Master\"))",  &
                        "else",  &
                        "",  &
                        "file command read file=(eval(getenv(\"MDI_SD_LIBRARY_SITE\")//\"/level3/Loader/CaseLoader\"))",  &
                        " ",  &
                        "model merge &",  &
                        "    model_name = .CaseLoader &",  &
                        "    into_model_name = $field_26 &",  &
                        "      &",  &
                        "    rotation = 0.0, 0.0, 0.0  &",  &
                        "    duplicate_parts = merge",  &
                        "",  &
                        " model delete model = .CaseLoader",  &
                        "",  &
                        " model display fit_to_view=yes",  &
                        "end",  &
                        "",  &
                        " ! Setting the angle between the fixation point",  &
                        " variable modify variable=Dv_CaseLoader_thetab real=(-90+atan((Dv_CaseLoader_bx/Dv_CaseLoader_bz)d))",  &
                        "",  &
                        " ! point 1",  &
                        " variable modify variable=Dv_CaseLoader_theta1 real=(Dv_CaseLoader_thetab+acos(((Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2+($field_1)^2-($field_2)^2)/(2*((Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2)^0.5)*($field_1)))d))",  &
                        " variable modify variable=Dv_CaseLoader_p1x real=( Dv_CaseLoader_ArmMountx + $field_1*COS((Dv_CaseLoader_theta1)d))",  &
                        " variable modify variable=Dv_CaseLoader_p1z real=( Dv_CaseLoader_ArmMountz + $field_1*SIN((Dv_CaseLoader_theta1)d))",  &
                        "",  &
                        " ! point 2 ",  &
                        " variable modify variable=Dv_CaseLoader_theta2 real=(Dv_CaseLoader_thetab+acos((Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2+($field_3)^2-($field_4)^2)/(2*(Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2)^0.5*($field_3))d))",  &
                        " variable modify variable=Dv_CaseLoader_p2x real=(Dv_CaseLoader_ArmMountx + $field_3*COS((Dv_CaseLoader_theta2)d))",  &
                        " variable modify variable=Dv_CaseLoader_p2z real=(Dv_CaseLoader_ArmMountz + $field_3*SIN((Dv_CaseLoader_theta2)d))",  &
                        "",  &
                        " ! point 3 ",  &
                        " variable modify variable=Dv_CaseLoader_theta3 real=(Dv_CaseLoader_thetab+acos((Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2+($field_5)^2-($field_6)^2)/(2*(Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2)^0.5*($field_5))d))",  &
                        " variable modify variable=Dv_CaseLoader_p3x real=(Dv_CaseLoader_ArmMountx + $field_5*COS((Dv_CaseLoader_theta3)d))",  &
                        " variable modify variable=Dv_CaseLoader_p3z real=(Dv_CaseLoader_ArmMountz + $field_5*SIN((Dv_CaseLoader_theta3)d))",  &
                        "",  &
                        " ! point 4 ",  &
                        " variable modify variable=Dv_CaseLoader_theta4 real=(Dv_CaseLoader_thetab+acos((Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2+($field_7)^2-($field_8)^2)/(2*(Dv_CaseLoader_bz^2+Dv_CaseLoader_bx^2)^0.5*($field_7))d))",  &
                        " variable modify variable=Dv_CaseLoader_p4x real=(Dv_CaseLoader_ArmMountx + $field_7*COS((Dv_CaseLoader_theta4)d))",  &
                        " variable modify variable=Dv_CaseLoader_p4z real=(Dv_CaseLoader_ArmMountz + $field_7*SIN((Dv_CaseLoader_theta4)d))",  &
                        "",  &
                        " ! Link 1 ",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_size_link1\"))",  &
                        " variable modify variable=Dv_CaseLoader_size_link1 real=($field_9)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_size_link1 real=($field_9)",  &
                        " end",  &
                        "",  &
                        " ! Link 2 ",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_size_link2\"))",  &
                        " variable modify variable=Dv_CaseLoader_size_link2 real=($field_10)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_size_link2 real=($field_10)",  &
                        " end",  &
                        "",  &
                        " ! Link 3 indsættes",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_size_link3\"))",  &
                        " variable modify variable=Dv_CaseLoader_size_link3 real=($field_11)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_size_link3 real=($field_11)",  &
                        " end",  &
                        "",  &
                        " ! The point connecting link 1 and link 2 is set",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_Link1_p3z\"))",  &
                        " variable modify variable=Dv_CaseLoader_Link1_p3z real=(Dv_CaseLoader_p2z+Dv_CaseLoader_size_link1)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_Link1_p3z real=(Dv_CaseLoader_p2z+Dv_CaseLoader_size_link1)",  &
                        " end",  &
                        "",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_Link1_p3x\"))",  &
                        " variable modify variable=Dv_CaseLoader_Link1_p3x real=(Dv_CaseLoader_p2x)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_Link1_p3x real=(Dv_CaseLoader_p2x)",  &
                        " end",  &
                        "",  &
                        " ! The point connection link 2 and link 3 is set",  &
                        " ! The distance from LoaderLink_p3 to Loaderarm_p4 is calculated",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_distp3p4\"))",  &
                        " variable modify variable=Dv_CaseLoader_distp3p4 real=(((Dv_CaseLoader_p4x-Dv_CaseLoader_Link1_p3x)^2+(Dv_CaseLoader_p4z-Dv_CaseLoader_Link1_p3z)^2)^0.5)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_distp3p4 real=(((Dv_CaseLoader_p4x-Dv_CaseLoader_Link1_p3x)^2+(Dv_CaseLoader_p4z-Dv_CaseLoader_Link1_p3z)^2)^0.5)",  &
                        " end",  &
                        "",  &
                        " ! The angle from the line between LoaderLink_p3 to Loaderarm_p4 and vertical is calculated:",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_newangle\"))",  &
                        " variable modify variable=Dv_CaseLoader_newangle real=(90-(asin((Dv_CaseLoader_Link1_p3z-Dv_CaseLoader_p4z)/(Dv_CaseLoader_distp3p4))))",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_newangle real=(90-(asin((Dv_CaseLoader_Link1_p3z-Dv_CaseLoader_p4z)/(Dv_CaseLoader_distp3p4))))",  &
                        " end",  &
                        "",  &
                        " ! The angle between the line connecting LoaderLink1_p3 and Loaderarm_p4 and LoaderLink1_p3 and LoaderLink2_p2 is calculated:",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_newangle2\"))",  &
                        " variable modify variable=Dv_CaseLoader_newangle2 real=(acos(((Dv_CaseLoader_size_link3^2-Dv_CaseLoader_distp3p4^2-Dv_CaseLoader_size_link2^2)/(-2*Dv_CaseLoader_distp3p4*Dv_CaseLoader_size_link2))d))",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_newangle2 real=(acos(((Dv_CaseLoader_size_link3^2-Dv_CaseLoader_distp3p4^2-Dv_CaseLoader_size_link2^2)/(-2*Dv_CaseLoader_distp3p4*Dv_CaseLoader_size_link2))d))",  &
                        " end",  &
                        "",  &
                        " ! Finally the coordinates of the point connecting LoaderLink2 and LoaderLink3 are calculated:",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_Link2_p2x\"))",  &
                        " variable modify variable=Dv_CaseLoader_Link2_p2x real=(Dv_CaseLoader_Link1_p3x+cos(Dv_CaseLoader_newangle+Dv_CaseLoader_newangle2-90)*Dv_CaseLoader_size_link2)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_Link2_p2x real=(Dv_CaseLoader_Link1_p3x+cos(Dv_CaseLoader_newangle+Dv_CaseLoader_newangle2-90)*Dv_CaseLoader_size_link2)",  &
                        " end",  &
                        "",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_Link2_p2z\"))",  &
                        " variable modify variable=Dv_CaseLoader_Link2_p2z real=(Dv_CaseLoader_Link1_p3z+sin(Dv_CaseLoader_newangle+Dv_CaseLoader_newangle2-90)*Dv_CaseLoader_size_link2)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_Link2_p2z real=(Dv_CaseLoader_Link1_p3z+sin(Dv_CaseLoader_newangle+Dv_CaseLoader_newangle2-90)*Dv_CaseLoader_size_link2)",  &
                        " end",  &
                        "",  &
                        " ! The coordinates of the midtpoint on link1 are calculated",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_Link1_p2x\"))",  &
                        " variable modify variable=Dv_CaseLoader_Link1_p2x real= (Dv_CaseLoader_p2x)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_Link1_p2x real= (Dv_CaseLoader_p2x)",  &
                        " end",  &
                        "",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_Link1_p2z\"))",  &
                        " variable modify variable=Dv_CaseLoader_Link1_p2z real= (Dv_CaseLoader_p2z + $field_12)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_Link1_p2z real= (Dv_CaseLoader_p2z + $field_12)",  &
                        " end",  &
                        "",  &
                        " ! creation of the variable loader_width",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_loader_width\"))",  &
                        " variable modify variable=Dv_CaseLoader_loader_width real=($field_13)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_loader_width real=($field_13)",  &
                        " end",  &
                        "",  &
                        "",  &
                        " ! length of the bucket",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_bucket_length\"))",  &
                        " variable modify variable=Dv_CaseLoader_bucket_length real=($field_14)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_bucket_length real=($field_14)",  &
                        " end",  &
                        "",  &
                        " ! height of the bucket",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_bucket_height\"))",  &
                        " variable modify variable=Dv_CaseLoader_bucket_height real=($field_15)",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_bucket_height real=($field_15)",  &
                        " end",  &
                        "",  &
                        " ! creation of theta_bucket",  &
                        " if condition=(DB_EXISTS(\"Dv_CaseLoader_bucket_theta\"))",  &
                        " variable modify variable=Dv_CaseLoader_bucket_theta real= (atan((Dv_CaseLoader_p4x-Dv_CaseLoader_Link2_p2x)/(Dv_CaseLoader_p4z-Dv_CaseLoader_Link2_p2z)d))",  &
                        " else",  &
                        " variable create variable=Dv_CaseLoader_bucket_theta real= (atan((Dv_CaseLoader_p4x-Dv_CaseLoader_Link2_p2x)/(Dv_CaseLoader_p4z-Dv_CaseLoader_Link2_p2z)d))",  &
                        " end",  &
                        "",  &
                        "",  &
                        " ! Cylinder 1&2 min. length",  &
                        " ! Setting the minimum length",  &
                        " variable modify variable=DV_Cyl_Cs_LArm_min_length real=$field_17",  &
                        " variable modify variable=DV_Cyl_Cs_RArm_min_length real=$field_17",  &
                        "",  &
                        "",  &
                        " ! Cylinder 1&2 max. length",  &
                        " ! Setting the maximum length",  &
                        " variable modify variable=DV_Cyl_Cs_LArm_max_length real=$field_18",  &
                        " variable modify variable=DV_Cyl_Cs_RArm_max_length real=$field_18 ",  &
                        "",  &
                        " ! Cylinder 1&2 init. length",  &
                        " ! Setting the initial length",  &
                        " variable modify variable=DV_Cyl_Cs_LArm_ini_length real=$field_22",  &
                        " variable modify variable=DV_Cyl_Cs_RArm_ini_length real=$field_22",  &
                        "",  &
                        "",  &
                        " ! Cylinder 3&4 min. length",  &
                        " ! Setting the minimun length",  &
                        " variable modify variable=DV_Cyl_LLink1_LArm_min_length real=$field_19",  &
                        " variable modify variable=DV_Cyl_RLink1_RArm_min_length real=$field_19",  &
                        "",  &
                        "",  &
                        " ! Cylinder 3&4 max. length",  &
                        " ! Setting the maximum length",  &
                        " variable modify variable=DV_Cyl_LLink1_LArm_max_length real=$field_20",  &
                        " variable modify variable=DV_Cyl_RLink1_RArm_max_length real=$field_20",  &
                        "",  &
                        " ! Cylinder 3&4 init. length",  &
                        " ! Setting the initial length",  &
                        " variable modify variable=DV_Cyl_LLink1_LArm_ini_length real=$field_23",  &
                        " variable modify variable=DV_Cyl_RLink1_RArm_ini_length real=$field_23",  &
                        "",  &
                        " ! Radius of all cylinders",  &
                        " ! Setting the radius",  &
                        " variable modify variable=DV_Cyl_Cs_RArm_rc real=$field_21",  &
                        " variable modify variable=DV_Cyl_Cs_LArm_rc real=$field_21",  &
                        " variable modify variable=DV_Cyl_LLink1_LArm_rc real=$field_21",  &
                        " variable modify variable=DV_Cyl_RLink1_RArm_rc real=$field_21",  &
                        "",  &
                        " ! Radius of all pistons",  &
                        " ! Setting the radius",  &
                        " variable modify variable=DV_Cyl_Cs_RArm_rp real=$field_24",  &
                        " variable modify variable=DV_Cyl_Cs_LArm_rp real=$field_24",  &
                        " variable modify variable=DV_Cyl_LLink1_LArm_rp real=$field_24",  &
                        " variable modify variable=DV_Cyl_RLink1_RArm_rp real=$field_24",  &
                        "",  &
                        "",  &
                        "if condition=(db_exists (\"MKR_slave_frontImp\"))",  &
                        " ! The master marker of the Loader part is placed on the slave marker of the chassis",  &
                        " marker modify marker_name = MKR_CaseLoader_Master &",  &
                        "   location = (LOC_RELATIVE_TO( {0,0,0} , MKR_slave_frontImp )) &",  &
                        "   orientation = (ORI_RELATIVE_TO( {0,0,0} , MKR_slave_frontImp ))",  &
                        "",  &
                        "end"  &
   decorate = yes  &
   resizable = yes  &
   grab_all_input = no
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_CaseLoader.button_1  &
   location = 226.0, 688.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Cancel"  &
   commands = "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "interface dialog undisplay dialog=$_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_CaseLoader.button_2  &
   location = 148.0, 688.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "Apply"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "interface dialog display dialog= $_parent"
!
interface push_button create  &
   push_button_name = .SDlib_plugin.dboxes.dbox_CaseLoader.button_3  &
   location = 70.0, 688.0  &
   height = 25.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_right  &
   vert_resizing = attach_bottom  &
   label = "OK"  &
   commands = "interface dialog execute dialog=$_parent undisp=yes",  &
              "if condition = (db_exists(\"dv_model_to_change\"))",  &
              "  var del var = dv_model_to_change",  &
              "end",  &
              "createdbox"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_1  &
   location = 4.0, 104.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P1"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_2  &
   location = 4.0, 129.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P1"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_3  &
   location = 4.0, 154.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_4  &
   location = 4.0, 179.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_5  &
   location = 4.0, 204.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_6  &
   location = 4.0, 229.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P3"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_7  &
   location = 4.0, 254.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Armmount -> LoaderArm_P4"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_8  &
   location = 4.0, 279.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylindermount -> LoaderArm_P4"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_1  &
   location = 226.0, 104.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.285"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   numeric_type = real  &
   upper_check = none  &
   lower_check = gt  &
   lower_limit = 0.0
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_2  &
   location = 226.0, 129.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.015"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_3  &
   location = 226.0, 154.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.5"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_4  &
   location = 226.0, 179.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.273"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_5  &
   location = 226.0, 204.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_6  &
   location = 226.0, 229.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.745"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_7  &
   location = 226.0, 254.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.39"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_8  &
   location = 226.0, 279.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2.08"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_9  &
   location = 226.0, 304.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".62"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_9  &
   location = 4.0, 304.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 1"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_10  &
   location = 4.0, 329.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 2"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_11  &
   location = 4.0, 354.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of link 3"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_10  &
   location = 226.0, 329.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.05"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_11  &
   location = 226.0, 354.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".485"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_12  &
   location = 4.0, 379.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Distance to cylindermount"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_12  &
   location = 226.0, 379.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".335"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_13  &
   location = 4.0, 404.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Loader width"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_13  &
   location = 226.0, 404.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.5"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_15  &
   location = 4.0, 458.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Height of the bucket"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_16  &
   location = 4.0, 433.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Length of the bucket"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_14  &
   location = 226.0, 433.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "2"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_15  &
   location = 226.0, 458.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_CaseLoader.sep_1  &
   location = 4.0, 429.0  &
   height = 2.0  &
   width = 298.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface separator create  &
   separator_name = .SDlib_plugin.dboxes.dbox_CaseLoader.sep_2  &
   location = 4.0, 483.0  &
   height = 2.0  &
   width = 298.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_23  &
   location = 4.0, 487.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 1&2 min. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_24  &
   location = 4.0, 512.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 1&2 max. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_25  &
   location = 4.0, 587.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 3&4 max. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_26  &
   location = 4.0, 562.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 3&4 min. length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_27  &
   location = 4.0, 637.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of all cylinders"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_17  &
   location = 226.0, 487.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".9"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_18  &
   location = 226.0, 512.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1.7"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_19  &
   location = 226.0, 562.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".5"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_20  &
   location = 226.0, 587.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".8"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_21  &
   location = 226.0, 637.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".03"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_22  &
   location = 226.0, 537.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = "1"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_17  &
   location = 4.0, 537.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "cylinder 1&2 initial length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_18  &
   location = 4.0, 612.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Cylinder 3&4 initial length"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_19  &
   location = 4.0, 662.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Radius of all pistons"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_23  &
   location = 226.0, 612.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".6"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_24  &
   location = 226.0, 662.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   preload_strings = ".018"  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_21  &
   location = 4.0, 4.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Name of main model"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_26  &
   location = 226.0, 4.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_14  &
   location = 4.0, 29.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Old name:"
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_20  &
   location = 4.0, 54.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "New name of submodel:"
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_16  &
   location = 226.0, 29.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = no  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_25  &
   location = 226.0, 54.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = yes  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   string_type = literal  &
   add_quotes = no
!
interface field create  &
   field_name = .SDlib_plugin.dboxes.dbox_CaseLoader.field_27  &
   location = 226.0, 79.0  &
   height = 23.0  &
   width = 76.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   scrollable = no  &
   editable = yes  &
   required = no  &
   execute_cmds_on_exit = no  &
   number_of_values = 1  &
   object_type = old_object  &
   type_filter = model
!
interface label create  &
   label_name = .SDlib_plugin.dboxes.dbox_CaseLoader.label_22  &
   location = 4.0, 79.0  &
   height = 23.0  &
   width = 220.0  &
   units = pixel  &
   horiz_resizing = attach_left  &
   vert_resizing = attach_top  &
   justified = left  &
   text = "Sub model that contains a chassis"
