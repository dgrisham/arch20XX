#!/bin/bash


BLANK="$SRC/cmus/blank.jpg"
COVER_DIR="/tmp/cmus_album_cover"
COVER="$COVER_DIR/cover.jpg"
SET_COVER="$SRC/cmus/set_cover.sh"

mkdir -p $COVER_DIR

cp $BLANK $COVER

if [[ -z "$DISPLAY" ]]; then
    while true; do $SET_COVER; done &
    mpv -vo caca --loop-file=yes --msg-level=all=no $COVER
else
    feh -x. -A ';' --image-bg black $COVER&

    COVER_WINDOW=`xdotool getactivewindow`
    #COVER_WINDOW=`pidof feh`


    while true
    do
        $SET_COVER "$COVER_WINDOW"
    # xdotool key --window $COVER_WINDOW r
    done
fi
