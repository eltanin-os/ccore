#!/bin/execlineb -S3
backtick DEPS { cat ${2}.deps }
multisubstitute {
	importas -sD "ar" AR AR
	importas -sD "ranlib" RANLIB RANLIB
	importas -isu DEPS DEPS
}
if { redo-ifchange $DEPS }
if { $AR rc $3 $DEPS }
$RANLIB ${3}
