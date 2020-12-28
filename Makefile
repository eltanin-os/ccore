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
	-DDIFFH='"$(DFLDIR)/diffh"'\
	-Dfunc='test'\
	-DLIBB='"$(ETCDIR)/lib.b"'\
	-DMAGIC='"$(ETCDIR)/magic"'\
	-DSHELL='"$(BINDIR)/sh"'\
	-DSUDL='"$(DFLDIR)/su"'\
	-DUSE_TERMCAP\
	-DSUS\
	-DSUS3\
	-DUCB

# BIN
BIN=\
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
	src/join/join\
	src/logname/logname\
	src/mesg/mesg\
	src/nice/nice\
	src/nl/nl\
	src/nohup/nohup\
	src/od/od\
	src/paste/paste\
	src/pr/pr\
	src/ps/ps\
	src/renice/renice\
	src/sort/sort\
	src/split/split\
	src/stty/stty\
	src/sync/sync\
	src/test/test\
	src/time/time\
	src/touch/touch\
	src/tr/tr\
	src/tsort/tsort\
	src/tty/tty\
	src/uniq/uniq\
	src/what/what\
	src/who/who\
	src/xargs/xargs

EBIN=\
	src/awk/awk\
	src/diff/diff\
	src/expand/expand\
	src/expand/unexpand\
	src/grep/egrep\
	src/grep/fgrep\
	src/grep/grep\
	src/kill/kill\
	src/more/more\
	src/patch/patch\
	src/pax/pax\
	src/sed/sed\
	src/tabs/newform\
	src/tabs/tabs

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
	src/grep/ac.c\
	src/grep/alloc.c\
	src/grep/grep.c\
	src/grep/grid.c\
	src/grep/plist.c\
	src/grep/rcomp.c\
	src/grep/sus.c

KILLSRC=\
	src/kill/kill.c\
	src/kill/strsig.c\
	src/kill/version.c

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
	src/pax/ar_io.c\
	src/pax/ar_subs.c\
	src/pax/buf_subs.c\
	src/pax/cache.c\
	src/pax/cpio.c\
	src/pax/file_subs.c\
	src/pax/ftree.c\
	src/pax/fts.c\
	src/pax/gen_subs.c\
	src/pax/getoldopt.c\
	src/pax/options.c\
	src/pax/pat_rep.c\
	src/pax/pax.c\
	src/pax/sel_subs.c\
	src/pax/strmode.c\
	src/pax/tables.c\
	src/pax/tar.c\
	src/pax/tty_subs.c

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
	man/cal.1\
	man/comm.1\
	man/csplit.1\
	man/cut.1\
	man/date.1\
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
	man/join.1\
	man/kill.1\
	man/logname.1\
	man/man.1\
	man/mesg.1\
	man/more.1\
	man/newform.1\
	man/nice.1\
	man/nl.1\
	man/nohup.1\
	man/od.1\
	man/paste.1\
	man/patch.1\
	man/pax.1\
	man/pr.1\
	man/ps.1\
	man/ps.1b\
	man/renice.1\
	man/sed.1\
	man/settime.1\
	man/sort.1\
	man/split.1\
	man/stty.1\
	man/stty.1b\
	man/sync.1m\
	man/tabs.1\
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
	man/xargs.1

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

src/pax/pax: $(PAXOBJ)
	@echo "CC $@ $(PAXOBJ)"
	@$(CC) $(LDFLAGS) -o $@ $(PAXOBJ)

src/csplit/csplit: src/csplit/csplit.o
	@echo "CC $@ $< $(LIB) -lm"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) -lm

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

# SOURCE RULES
src/awk/proctab.c: src/awk/maketab
	src/awk/maketab src/awk/ytab.h > src/awk/proctab.c

src/awk/maketab: src/awk/ytab.h src/awk/maketab.c
	@$(CC) $(LDFLAGS) -o $@ src/awk/maketab.c

src/awk/ytab.h: src/awk/ytab.c
src/awk/ytab.c:
	$(YACC) -bawk src/awk/awkgram.y
	mv awk.tab.c src/awk/ytab.c
	mv awk.tab.h src/awk/ytab.h

src/expr/expr.c:  src/expr/expr.y
	$(YACC) -bexpr $<
	mv expr.tab.c $@
	rm -f expr.tab.h

src/grep/egrep.c: src/grep/egrep.y
	$(YACC) -begrep $<
	mv egrep.tab.c $@
	rm -f egrep.tab.h

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
install-man:
	$(INSTALL) -dm 755 $(DESTDIR)/$(MANDIR)/man1
	$(INSTALL) -dm 755 $(DESTDIR)/$(MANDIR)/man5
	$(INSTALL) -cm 644 $(MAN1) $(DESTDIR)/$(MANDIR)/man1
	$(INSTALL) -cm 644 $(MAN5) $(DESTDIR)/$(MANDIR)/man5

install: all install-man
	$(INSTALL) -dm 755 $(DESTDIR)/$(DFLDIR)
	$(INSTALL) -dm 755 $(DESTDIR)/$(ETCDIR)
	$(INSTALL) -cm 644 src/diff/diffh src/ps/ps.dfl $(DESTDIR)/$(DFLDIR)
	$(INSTALL) -cm 644 src/file/magic $(DESTDIR)/$(ETCDIR)
	$(INSTALL) -dm 755 $(DESTDIR)/$(BINDIR)
	$(INSTALL) -cm 755 $(BIN) $(EBIN) $(DESTDIR)/$(BINDIR)
	ln -s pax $(DESTDIR)/$(BINDIR)/cpio
	ln -s pax $(DESTDIR)/$(BINDIR)/tar
	ln -s test $(DESTDIR)/$(BINDIR)/[

clean:
	rm -f $(BIN) $(EBIN) $(OBJ) $(LIB) inc/heirloom.h src/awk/proctab.c src/awk/ytab.h src/awk/ytab.c src/expr/expr.c src/grep/egrep.c src/awk/maketab src/awk/maketab.o *.tab.c *.tab.h

.PHONY:
	all install clean
