#!/bin/execlineb -S3
getcwd -E PWD
backtick -Ex d { dirname $PWD }
backtick -D "" FLAGS { if -X { test -e "${d}/flags" } exec ${d}/flags }
multisubstitute {
	importas -sD "cc" CC CC
	importas -sD "" CFLAGS CFLAGS
	importas -sD "" CPPFLAGS CPPFLAGS
	importas -isu FLAGS FLAGS
}
if { redo-ifchange $2 }
$CC $CFLAGS $CPPFLAGS $FLAGS -o $3 -c $2
