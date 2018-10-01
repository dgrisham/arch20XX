#!/bin/bash

cmd="$@"
[[ -z "$cmd" ]] && return 1

eval "$cmd"
while :; do
    mpc idle >/dev/null
    eval "$cmd"
done
