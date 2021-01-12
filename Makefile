include config.mk

.SUFFIXES:
.SUFFIXES: .o .c

__CPPFLAGS__=\
	-DSU3BIN='"$(BINDIR)"'\
	-DDEFBIN='"$(BINDIR)"'\
	-DCCSBIN='"$(BINDIR)"'\
	-DUCBBIN='"$(BINDIR)"'\
	-DSHELL='"$(BINDIR)/sh"'\
	-DMAGIC='"$(ETCDIR)/magic"'\
	-Dfunc='test'\
	-D_DEFAULT_SOURCE\
	-D__GLIBC__\
	-D__dietlibc__\
	-DSU3\
	-DSUS\
	-Isrc/heirloom\
	-Isrc/heirloom/libcommon\
	-Isrc/heirloom/libuxre\
	-Isrc/openbsd\
	-Isrc/paxmirabilis/fts

# BIN
BIN=\
	src/awk/awk\
	src/openbsd/cut/cut\
	src/openbsd/diff/diff\
	src/openbsd/expr/expr\
	src/openbsd/patch/patch\
	src/openbsd/sed/sed\
	src/paxmirabilis/pax

HBIN=\
	src/heirloom/comm/comm\
	src/heirloom/csplit/csplit\
	src/heirloom/date/date\
	src/heirloom/ed/ed\
	src/heirloom/expand/expand\
	src/heirloom/expand/unexpand\
	src/heirloom/file/file\
	src/heirloom/find/find\
	src/heirloom/fold/fold\
	src/heirloom/getconf/getconf\
	src/heirloom/grep/egrep\
	src/heirloom/grep/fgrep\
	src/heirloom/grep/grep\
	src/heirloom/groups/groups\
	src/heirloom/join/join\
	src/heirloom/logname/logname\
	src/heirloom/nice/nice\
	src/heirloom/nl/nl\
	src/heirloom/nohup/nohup\
	src/heirloom/od/od\
	src/heirloom/paste/paste\
	src/heirloom/pr/pr\
	src/heirloom/sort/sort\
	src/heirloom/split/split\
	src/heirloom/stty/stty\
	src/heirloom/sync/sync\
	src/heirloom/test/test\
	src/heirloom/time/time\
	src/heirloom/touch/touch\
	src/heirloom/tr/tr\
	src/heirloom/tsort/tsort\
	src/heirloom/tty/tty\
	src/heirloom/uniq/uniq\
	src/heirloom/what/what\
	src/heirloom/xargs/xargs

# BIN OBJS
AWKOBJ=\
	src/awk/awk.o\
	src/awk/b.o\
	src/awk/lex.o\
	src/awk/lib.o\
	src/awk/parse.o\
	src/awk/proctab.o\
	src/awk/run.o\
	src/awk/tran.o\
	src/awk/awkgram.tab.o

EXPANDOBJ=\
	src/heirloom/expand/expand.o\
	src/heirloom/expand/tablist.o

EGREPOBJ=\
	src/heirloom/grep/alloc.o\
	src/heirloom/grep/grep.o\
	src/heirloom/grep/grid.o\
	src/heirloom/grep/egrep.o\
	src/heirloom/grep/plist.o\
	src/heirloom/grep/svid3.o

DIFFOBJ=\
	src/openbsd/diff/diff.o\
	src/openbsd/diff/diffdir.o\
	src/openbsd/diff/diffreg.o\
	src/openbsd/diff/xmalloc.o

FGREPOBJ=\
	src/heirloom/grep/alloc.o\
	src/heirloom/grep/grep.o\
	src/heirloom/grep/grid.o\
	src/heirloom/grep/fgrep.o\
	src/heirloom/grep/plist.o\
	src/heirloom/grep/svid3.o\
	src/heirloom/grep/ac.o

GREPOBJ=\
	src/heirloom/grep/alloc.o\
	src/heirloom/grep/grep.o\
	src/heirloom/grep/grid.o\
	src/heirloom/grep/plist.o\
	src/heirloom/grep/rcomp.o\
	src/heirloom/grep/sus.o\
	src/heirloom/grep/ac.o

PATCHOBJ=\
	src/openbsd/patch/patch.o\
	src/openbsd/patch/pch.o\
	src/openbsd/patch/inp.o\
	src/openbsd/patch/util.o\
	src/openbsd/patch/backupfile.o\
	src/openbsd/patch/mkpath.o\
	src/openbsd/patch/explicit_bzero.o\
	src/openbsd/patch/recallocarray.o\
	src/openbsd/patch/ed.o

PAXOBJ=\
	src/paxmirabilis/ar.o\
	src/paxmirabilis/ar_io.o\
	src/paxmirabilis/ar_subs.o\
	src/paxmirabilis/buf_subs.o\
	src/paxmirabilis/cache.o\
	src/paxmirabilis/compat.o\
	src/paxmirabilis/cpio.o\
	src/paxmirabilis/file_subs.o\
	src/paxmirabilis/ftree.o\
	src/paxmirabilis/gen_subs.o\
	src/paxmirabilis/getoldopt.o\
	src/paxmirabilis/options.o\
	src/paxmirabilis/pat_rep.o\
	src/paxmirabilis/pax.o\
	src/paxmirabilis/reallocarray.o\
	src/paxmirabilis/sel_subs.o\
	src/paxmirabilis/strmode.o\
	src/paxmirabilis/strtonum.o\
	src/paxmirabilis/tables.o\
	src/paxmirabilis/tar.o\
	src/paxmirabilis/tty_subs.o

SEDOBJ=\
	src/openbsd/sed/compile.o\
	src/openbsd/sed/sed.o\
	src/openbsd/sed/misc.o\
	src/openbsd/sed/process.o

TESTOBJ=\
	src/heirloom/test/test.o\
	src/heirloom/test/main.o\
	src/heirloom/test/helper.o\
	src/heirloom/test/version.o

UNEXPANDOBJ=\
	src/heirloom/expand/unexpand.o\
	src/heirloom/expand/tablist.o

# MAN
MAN1=\
	src/awk/awk.1\
	src/heirloom/comm/comm.1\
	src/heirloom/csplit/csplit.1\
	src/heirloom/date/date.1\
	src/heirloom/ed/ed.1\
	src/heirloom/expand/expand.1\
	src/heirloom/expand/unexpand.1\
	src/heirloom/file/file.1\
	src/heirloom/find/find.1\
	src/heirloom/fold/fold.1\
	src/heirloom/getconf/getconf.1\
	src/heirloom/grep/egrep.1\
	src/heirloom/grep/fgrep.1\
	src/heirloom/grep/grep.1\
	src/heirloom/groups/groups.1\
	src/heirloom/join/join.1\
	src/heirloom/logname/logname.1\
	src/heirloom/nice/nice.1\
	src/heirloom/nl/nl.1\
	src/heirloom/nohup/nohup.1\
	src/heirloom/od/od.1\
	src/heirloom/paste/paste.1\
	src/heirloom/pr/pr.1\
	src/heirloom/sort/sort.1\
	src/heirloom/split/split.1\
	src/heirloom/stty/stty.1\
	src/heirloom/sync/sync.1m\
	src/heirloom/test/test.1\
	src/heirloom/time/time.1\
	src/heirloom/touch/touch.1\
	src/heirloom/tr/tr.1\
	src/heirloom/tsort/tsort.1\
	src/heirloom/tty/tty.1\
	src/heirloom/uniq/uniq.1\
	src/heirloom/what/what.1\
	src/heirloom/xargs/xargs.1\
	src/openbsd/cut/cut.1\
	src/openbsd/diff/diff.1\
	src/openbsd/expr/expr.1\
	src/openbsd/patch/patch.1\
	src/openbsd/sed/sed.1\
	src/paxmirabilis/mans/cpio.1\
	src/paxmirabilis/mans/pax.1\
	src/paxmirabilis/mans/tar.1

# LIB SRC
LIBHCOMMONSRC=\
	src/heirloom/libcommon/CHECK.c\
	src/heirloom/libcommon/asciitype.c\
	src/heirloom/libcommon/getdir.c\
	src/heirloom/libcommon/getopt.c\
	src/heirloom/libcommon/gmatch.c\
	src/heirloom/libcommon/ib_alloc.c\
	src/heirloom/libcommon/ib_close.c\
	src/heirloom/libcommon/ib_free.c\
	src/heirloom/libcommon/ib_getlin.c\
	src/heirloom/libcommon/ib_getw.c\
	src/heirloom/libcommon/ib_open.c\
	src/heirloom/libcommon/ib_popen.c\
	src/heirloom/libcommon/ib_read.c\
	src/heirloom/libcommon/ib_seek.c\
	src/heirloom/libcommon/memalign.c\
	src/heirloom/libcommon/oblok.c\
	src/heirloom/libcommon/pathconf.c\
	src/heirloom/libcommon/pfmt.c\
	src/heirloom/libcommon/pfmt_label.c\
	src/heirloom/libcommon/regexpr.c\
	src/heirloom/libcommon/setlabel.c\
	src/heirloom/libcommon/setuxlabel.c\
	src/heirloom/libcommon/sfile.c\
	src/heirloom/libcommon/sighold.c\
	src/heirloom/libcommon/sigignore.c\
	src/heirloom/libcommon/signal.c\
	src/heirloom/libcommon/sigpause.c\
	src/heirloom/libcommon/sigrelse.c\
	src/heirloom/libcommon/sigset.c\
	src/heirloom/libcommon/strtol.c\
	src/heirloom/libcommon/sysv3.c\
	src/heirloom/libcommon/utmpx.c\
	src/heirloom/libcommon/vpfmt.c

LIBHUXRESRC=\
	src/heirloom/libuxre/_collelem.c\
	src/heirloom/libuxre/_collmult.c\
	src/heirloom/libuxre/bracket.c\
	src/heirloom/libuxre/onefile.c\
	src/heirloom/libuxre/regcomp.c\
	src/heirloom/libuxre/regdfa.c\
	src/heirloom/libuxre/regerror.c\
	src/heirloom/libuxre/regexec.c\
	src/heirloom/libuxre/regfree.c\
	src/heirloom/libuxre/regnfa.c\
	src/heirloom/libuxre/regparse.c\
	src/heirloom/libuxre/stubs.c

# LIB PATH
LIBHCOMMON= src/heirloom/libcommon/libcommon.a
LIBHUXRE= src/heirloom/libuxre/libuxre.a

# LIB OBJS
LIBHCOMMONOBJ= $(LIBHCOMMONSRC:.c=.o)
LIBHUXREOBJ= $(LIBHUXRESRC:.c=.o)

# ALL
LIB= $(LIBHCOMMON) $(LIBHUXRE)
OBJ=\
	$(BIN:=.o)\
	$(HBIN:=.o)\
	$(LIBHCOMMONOBJ)\
	$(LIBHUXREOBJ)\
	$(AWKOBJ)\
	$(EXPANDOBJ)\
	$(UNEXPANDOBJ)\
	$(EGREPOBJ)\
	$(FGREPOBJ)\
	$(GREPOBJ)\
	$(DIFFOBJ)\
	$(PATCHOBJ)\
	$(TESTOBJ)\
	$(PAXOBJ)\
	src/awk/maketab.o\
	src/paxmirabilis/fts/fts.o

# ALL
all: $(BIN) $(HBIN)

# BIN RULES
$(AWKOBJ): src/awk/awkgram.tab.h
src/awk/awk: $(AWKOBJ)
src/heirloom/expand/expand: $(EXPANDOBJ)
src/heirloom/expand/unexpand: $(UNEXPANDOBJ)
src/heirloom/grep/egrep: $(EGREPOBJ)
src/heirloom/grep/fgrep: $(FGREPOBJ)
src/heirloom/grep/grep: $(GREPOBJ)
src/heirloom/test/test: $(TESTOBJ)
src/openbsd/diff/diff: $(DIFFOBJ)
src/openbsd/patch/patch: $(PATCHOBJ)
src/openbsd/sed/sed: $(SEDOBJ)

src/paxmirabilis/pax: src/paxmirabilis/fts/libfts.a
	cd src/paxmirabilis; TARGET_OS=Linux CC="$(CC)" CFLAGS="$(CFLAGS) -D_GNU_SOURCE -Ifts" LDFLAGS="$(LDFLAGS)" LIBS="fts/libfts.a" ./Build.sh -r

# VAR RULES
$(HBIN): $(LIB) $(@:=.o)
$(OBJ): config.mk

# SOURCE RULES
src/awk/maketab.o: src/awk/awkgram.tab.h
src/awk/proctab.c: src/awk/maketab
	src/awk/maketab src/awk/awkgram.tab.h > src/awk/proctab.c

src/awk/awkgram.tab.h: src/awk/awkgram.tab.c
src/awk/awkgram.tab.c:
	$(YACC) -d -bawkgram src/awk/awkgram.y
	mv awkgram.tab.c src/awk
	mv awkgram.tab.h src/awk

src/heirloom/grep/egrep.c: src/heirloom/grep/egrep.y
	$(YACC) -begrep src/heirloom/grep/egrep.y
	mv egrep.tab.c src/heirloom/grep/egrep.c

# SUFFIX RULES
.o:
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) $(__CPPFLAGS__) $(INC) -o $@ -c $<

# LIBRARIES RULES
$(LIBHCOMMON): $(LIBHCOMMONOBJ)
	$(AR) rc $@ $(LIBHCOMMONOBJ)
	$(RANLIB) $@

$(LIBHUXRE): $(LIBHUXREOBJ)
	$(AR) rc $@ $(LIBHUXREOBJ)
	$(RANLIB) $@

src/paxmirabilis/fts/libfts.a: src/paxmirabilis/fts/fts.o
	$(AR) rc $@ src/paxmirabilis/fts/fts.o
	$(RANLIB) $@

# MAN RULES
src/paxmirabilis/mans/cpio.1: src/paxmirabilis/pax
src/paxmirabilis/mans/pax.1: src/paxmirabilis/pax
src/paxmirabilis/mans/tar.1: src/paxmirabilis/pax

# USER ACTIONS
install: all
	$(INSTALL) -dm 755 $(DESTDIR)/$(MANDIR)/man1
	$(INSTALL) -cm 644 $(MAN1) $(DESTDIR)/$(MANDIR)/man1
	$(INSTALL) -dm 755 $(DESTDIR)/$(ETCDIR)
	$(INSTALL) -cm 644 src/heirloom/file/magic $(DESTDIR)/$(ETCDIR)
	$(INSTALL) -dm 755 $(DESTDIR)/$(BINDIR)
	$(INSTALL) -cm 755 $(BIN) $(HBIN) $(DESTDIR)/$(BINDIR)
	ln -s pax $(DESTDIR)/$(BINDIR)/cpio
	ln -s pax $(DESTDIR)/$(BINDIR)/tar
	ln -s test $(DESTDIR)/$(BINDIR)/[

clean:
	rm -f $(HBIN) $(BIN) $(OBJ) $(LIB) src/awk/awkgram.tab.c src/awk/awkgram.tab.h src/grep/egrep.c src/awk/maketab src/paxmirabilis/fts/libfts.a
	rm -Rf src/paxmirabilis/mans

.PHONY:
	all install clean
