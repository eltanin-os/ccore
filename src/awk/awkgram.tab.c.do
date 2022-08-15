#!/bin/execlineb -S3
importas -D "yacc" YACC YACC
foreground { redo-ifchange awkgram.y }
foreground { $YACC -b "cfile" awkgram.y }
mv cfile.tab.c $3
