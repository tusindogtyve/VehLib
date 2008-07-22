SDlib_plugin Version 1.0		July 18 2008

This Adams plugin provides the tools for building  
various off-road vehicles for the purpose of co-simu-
lation with Matlab/Simulink.

For Release notes, see below.


INSTALLATION INSTRUCTIONS:

LIBRARY INSTALLATION:

1. Simply unpack "Adams_library.zip" to the desired 
   library location. Like:

	C:\Program Files\SDlib\



USER INSTALLATION
1. Open the following file: /UserInstall/SD_aviewUser.bat
   in any editor.
2. Change the lines:

	set MDI_SD_LIBRARY_SITE=$PUT IN PATH TO\Adams_library
	set MDI_USER_PLUGIN_DIR=$PUT IN PATH TO\Adams_library\myplugins
   
   to point to the location of the library. If the 
   path above is used, the lines would be:

	set MDI_SD_LIBRARY_SITE=C:\Program Files\SDlib\Adams_library
	set MDI_USER_PLUGIN_DIR=C:\Program Files\SDlib\Adams_library\myplugins

3. Save and close the file and move the it to your 
   harddrive.
4. Start Adams/View by running SD_aviewUser.bat from 
   your harddrive.
5. From the menu "Tools" select "Plugins". From the
   dialog box select to load SDlib_plugin and to 
   load the plugin at start-up.
   If the plugin is not available the path in the
   .bat file used to start Adams/View is incorrect
   or it was not used to start Adams/View.

DEVELOPER INSTALLATION
1. Unpack the file "DevTools.zip" to the harddrive.
2. Follow the steps of user installation on the file:
   "SD_aviewDev.bat" to set up path to the library.




RELEASE NOTES

This first release is a rough implementation of the 
work by Morten Haastrup and Simon Kabus at Aalborg 
University, Denmark. The implementation is done by
Jens Bay Madsen/Sauer-Danfoss Aps. 

The basic vehicle library as of January 2008 is 
functional, meanwhile the new flex and telescopic
tools are not yet implemented.

Furthermore the plugin is based on the "old" way
of hardcoding the menu and not the "new" more 
flexible way described in http://support.mscsoftware.com/kb/results_kb.cfm?S_ID=1-KB12491

The primary work on the library from January 2008
have been adding a general reference to MDI_SD_LIBRARY_SITE
in fron of all file-read commands in the various
dialog boxes and macros. Secondary making sure that
the various macros where read into .SDlib_plugin.macros, 
thus being available for Adams regardless of 
current working directory.

Adding dialog boxes and macros to the plugin is
done by:
1. Adding the .cmd files to the file read
   section of "reloaded.cmd" in the developer 
   folder. Note that new dialog boxes MUST be
   loaded into the library .SDlib_plugin.dboxes
   to become part of the plugin. Identical, macros
   MUST be loaded into the library .SDlib_plugin.macros
   in order become part of the plugin.
2. Adding the references in the .mnu file in the 
   developer folder.
3. Loading "reloaded.cmd" into an empty model.
4. If successful and none of the additions have
   ended up in unexpected locations, the run:
   "ExportPlugin.cmd". This macro will create
   the file SDlib_plugin.bin which will replace the
   existing file in $PathToAdamsLibrary\Adams_library\myplugins
5. Start the user version of Adams view and
   make shure that the plugin is loaded. Check
   wether the new additions had the desired 
   effect and are working.




KNOWN ISSUES:
# DLL's for the flex and telescopic tools are not yet 
  included in the plugin.