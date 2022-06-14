#!/bin/rc -e
d=`{dirname $PWD}
test -e $d/flags && FLAGS=`{eval echo `{cat $d/flags}} || FLAGS=()
redo-ifchange $2
$CC $CFLAGS $CPPFLAGS $FLAGS -o $3 -c $2
