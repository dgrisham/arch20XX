#!/bin/bash

cmd="$@"
[[ -z "$cmd" ]] && return 1

echo "$cmd"
eval "$cmd"
while :; do
    mpc idle >/dev/null
    eval "$cmd"
done
