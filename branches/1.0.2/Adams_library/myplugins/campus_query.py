import os, sys
import string
import re
import aview_main

# print 'The server is %s ' % theServer

lmstat_command = 'lmstat -c '
lmstat_command += theServer
lmstat_command += ' -f CAMPUS'

thefile = os.popen(lmstat_command)
rawdata = thefile.read()
thefile.close()

tokens = re.findall('(\d*) licenses', rawdata)
token_count = 0
token_limit = 0
linecount = 0
if (len(tokens) > 0):
    for count in tokens:
        if (linecount != 0):
            token_count += string.atoi(count)
        if (linecount == 0):
            token_limit = string.atoi(count)
        linecount += 1

print 'Total tokens available is %s ' % token_limit
print 'Total in use is %s ' % token_count

theCmd = 'var set var=token_total real=%s' % token_limit
aview_main.execute_cmd(theCmd)

theCmd = 'var set var=token_usage real=%s' % token_count
aview_main.execute_cmd(theCmd)

