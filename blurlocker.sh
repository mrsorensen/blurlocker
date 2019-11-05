#!/bin/bash

# Target resolution
RES=1366x768
# Location for temporary lockscreen wallpaper
TMPBG=/tmp/screen.png
# Location of the logo you want
LOCK=~/blurlocker/arch.png


# Screenshot current screen
scrot -o $TMPBG
# Convert screenshot to blur
convert $TMPBG -blur 0x20 -resize $RES $TMPBG
# Paste logo in center of blurred screenshot
convert $TMPBG $LOCK -gravity center -composite $TMPBG
# Lock the screen with the custom image
i3lock -i $TMPBG
