!-----------------------------------------------!
!             Export to plugin			!
! Use file to export library "SDlib" as plugin	!
!						!
! Version history:				!
! Version	Date		Author		!
! 0.1		July 16 2008	Jens Bay Madsen	!
!						!
!-----------------------------------------------!

file binary write file_name = "SDlib_plugin.bin" &
	entity_name = .SDlib_plugin, .gui.main.mbar.SauerDanfoss