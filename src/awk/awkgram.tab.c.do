#!/bin/execlineb -S3
importas -sD "yacc" YACC YACC
if { redo-ifchange awkgram.y }
if { $YACC -b "cfile" awkgram.y }
mv cfile.tab.c $3
