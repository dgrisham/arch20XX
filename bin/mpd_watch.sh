#!/bin/bash

cmd="$@"
[[ -z "$cmd" ]] && return 1

echo "$cmd" >/home/grish/log
eval "$cmd"
while :; do
    mpc idle >/dev/null
    eval "$cmd"
done
