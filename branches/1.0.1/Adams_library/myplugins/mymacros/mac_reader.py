import os
import sys
import aview_main
import string

class macroReader:
    """ Reads all macros in specified directory,
    creates ADAMS/View references to them.
    """

    def __init__(self, rootDir = None):
        print "Rootdir passed into init is %s " % rootDir
        if rootDir is None:
            self.__rootDir = self.__defaultRoot()
        else:
            self.__rootDir = rootDir
        print "Using macro directory: %s " % self.__rootDir
        
        self.__process()
        

    def __makeMenuRoot(self, rootName):

        theCmd = 'DB_EXISTS(\'.gui.main.mbar.mymacros\')'
        if (aview_main.evaluate_exp(theCmd)):
            theCmd = 'interface menu delete menu_name = .gui.main.mbar.mymacros'
            aview_main.execute_cmd(theCmd)

        theCmd = 'interface menu create menu=.gui.main.mbar.mymacros label=\'%s\'' % rootName
        aview_main.execute_cmd(theCmd)
        
    def __makeMenu(self, menuName):
##         theCmd = 
##         aview_main.execute_cmd(
        pass

    def __submenuName(self, parentMenu):
        """ Ask View for a new unique name for a child in a parent menu
        """
        theCmd = 'unique_name(\'%s.dir\')' % parentMenu
        # print "the cmd is: %s" % theCmd
        newName = aview_main.evaluate_exp(theCmd)
        return newName

    def __relativePath(self, pathShort, pathLong):
        commonPath = os.path.commonprefix([pathShort, pathLong])
        if len(commonPath) > 0:
            return pathLong[len(commonPath):]
        else:
            return ''
        
    def __isMacro(self, fileName):
        """ Return boolean indicating whether or not file is a macro
        file.
        Current implementation **only** checks extension:
         if extension = .mac:
           then it's a macro
        """
        #print "isMacro looking at filename %s " % fileName
        if (os.path.isfile(fileName)):
            (root, ext) = os.path.splitext(fileName)
            ext = string.upper(ext)
            # print "I think this file has an extension of %s " % ext
            if (ext == ".MAC"):
                return 1
            else:
                return 0
            
    def __isDbox(self, fileName):
        """ Return boolean indicating whether or not file is a dbox
        file.
        Current implementation **only** checks extension:
         if extension = .cmd:
           then it's a dbox (so look out!!)
        """
        if (os.path.isfile(fileName)):
            (root, ext) = os.path.splitext(fileName)
            ext = string.upper(ext)
            # print "I think this file has an extension of %s " % ext
            if (ext == ".CMD"):
                return 1
            else:
                return 0

    def __addDbox(self, fileName):
        """ Simply loads a cmd file containing a dbox definition.
        Returns:
         - name of the last created dbox
         
        """
        theCmd = 'file command read file=\"%s\"' % fileName
        aview_main.execute_cmd(theCmd)
        # determine name of last dbox created:
        theCmd = 'db_default(system_defaults, \"Graphic_Interface_Dialog_Box\")'
        theName = aview_main.evaluate_exp(theCmd)

        return theName
    
        
    def __addMacro(self, fileName):
        """ Loads a macro and tries to figure out:
         - how many arguments it takes
         - what the dbox (if any) name was that was auto-created for it

         returns:
          (numArgs, dboxName, userCommand)
        """
        theCmd = 'unique_name(\'macros\')' 
        newUniqueName = aview_main.evaluate_exp(theCmd)
        # ensure macro name is under proper library:
        newFullName = '.%s.%s' % (libName, newUniqueName)
        print 'Using unique_name of: %s ' % newFullName
        if (newFullName != None):
            theCmd = 'macro read macro_name = %s file_name = \"%s\" wrap_in_undo = yes create_panel = yes' % (newFullName, fileName)
            #print 'about to execute cmd: %s ' % theCmd
            aview_main.execute_cmd(theCmd)

            # Macros w/o parameters will not have dboxes:
            theCmd = '%s.param_count' % newFullName
            numArgs = aview_main.evaluate_exp(theCmd)

            # Determine the 'user_entered_command', if any:
            theCmd = '%s.user_command' % newFullName
            macroCommand = aview_main.evaluate_exp(theCmd)
            print "macroCommand is %s " % macroCommand
            
            if (numArgs > 0):
                # try to find the auto-generated dbox name:
                theCmd = 'db_default(system_defaults, \"Graphic_Interface_Dialog_Box\")'
                dboxName = aview_main.evaluate_exp(theCmd)
            else:
                dboxName = ''

            # Try to find the user command to run the macro:
            theCmd = '%s.user_command' % newUniqueName
            userCommand = aview_main.evaluate_exp(theCmd)
            print "userCommand is %s " % userCommand

        return (numArgs, dboxName, userCommand)
    
        
    def __processDirectory(self, prefix, dirname, thefiles):
        """ The callback handler for walking the directory
        """
        print "dirname is %s " % dirname

        relPath = self.__relativePath(self.__rootDir, dirname)
        # print "relative path is %s " % relPath
        badNumber = relPath.find("svn")

        if len(relPath) > 0 and badNumber < 0:
            # new menu for each subdirectory:
            newDir = string.replace(relPath, '\\', '.')
            menuName = prefix + newDir
            #print "newdir is %s " % newDir
            #print "Want to create menu with name  %s " % menuName

            shortDirName = os.path.basename(dirname)
            theCmd = 'interface menu create menu=%s label=\'%s\'' % (menuName, shortDirName)
            if (len(shortDirName) > 1):
                aview_main.execute_cmd(theCmd)

            for f in thefiles:
                 # print "looking at file %s " % f
                 if (self.__isMacro(dirname + '\\' + f)):
                     (root, ext) = os.path.splitext(f)
                     pushName = menuName + '.' + root
                     (numArgs, dboxname, userCommand) = self.__addMacro(dirname + '\\' + f)
                     print "Added macro with %s arguments" % numArgs
                     print "Created auto dbox named %s " % dboxname

                     # Run macro or show panel?
                     if (numArgs > 0):
                         # Then we've created a panel:
                         menuCmd = 'interface dialog display dialog=%s' % dboxname
                     else:
                         # No args then we just use the macro name to run the macro:
                         menuCmd = userCommand

                     # Find a valid menu label:
                     if (userCommand == ''):
                         menuLabel = root
                     else:
                         menuLabel = userCommand
                     
                     theCmd = "interface push_button create push_button_name = %s label = \'%s\' commands = \'%s\' " % (pushName, menuLabel, menuCmd)
                     aview_main.execute_cmd(theCmd)
 
                 if (self.__isDbox(dirname + '\\' + f)):
                     (root, ext) = os.path.splitext(f)
                     pushName = menuName + '.' + root

                     dboxName = self.__addDbox(dirname + '\\' + f)
                     menuCmd = 'interface dialog display dialog=%s' % dboxName
                     
                     theCmd = "interface push_button create push_button_name = %s label = \'%s\' commands = \'%s\' " % (pushName, root, menuCmd)
                     aview_main.execute_cmd(theCmd)
                     
                 

    def __defaultRoot(self):
        """ Return the path to the macro root directory.
        The default location is defined by MDI_MACRO_HOME
        If this exists then return the full path. If
        it doesn't exist then just return "."
        """
        rootDir = os.environ['MDI_USER_PLUGIN_DIR']
        rootDir += '\mymacros'
        print "root dir is %s " % rootDir
        if os.path.isdir(rootDir):
            return rootDir
        else:
            return '.'
        


    def __process(self):
        self.__makeMenuRoot('Parametrization')

        os.path.walk(self.__rootDir, self.__processDirectory, '.gui.main.mbar.mymacros')

        
        
print "Starting macro reader"
print
print "--------------------------------------------"
gDebug = 1
libName = 'mymacros'     # this *must* be same name as the xml file plugin..
mR = macroReader()

        
