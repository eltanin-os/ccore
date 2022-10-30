#!/bin/execlineb -S3
multisubstitute {
	importas -D "" DESTDIR DESTDIR
	importas -D "/usr/local" PREFIX PREFIX
	importas -D "/bin" BINDIR BINDIR
	importas -D "/etc" ETCDIR ETCDIR
	importas -D "/share/man" MANDIR MANDIR
	define -s PROGS
"src/awk/awk
src/openbsd/cut/cut
src/openbsd/diff/diff
src/openbsd/expr/expr
src/openbsd/patch/patch
src/openbsd/readlink/readlink
src/openbsd/xargs/xargs
src/paxmirabilis/pax
src/heirloom/comm/comm
src/heirloom/csplit/csplit
src/heirloom/date/date
src/heirloom/ed/ed
src/heirloom/expand/expand
src/heirloom/expand/unexpand
src/heirloom/file/file
src/heirloom/find/find
src/heirloom/fold/fold
src/heirloom/getconf/getconf
src/heirloom/grep/egrep
src/heirloom/grep/fgrep
src/heirloom/grep/grep
src/heirloom/groups/groups
src/heirloom/join/join
src/heirloom/logname/logname
src/heirloom/nice/nice
src/heirloom/nl/nl
src/heirloom/nohup/nohup
src/heirloom/od/od
src/heirloom/paste/paste
src/heirloom/pr/pr
src/heirloom/sed/sed
src/heirloom/sort/sort
src/heirloom/split/split
src/heirloom/stty/stty
src/heirloom/sync/sync
src/heirloom/test/test
src/heirloom/time/time
src/heirloom/touch/touch
src/heirloom/tr/tr
src/heirloom/tsort/tsort
src/heirloom/tty/tty
src/heirloom/uniq/uniq
src/heirloom/what/what"
	define -s MANPAGES
"src/awk/awk.1
src/heirloom/comm/comm.1
src/heirloom/csplit/csplit.1
src/heirloom/date/date.1
src/heirloom/ed/ed.1
src/heirloom/expand/expand.1
src/heirloom/expand/unexpand.1
src/heirloom/file/file.1
src/heirloom/find/find.1
src/heirloom/fold/fold.1
src/heirloom/getconf/getconf.1
src/heirloom/grep/egrep.1
src/heirloom/grep/fgrep.1
src/heirloom/grep/grep.1
src/heirloom/groups/groups.1
src/heirloom/join/join.1
src/heirloom/logname/logname.1
src/heirloom/nice/nice.1
src/heirloom/nl/nl.1
src/heirloom/nohup/nohup.1
src/heirloom/od/od.1
src/heirloom/paste/paste.1
src/heirloom/pr/pr.1
src/heirloom/sed/sed.1
src/heirloom/sort/sort.1
src/heirloom/split/split.1
src/heirloom/stty/stty.1
src/heirloom/sync/sync.1m
src/heirloom/test/test.1
src/heirloom/time/time.1
src/heirloom/touch/touch.1
src/heirloom/tr/tr.1
src/heirloom/tsort/tsort.1
src/heirloom/tty/tty.1
src/heirloom/uniq/uniq.1
src/heirloom/what/what.1
src/openbsd/cut/cut.1
src/openbsd/diff/diff.1
src/openbsd/expr/expr.1
src/openbsd/patch/patch.1
src/openbsd/readlink/readlink.1
src/openbsd/xargs/xargs.1
src/paxmirabilis/mans/cpio.1
src/paxmirabilis/mans/pax.1
src/paxmirabilis/mans/tar.1"
}
case -- $1 {
"all" {
	redo-ifchange $PROGS $MANPAGES
}
"clean" {
	foreground {
		cd src/paxmirabilis
		elglob objects "*.o"
		rm -Rf Rebuild.sh cpio paxpax tar mans $objects
	}
	backtick targets { redo-targets }
	importas -isu targets targets
	rm -f $targets
}
"install" {
	if { redo-ifchange all }
	if { install -dm 755 "${DESTDIR}${PREFIX}${BINDIR}" }
	if { install -dm 755 "${DESTDIR}${PREFIX}${ETCDIR}" }
	if { install -dm 755 "${DESTDIR}${PREFIX}${MANDIR}/man1" }
	if { install -cm 755 $PROGS "${DESTDIR}${PREFIX}${BINDIR}" }
	if { install -cm 644 src/heirloom/file/magic "${DESTDIR}${PREFIX}${ETCDIR}" }
	if { install -cm 644 $MANPAGES "${DESTDIR}${PREFIX}${MANDIR}/man1" }
	if { ln -s pax "${DESTDIR}${PREFIX}${BINDIR}/cpio" }
	if { ln -s pax "${DESTDIR}${PREFIX}${BINDIR}/tar" }
	ln -s test "${DESTDIR}${PREFIX}${BINDIR}/["
}
}
