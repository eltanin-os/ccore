#!/bin/execlineb -S3
multisubstitute {
	importas -sD "cc" CC CC
	importas -sD "" CFLAGS CFLAGS
	importas -sD "" CPPFLAGS CPPFLAGS
}
foreground { redo-ifchange b.c awkgram.tab.h }
$CC $CFLAGS $CPPFLAGS -o $3 -c b.c
