#!/bin/execlineb -S3
importas -sD "yacc" YACC YACC
if { redo-ifchange awkgram.y }
if { $YACC -d -b "hfile" awkgram.y }
if { rm hfile.tab.c }
mv hfile.tab.h $3
