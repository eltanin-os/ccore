INSTALL= /usr/bin/install

PREFIX= /usr/local
BINDIR= $(PREFIX)/bin
LIBDIR= $(PREFIX)/lib
ETCDIR= $(PREFIX)/etc
DFLDIR= $(ETCDIR)/default

AR     = ar
CC     = cc
YACC   = byacc -dy
RANLIB = ranlib


CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_FILE_OFFSET_BITS=64
CFLAGS   = -Os
LDFLAGS  =
LDLIBS   =
