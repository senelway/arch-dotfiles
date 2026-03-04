#!/bin/bash

trackpad=$(upower --dump 2>/dev/null | grep -A 15 "Magic Trackpad" | grep "percentage" | awk '{print $2}')
bathys=$(upower --dump 2>/dev/null | grep -A 15 "Bathys" | grep "percentage" | awk '{print $2}')

output=""
[ -n "$trackpad" ] && output="󰟸 ${trackpad}"
[ -n "$bathys" ] && output="${output:+$output  } ${bathys}"

echo "$output"
