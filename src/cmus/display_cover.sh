#!/bin/bash

BLANK="$SRC/cmus/blank.jpg"
COVER_DIR="/tmp/cmus_album_cover"
COVER="$COVER_DIR/cover.jpg"
SET_COVER="$SRC/cmus/set_cover.sh"

mkdir -p $COVER_DIR

cp $BLANK $COVER

feh -x. -A ';' --image-bg black $COVER&

sleep 0.2

CUR_WINDOW=$(xdotool getwindowfocus)

while true
do
    $SET_COVER && xdotool key --window $CUR_WINDOW 0
done
