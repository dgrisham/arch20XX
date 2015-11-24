#!/bin/bash
# Prints metadata from song on cmus events
# To enable, in cmus use `:set status_display_program=/path/to/cmus_event.sh`

[[ $2 == 'playing' ]] && PRE='' || PRE='▫ ' # actually a square glyph in some fonts

# notification
declare -A META

BLANK="$HOME/src/cmus/blank.jpg"

STATE=$(cmus-remote -Q)
FILE=$(echo "$STATE" | grep file | cut -f 2- -d' ')
JPG="${FILE%/*}/cover.jpg"
OLD_JPG="$JPG"

while true 
do
    STATE=$(cmus-remote -Q)
    FILE=$(echo "$STATE" | grep file | cut -f 2- -d' ')
    OLD_JPG="$JPG"
    JPG="${FILE%/*}/cover.jpg"
    [[ "$JPG" == "$OLD_JPG" ]] || break
    sleep 1
done

TMP_COVER="/tmp/cmus_album_cover/"
mkdir -p $TMP_COVER
[[ -e $JPG ]] || JPG="$BLANK"
cp "$JPG" "$TMP_COVER/cover.jpg"
