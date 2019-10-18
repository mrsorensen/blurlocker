#!/bin/bash

RES=1366x768
TMPBG=/tmp/screen.png
LOCK=~/Pictures/lock.png

scrot -o $TMPBG
convert $TMPBG -blur 0x20 -resize $RES $TMPBG
convert $TMPBG $LOCK -gravity center -composite $TMPBG
i3lock -i $TMPBG
