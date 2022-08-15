#!/bin/execlineb -S3
getcwd -E PWD
backtick -Ex d { dirname $PWD }
backtick -D "" D1 { if -X { test -e ${d}/deps } cat ${d}/deps }
backtick -D "${2}.c.o" D2 { if -X { test -e ${2}.deps } cat ${2}.deps }
multisubstitute {
	importas -D "cc" CC CC
	importas -sD "" LDFLAGS LDFLAGS
	importas -isu D1 D1
	importas -isu D2 D2
}
foreground { redo-ifchange $D1 $D2 }
$CC $LDFLAGS -o $3 $D2 $D1
