#!/bin/sh

LOCK=/tmp/toolbar.lock

if [ -f "$LOCK" ]; then
    exit 0
else 
    exit 1
fi
