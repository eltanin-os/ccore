#!/bin/execlineb -S3
importas -sD "yacc" YACC YACC
if { redo-ifchange egrep.y }
if { $YACC -b "cfile" egrep.y }
mv cfile.tab.c $3
