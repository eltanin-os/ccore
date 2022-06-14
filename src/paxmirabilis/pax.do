#!/bin/rc -e
redo-ifchange fts/libfts.a
OS=`{uname}
CFLAGS=($CFLAGS $CPPFLAGS)
TARGET_OS=$"OS CC=$"CC CFLAGS=$"CFLAGS' -Ifts' LDFLAGS=$"LDFLAGS LIBS='fts/libfts.a' ./Build.sh -r >[1]/dev/null
