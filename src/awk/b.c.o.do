#!/bin/execlineb -S3
multisubstitute {
	importas -D "cc" CC CC
	importas -sD "" CFLAGS CFLAGS
	importas -sD "" CPPFLAGS CPPFLAGS
}
foreground { redo-ifchange b.c awkgram.tab.h }
$CC $CFLAGS $CPPFLAGS -o $3 -c b.c
