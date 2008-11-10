!WRAP IN UNDO NO
!This is the program that calculates the Area moment of inertia
!for a rectangular hollow section and a hexagonal hollow section
!$beamName:t=string:d="xxx"
!$sectionType:t=string:d="rect"
!$Hh:t=real:d=0.140
!$Hs:t=real:d=0.090
!$b:t=real:d=0.090
!$t:t=real:d=0.005
!$radius:t=real:d=0.03
!
!calculate internal radius
var cre var=$_self.radiusi real=(eval($radius - $t))
if cond=($_self.radiusi < 0)
var mod var=$_self.radiusi real=(0.0)
end
if cond=("$sectionType" == "rect")
	!Here is the calculations of the area moment of inertia of a hollow rectangular cross section
	!Calculate the inner dimentions
	var cre var=$_self.Hhi real=(eval($Hh - 2.0*$t))
	var cre var=$_self.bi real=(eval($b - 2.0*$t))
	!
	var cre var=$_self.iyy real=(eval((($Hh**3 * $b)/(12)) - ($_self.Hhi**3 * $_self.bi)/(12)))
	var cre var=$_self.izz real=(eval((($Hh * $b**3)/(12)) - ($_self.Hhi * $_self.bi**3)/(12)))
	!
	!Calculate the torsional stiffenss
	var cre var=$_self.Lm real=(eval(($b + $_self.bi) + ($Hh + $_self.Hhi)))
	var cre var=$_self.Am real=(eval((($b + $_self.bi)/2.0) * (($Hh + $_self.Hhi)/2.0)))
	var cre var=$_self.J real=(eval( 4.0 * $t * $_self.Am**2.0 / $_self.Lm ))
	!Calculate the area
	var cre var=$_self.area real=(eval($Hh * $b - $_self.Hhi * $_self.bi - 0.214602*($_self.radiusi**2 - $radius**2)))
	!
end
if cond=("$sectionType" == "hex")
	!Calculate the inner dimentions
	var cre var=$_self.teta real=(eval(atan(($Hh - $Hs)/$b)))
	var cre var=$_self.ty real=(eval((($t)**2 + ($t*($Hh - $Hs)/$b)**2)**0.5))
	var cre var=$_self.Hhi real=(eval($Hh - 2.0* $t / cos($_self.teta)))
	var cre var=$_self.Hsi real=(eval($Hs - 2.0* $t / cos($_self.teta) + 2.0* $t * tan($_self.teta)))
	var cre var=$_self.bi real=(eval($b - 2.0*$t))
	!
	!Calculate the area moment of inertia for the outer hexagon
	var cre var=$_self.At real = (0.25 * ($Hh - $Hs) * $b)
	!
	!The distance from the x-axis to the centroid to the triangle
	var cre var=$_self.dt real = ((2.0*$Hs + $Hh)/ 6.0)
	!
	!The area moment of inertia of a triangle
	var cre var=$_self.Ixt real = (($b * (($Hh - $Hs)/ 2.0)**3)/(36.0))
	var cre var=$_self.Iyt real = (($b**3*($Hh/2.0 - $Hs/2.0))/(48.0))
	!
	!The area moment of inertia of the rectangle
	var cre var=$_self.Ixf real = (($b * $Hs**3)/(12.0))
	var cre var=$_self.Iyf real = (($b**3 * $Hs)/(12.0))
	!
	!!!!!!!repeat for the inner hexagon
	!Calculate the area moment of inertia for the inner hexagon
	var cre var=$_self.Ati real = (0.25 * ($_self.Hhi - $_self.Hsi) * $_self.bi)
	!
	!The distance from the x-axis to the centroid to the triangle
	var cre var=$_self.dti real = ((2.0*$_self.Hsi + $_self.Hhi)/ 6.0)
	!
	!The area moment of inertia of a triangle
	var cre var=$_self.Ixti real = (($_self.bi * (($_self.Hhi - $_self.Hsi)/ 2.0)**3)/(36.0))
	var cre var=$_self.Iyti real = (($_self.bi**3*($_self.Hhi/2.0 - $_self.Hsi/2.0))/(48.0))
	!
	!The area moment of inertia of the rectangle
	var cre var=$_self.Ixfi real = (($_self.bi * $_self.Hsi**3)/(12.0))
	var cre var=$_self.Iyfi real = (($_self.bi**3 * $_self.Hsi)/(12.0))
	!
	!Calculate the area moment of inertia of the profile
	var cre var=$_self.iyy real=(eval(2.0*($_self.Ixt+$_self.At*$_self.dt**2) + $_self.Ixf -
	2.0*($_self.Ixti+$_self.Ati*$_self.dti**2) - $_self.Ixfi))
	var cre var=$_self.izz real=(eval(2.0*$_self.Iyt + $_self.Iyf - 2.0*$_self.Iyti - $_self.Iyfi))
	!
	!Calculate the torsion constant, or Ixx, or torsional shape factor, or torsional stiffness coefficient.
	var cre var=$_self.bm real=(eval(( $b + $_self.bi) * 0.500 ))
	var cre var=$_self.Hsm real=(eval(( $Hs + $_self.Hsi) * 0.500 ))
	var cre var=$_self.Hhm real=(eval(( $Hh + $_self.Hhi) * 0.500 ))
	var cre var=$_self.Lm real=(eval( 2.0 * sqrt( $_self.bm**2.0 + ( $_self.Hhm - $_self.Hsm )**2.0 ) + 2.0 * $_self.Hsm ))
	var cre var=$_self.Am real=(eval( 0.5 * ( $_self.Hhm - $_self.Hsm ) * $_self.bm + $_self.Hsm * $_self.bm ))
	var cre var=$_self.J real=(eval( 4.0 * $t * $_self.Am**2.0 / $_self.Lm ))
	!Calculate the area
	var cre var=$_self.area real=(eval(($Hs+($Hh-$Hs)/2)*$b-($_self.Hsi+($_self.Hhi-$_self.Hsi)/2)*$_self.bi))
end
!
!if cond=(db_exists($'beamName'))
var mod var=($'beamName'//"_iyy") real=(eval($_self.iyy))
var mod var=($'beamName'//"_izz") real=(eval($_self.izz))
var mod var=($'beamName'//"_ixx") real=(eval($_self.J))
var mod var=($'beamName'//"_area") real=(eval($_self.area))
!end
!
var del var=$_self.*