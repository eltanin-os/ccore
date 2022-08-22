#!/bin/execlineb -S3
importas -sD "yacc" YACC YACC
foreground { redo-ifchange egrep.y }
foreground { $YACC -b "cfile" egrep.y }
mv cfile.tab.c $3
