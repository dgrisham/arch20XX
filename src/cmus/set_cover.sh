#!/bin/bash

if [[ ! -z "$DISPLAY" ]]; then
    COVER_WINDOW="$1"
    [[ -z "$COVER_WINDOW" ]] && exit
fi

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
#echo $COVER_WINDOW >> $HOME/testing
[[ ! -z "$DISPLAY" ]] && xdotool key --window $COVER_WINDOW 0
