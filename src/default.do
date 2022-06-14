#!/bin/rc -e
if (~ $1 *.c) exit 0
d=`{dirname $PWD}
test -e $d/deps && D1=`{cat $d/deps} || D1=$D1
test -e $2.deps && D2=`{cat $2.deps} || D2=$2.c.o
redo-ifchange $D1 $D2
$CC $LDFLAGS -o $3 $D2 $D1
