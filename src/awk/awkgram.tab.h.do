#!/bin/rc -e
$YACC -d awkgram.y
rm y.tab.c
mv y.tab.h $3
