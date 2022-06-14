#!/bin/rc -e
redo-ifchange maketab awkgram.tab.c awkgram.tab.h
./maketab awkgram.tab.h > $3
