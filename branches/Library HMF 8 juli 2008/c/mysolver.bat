rem
rem This script creates the mysolver.def...
rem
set OPATH=%PATH%
PATH=C:\MSC~1.SOF\MSC~1.ADA\2007r1\utils\win32;%OPATH%
echo EXPORTS > mysolver.def
%PYTHON_EXE% %SHORT_TOPDIR%utils\bld_gendef.py -e -o tmp.def "user.obj"
type tmp.def >> mysolver.def
del tmp.def
set PATH=%OPATH%
set OPATH=
