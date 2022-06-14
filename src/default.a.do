#!/bin/rc -e
DEPS=`{cat $2.deps}
redo-ifchange $DEPS
$AR rc $3 $DEPS
$RANLIB $3
