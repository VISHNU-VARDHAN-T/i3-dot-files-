#!/bin/bash

prev_idle=0
prev_total=0

while true; do
    cpu=($(cat /proc/stat | grep '^cpu '))
    
    idle=${cpu[4]}
    total=0

    for value in "${cpu[@]:1}"; do
        total=$((total + value))
    done

    diff_idle=$((idle - prev_idle))
    diff_total=$((total - prev_total))

    diff_usage=$((100 * (diff_total - diff_idle) / diff_total))

    prev_idle=$idle
    prev_total=$total

    echo " $diff_usage%"
    sleep 1
done
