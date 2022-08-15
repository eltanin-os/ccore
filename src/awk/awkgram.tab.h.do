#!/bin/execlineb -S3
importas -D "yacc" YACC YACC
foreground { redo-ifchange awkgram.y }
foreground { $YACC -d -b "hfile" awkgram.y }
foreground { rm hfile.tab.c }
mv hfile.tab.h $3
