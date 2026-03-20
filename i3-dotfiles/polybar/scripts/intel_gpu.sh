#!/bin/bash

usage=$(intel_gpu_top -J -s 1000 2>/dev/null \
| grep -o '"Render/3D":[0-9]*' \
| grep -o '[0-9]*' \
| head -n1)

echo ${usage:-0}
