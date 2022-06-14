#!/bin/rc -e
redo-ifchange b.c awkgram.tab.h
$CC $CFLAGS $CPPFLAGS -o $3 -c b.c
