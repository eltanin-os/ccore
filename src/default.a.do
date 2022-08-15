#!/bin/execlineb -S3
backtick DEPS { cat ${2}.deps }
multisubstitute {
	importas -D "ar" AR AR
	importas -D "ranlib" RANLIB RANLIB
	importas -isu DEPS DEPS
}
foreground { redo-ifchange $DEPS }
foreground { $AR rc $3 $DEPS }
$RANLIB ${3}
