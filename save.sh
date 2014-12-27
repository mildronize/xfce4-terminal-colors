#!/bin/bash
file="/home/tom/.config/xfce4/terminal/terminalrc"
name=$1

cat "$file" | grep Color >> "$name"
