#!/bin/sh

LOCK=/tmp/toolbar.lock

if [ -f "$LOCK" ]; then
    echo expand
    rm -f "$LOCK"
else 
    echo collapse
    touch "$LOCK"
fi
