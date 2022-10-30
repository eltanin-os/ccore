#!/bin/execlineb -S3
if { redo-ifchange maketab awkgram.tab.c awkgram.tab.h }
redirfd -w 1 $3
./maketab awkgram.tab.h
