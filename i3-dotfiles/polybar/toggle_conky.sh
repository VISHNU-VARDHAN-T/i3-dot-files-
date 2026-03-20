#!/bin/bash
if pgrep -x "conky" > /dev/null
then
    # If running, kill it
    killall conky
else
    # If not running, start it
    conky &
fi
