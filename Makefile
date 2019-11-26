include config.mk

.SUFFIXES:
.SUFFIXES: .o .c

INC= -I inc -I lib/common -I lib/uxre
HDR=\
	inc/config.h\
	inc/heirloom.h

# FLAGS
_CPPFLAGS=\
	-DCCSBIN='"$(BINDIR)"'\
	-DDEFBIN='"$(BINDIR)"'\
	-DSUSBIN='"$(BINDIR)"'\
	-DSV3BIN='"$(BINDIR)"'\
	-DUCBBIN='"$(BINDIR)"'\
	-DDEFAULT='"$(DFLDIR)/ps"'\
	-DDC='"$(BINDIR)/dc"'\
	-DDIFFH='"$(DFLDIR)/diffh"'\
	-Dfunc='test'\
	-DFORMPATH='"$(LIBDIR)/lex"'\
	-DLIBB='"$(LIBDIR)/lib.b"'\
	-DMAGIC='"$(LIBDIR)/magic"'\
	-DPARSER='"$(LIBDIR)/yaccpar"'\
	-DSHELL='"$(BINDIR)/sh"'\
	-DSUDL='"$(DFLDIR)/su"'\
	-DTARDFL='"$(DFLDIR)/tar"'\
	-DUSE_TERMCAP\
	-DSUS\
	-DSUS3\
	-DUCB

# BIN
BIN=\
	src/bc/bc\
	src/cal/cal\
	src/comm/comm\
	src/csplit/csplit\
	src/cut/cut\
	src/date/date\
	src/dd/dd\
	src/df/df\
	src/diff/diffh\
	src/ed/ed\
	src/expr/expr\
	src/file/file\
	src/find/find\
	src/fmt/fmt\
	src/fold/fold\
	src/getconf/getconf\
	src/hostname/hostname\
	src/id/id\
	src/install/install\
	src/join/join\
	src/logname/logname\
	src/mesg/mesg\
	src/mkfifo/mkfifo\
	src/mknod/mknod\
	src/nice/nice\
	src/nl/nl\
	src/nohup/nohup\
	src/od/od\
	src/paste/paste\
	src/pathchk/pathchk\
	src/pr/pr\
	src/printenv/printenv\
	src/ps/ps\
	src/renice/renice\
	src/sleep/sleep\
	src/sort/sort\
	src/split/split\
	src/stty/stty\
	src/sync/sync\
	src/tail/tail\
	src/tar/tar\
	src/tee/tee\
	src/test/test\
	src/time/time\
	src/touch/touch\
	src/tr/tr\
	src/tsort/tsort\
	src/tty/tty\
	src/uniq/uniq\
	src/what/what\
	src/who/who\
	src/whoami/whoami\
	src/xargs/xargs

EBIN=\
	src/awk/awk\
	src/cpio/cpio\
	src/cpio/pax\
	src/dc/dc\
	src/diff/diff\
	src/expand/expand\
	src/expand/unexpand\
	src/grep/egrep\
	src/grep/fgrep\
	src/grep/grep\
	src/kill/kill\
	src/ls/ls\
	src/lex/lex\
	src/more/more\
	src/patch/patch\
	src/sed/sed\
	src/tabs/newform\
	src/tabs/tabs\
	src/yacc/yacc

# BIN SRC
AWKSRC=\
	src/awk/b.c\
	src/awk/lex.c\
	src/awk/lib.c\
	src/awk/main.c\
	src/awk/parse.c\
	src/awk/proctab.c\
	src/awk/run.c\
	src/awk/tran.c\
	src/awk/ytab.c

CPIOSRC=\
	src/cpio/blast.c\
	src/cpio/cpio.c\
	src/cpio/crc32.c\
	src/cpio/expand.c\
	src/cpio/explode.c\
	src/cpio/inflate.c\
	src/cpio/unshrink.c\
	src/cpio/version.c\
	src/cpio/flags.c\
	src/cpio/nonpax.c

DCSRC=\
	src/dc/dc.c\
	src/dc/version.c

DIFFSRC=\
	src/diff/diff.c\
	src/diff/diffdir.c\
	src/diff/diffreg.c\
	src/diff/diffver.c

EXPANDSRC=\
	src/expand/expand.c\
	src/expand/tablist.c

EGREPSRC=\
	src/grep/alloc.c\
	src/grep/grep.c\
	src/grep/grid.c\
	src/grep/svid3.c\
	src/grep/egrep.c\
	src/grep/plist.c

FGREPSRC=\
	src/grep/alloc.c\
	src/grep/grep.c\
	src/grep/grid.c\
	src/grep/svid3.c\
	src/grep/ac.c\
	src/grep/fgrep.c\
	src/grep/plist.c

GREPSRC=\
	src/grep/alloc.c\
	src/grep/grep.c\
	src/grep/grid.c\
	src/grep/svid3.c\
	src/grep/ggrep.c

KILLSRC=\
	src/kill/kill.c\
	src/kill/strsig.c\
	src/kill/version.c

LEXSRC=\
	src/lex/getopt.c\
	src/lex/header.c\
	src/lex/lsearch.c\
	src/lex/main.c\
	src/lex/parser.c\
	src/lex/sub1.c\
	src/lex/sub2.c\
	src/lex/sub3.c\
	src/lex/wcio.c

NEWFORMSRC=\
	src/tabs/newform.c\
	src/tabs/tabspec.c

PATCHSRC=\
	src/patch/backupfile.c\
	src/patch/inp.c\
	src/patch/mkpath.c\
	src/patch/patch.c\
	src/patch/pch.c\
	src/patch/util.c

PAXSRC=\
	src/cpio/blast.c\
	src/cpio/cpio.c\
	src/cpio/crc32.c\
	src/cpio/expand.c\
	src/cpio/explode.c\
	src/cpio/inflate.c\
	src/cpio/unshrink.c\
	src/cpio/version.c\
	src/cpio/pax.c

SEDSRC=\
	src/sed/sed0.c\
	src/sed/sed1.c\
	src/sed/version.c

TABSSRC=\
	src/tabs/tabs.c\
	src/tabs/tabspec.c

TESTSRC=\
	src/test/helper.c\
	src/test/main.c\
	src/test/test.c\
	src/test/version.c

UNEXPANDSRC=\
	src/expand/unexpand.c\
	src/expand/tablist.c

YACCSRC=\
	src/yacc/getopt.c\
	src/yacc/y1.c\
	src/yacc/y2.c\
	src/yacc/y3.c\
	src/yacc/y4.c\
	src/yacc/y5.c

# BIN OBJ
AWKOBJ=$(AWKSRC:.c=.o)
CPIOOBJ=$(CPIOSRC:.c=.o)
DCOBJ=$(DCSRC:.c=.o)
DIFFOBJ=$(DIFFSRC:.c=.o)
EXPANDOBJ=$(EXPANDSRC:.c=.o)
EGREPOBJ=$(EGREPSRC:.c=.o)
FGREPOBJ=$(FGREPSRC:.c=.o)
GREPOBJ=$(GREPSRC:.c=.o)
KILLOBJ=$(KILLSRC:.c=.o)
LEXOBJ=$(LEXSRC:.c=.o)
NEWFORMOBJ=$(NEWFORMSRC:.c=.o)
PATCHOBJ=$(PATCHSRC:.c=.o)
PAXOBJ=$(PAXSRC:.c=.o)
SEDOBJ=$(SEDSRC:.c=.o)
TABSOBJ=$(TABSSRC:.c=.o)
TESTOBJ=$(TESTSRC:.c=.o)
UNEXPANDOBJ=$(UNEXPANDSRC:.c=.o)
YACCOBJ=$(YACCSRC:.c=.o)

# MAN
MAN1=\
	man/apropos.1\
	man/awk.1\
	man/bc.1\
	man/cal.1\
	man/comm.1\
	man/cpio.1\
	man/csplit.1\
	man/cut.1\
	man/date.1\
	man/dc.1\
	man/dd.1\
	man/df.1\
	man/df.1b\
	man/diff.1\
	man/ed.1\
	man/egrep.1\
	man/expand.1\
	man/expr.1\
	man/fgrep.1\
	man/file.1\
	man/find.1\
	man/fmt.1\
	man/fold.1\
	man/fspec.5\
	man/getconf.1\
	man/grep.1\
	man/hostname.1\
	man/id.1\
	man/install.1b\
	man/join.1\
	man/kill.1\
	man/lex.1\
	man/logname.1\
	man/ls.1\
	man/ls.1b\
	man/man.1\
	man/mesg.1\
	man/mkfifo.1\
	man/mknod.1m\
	man/more.1\
	man/newform.1\
	man/nice.1\
	man/nl.1\
	man/nohup.1\
	man/od.1\
	man/paste.1\
	man/patch.1\
	man/pathchk.1\
	man/pax.1\
	man/pr.1\
	man/printenv.1\
	man/ps.1\
	man/ps.1b\
	man/renice.1\
	man/sed.1\
	man/settime.1\
	man/sleep.1\
	man/sort.1\
	man/split.1\
	man/stty.1\
	man/stty.1b\
	man/sync.1m\
	man/tabs.1\
	man/tail.1\
	man/tar.1\
	man/tee.1\
	man/test.1\
	man/test.1b\
	man/time.1\
	man/touch.1\
	man/tr.1\
	man/tr.1b\
	man/tsort.1\
	man/tty.1\
	man/unexpand.1\
	man/uniq.1\
	man/what.1\
	man/whatis.1\
	man/who.1\
	man/whoami.1\
	man/xargs.1\
	man/yacc.1

MAN5=\
	man/fspec.5

# LIB SRC
LIBCOMMONSRC=\
	lib/common/asciitype.c\
	lib/common/CHECK.c\
	lib/common/getdir.c\
	lib/common/getopt.c\
	lib/common/gmatch.c\
	lib/common/ib_alloc.c\
	lib/common/ib_close.c\
	lib/common/ib_free.c\
	lib/common/ib_getlin.c\
	lib/common/ib_getw.c\
	lib/common/ib_open.c\
	lib/common/ib_popen.c\
	lib/common/ib_read.c\
	lib/common/ib_seek.c\
	lib/common/memalign.c\
	lib/common/oblok.c\
	lib/common/pathconf.c\
	lib/common/pfmt.c\
	lib/common/pfmt_label.c\
	lib/common/regexpr.c\
	lib/common/setlabel.c\
	lib/common/setuxlabel.c\
	lib/common/sfile.c\
	lib/common/sighold.c\
	lib/common/sigignore.c\
	lib/common/signal.c\
	lib/common/sigpause.c\
	lib/common/sigrelse.c\
	lib/common/sigset.c\
	lib/common/strtol.c\
	lib/common/sysv3.c\
	lib/common/utmpx.c\
	lib/common/vpfmt.c

LIBUXRESRC=\
	lib/uxre/bracket.c\
	lib/uxre/_collelem.c\
	lib/uxre/_collmult.c\
	lib/uxre/onefile.c\
	lib/uxre/regcomp.c\
	lib/uxre/regdfa.c\
	lib/uxre/regerror.c\
	lib/uxre/regexec.c\
	lib/uxre/regfree.c\
	lib/uxre/regnfa.c\
	lib/uxre/regparse.c\
	lib/uxre/stubs.c

# LIB PATH
LIBCOMMON= lib/libcommon.a
LIBUXRE= lib/libuxre.a

# LIB OBJS
LIBCOMMONOBJ= $(LIBCOMMONSRC:.c=.o)
LIBUXREOBJ= $(LIBCOMMONSRC:.c=.o)

# ALL
LIB= $(LIBCOMMON) $(LIBUXRE)
OBJ= $(BIN:=.o) $(EBIN:=.o) $(AWKOBJ) $(CPIOOBJ) $(DFOBJ) $(DIFFOBJ) $(EXPANDOBJ) $(EGREPOBJ) $(FGREPOBJ) $(GREPOBJ) $(KILLOBJ) $(LEXOBJ) $(NEWFORMOBJ) $(PATCHOBJ) $(PAXOBJ) $(SEDOBJ) $(TABSOBJ) $(TESTOBJ) $(UNEXPANDOBJ) $(YACCOBJ) $(LIBCOMMONOBJ) $(LIBUXREOBJ)
SRC= $(BIN:=.c) $(EBIN:=.c)

# VAR RULES
all: $(BIN) $(EBIN)

$(BIN): $(LIB) $(@:=.o)
$(EBIN): $(LIB)
$(OBJ): $(HDR) config.mk

# RULES
$(AWKOBJ): src/awk/ytab.h
src/awk/awk: $(AWKOBJ)
	@echo "CC $@ $(AWKOBJ) $(LIB) -lm"
	@$(CC) $(LDFLAGS) -o $@ $(AWKOBJ) -lm

src/cpio/cpio: $(CPIOOBJ)
	@echo "CC $@ $(CPIOOBJ) $(LIB) -lcurses"
	@$(CC) $(LDFLAGS) -o $@ $(CPIOOBJ) $(LIB) -lcurses

src/cpio/pax: $(PAXOBJ)
	@echo "CC $@ $(PAXOBJ) $(LIB) -lcurses"
	@$(CC) $(LDFLAGS) -o $@ $(PAXOBJ) $(LIB) -lcurses

src/csplit/csplit: src/csplit/csplit.o
	@echo "CC $@ $< $(LIB) -lm"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) -lm

src/dc/dc: $(DCOBJ)
	@echo "CC $@ $(DCOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(DCOBJ) $(LIB)

src/diff/diff: $(DIFFOBJ)
	@echo "CC $@ $(DIFFOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(DIFFOBJ) $(LIB)

src/expand/expand: $(EXPANDOBJ)
	@echo "CC $@ $(EXPANDOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(EXPANDOBJ) $(LIB)

src/expand/unexpand: $(UNEXPANDOBJ)
	@echo "CC $@ $(UNEXPANDOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(UNEXPANDOBJ) $(LIB)

src/grep/egrep: $(EGREPOBJ)
	@echo "CC $@ $(EGREPOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(EGREPOBJ) $(LIB)

src/grep/fgrep: $(FGREPOBJ)
	@echo "CC $@ $(FGREPOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(FGREPOBJ) $(LIB)

src/grep/grep: $(GREPOBJ)
	@echo "CC $@ $(GREPOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(GREPOBJ) $(LIB)

src/kill/kill: $(KILLOBJ)
	@echo "CC $@ $(KILLOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(KILLOBJ) $(LIB)

src/lex/lex: $(LEXOBJ)
	@echo "CC $@ $(LEXOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(LEXOBJ)

src/ls/ls: src/ls/ls.o
	@echo "CC $@ $< $(LIB) -ltermcap"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) -ltermcap

src/more/more: src/more/more.o
	@echo "CC $@ $< $(LIB) -ltermcap"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) -ltermcap

src/patch/patch: $(PATCHOBJ)
	@echo "CC $@ $(PATCHOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(PATCHOBJ) # -lbsd

src/sed/sed: $(SEDOBJ)
	@echo "CC $@ $(SEDOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(SEDOBJ) $(LIB)

src/tabs/newform: $(NEWFORMOBJ)
	@echo "CC $@ $(NEWFORMOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(NEWFORMOBJ) $(LIB)

src/tabs/tabs: $(TABSOBJ)
	@echo "CC $@ $(TABSOBJ) $(LIB) -ltermcap"
	@$(CC) $(LDFLAGS) -o $@ $(TABSOBJ) $(LIB) -ltermcap

src/test/test: $(TESTOBJ)
	@echo "CC $@ $(TESTOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(TESTOBJ) $(LIB)

src/yacc/yacc: $(YACCOBJ)
	@echo "CC $@ $(YACCOBJ) $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $(YACCOBJ)

# SOURCE RULES
src/awk/proctab.c: src/awk/maketab
	$< src/awk/ytab.h > $@

src/awk/ytab.h: src/awk/ytab.c
src/awk/ytab.c:
	$(YACC) src/awk/awkgram.y
	mv y.tab.c src/awk/ytab.c
	mv y.tab.h src/awk/ytab.h

src/bc/bc.o: src/bc/bc.c
src/bc/bc.c: src/bc/bc.y
	$(YACC) $<
	sed -f src/bc/yyval.sed < y.tab.c > $@
	rm -f y.tab.c

src/expr/expr.c:  src/expr/expr.y
	$(YACC) $<
	mv y.tab.c $@

src/grep/egrep.c: src/grep/egrep.y
	$(YACC) $<
	mv y.tab.c $@

src/lex/parser.c: src/lex/parser.y
	$(YACC) $<
	mv y.tab.c $@

# HEADER RULES
inc/heirloom.h: CHANGES
	rm -f inc/heirloom.h
	awk <CHANGES '{ if ($$2 ~ /^[0-9][0-9][0-9][0-9][0-9][0-9]$$/) \
			version = $$2; \
		else \
			version = '`date +%y%m%d`'; \
		printf("#define\tHEIRLOOM_TOOLCHEST_VERSION\t%d\n", \
			version + 20000000); \
		exit }' >inc/heirloom.h

# SUFFIX RULES
.o:
	@echo "CC $@ $< $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) $(LDLIBS)

.c.o:
	@echo "CC $@ $<"
	@$(CC) $(CFLAGS) $(CPPFLAGS) $(_CPPFLAGS) $(INC) -o $@ -c $<

# LIBRARIES RULES
$(LIBCOMMON): $(LIBCOMMONOBJ)
	$(AR) rc $@ $(LIBCOMMONOBJ)
	$(RANLIB) $@

$(LIBUXRE): $(LIBUXREOBJ)
	$(AR) rc $@ $(LIBUXREOBJ)
	$(RANLIB) $@

# USER ACTIONS
install-extra:
	$(INSTALL) -dm 755 $(DESTDIR)/$(DFLDIR)
	$(INSTALL) -dm 755 $(DESTDIR)/$(LIBDIR)
	$(INSTALL) -cm 644 src/bc/lib.b src/diff/diffh src/ps/ps.dfl src/tar/tar.dfl $(DESTDIR)/$(DFLDIR)
	$(INSTALL) -cm 644 src/file/magic src/lex/ncform src/lex/nceucform src/lex/nrform src/yacc/yaccpar $(DESTDIR)/$(LIBDIR)

install-man:
	$(INSTALL) -dm 755 $(DESTDIR)/$(MANDIR)/man1
	$(INSTALL) -dm 755 $(DESTDIR)/$(MANDIR)/man5
	$(INSTALL) -cm 644 $(MAN1) $(DESTDIR)/$(MANDIR)/man1
	$(INSTALL) -cm 644 $(MAN5) $(DESTDIR)/$(MANDIR)/man5

install: all install-extra install-man
	$(INSTALL) -dm 755 $(DESTDIR)/$(BINDIR)
	$(INSTALL) -cm 755 $(BIN) $(EBIN) $(DESTDIR)/$(BINDIR)
	ln -s test $(DESTDIR)/$(BINDIR)/[

clean:
	rm -f $(BIN) $(EBIN) $(OBJ) $(LIB) inc/heirloom.h src/awk/proctab.c src/awk/ytab.h src/awk/ytab.c src/bc/bc.c src/expr/expr.c src/grep/egrep.c src/lex/parser.c y.tab.h

.NOTPARALLEL:
.PHONY:
	all install clean
