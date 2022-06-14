#!/bin/rc -e
redo-ifchange egrep.y
$YACC -o $3
