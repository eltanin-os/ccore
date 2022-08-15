#!/bin/execlineb -S3
multisubstitute {
	importas -D "cc" CC CC
	importas -D "" CFLAGS CFLAGS
	importas -D "" CPPFLAGS CPPFLAGS
}
foreground { redo-ifchange Build.sh fts/libfts.a }
export CFLAGS "${CFLAGS} ${CPPFLAGS} -Ifts"
export LIBS "fts/libfts.a"
backtick TARGET_OS { uname -s }
redirfd -w 1 /dev/null
./Build.sh -r
