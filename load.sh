#!/bin/bash
file="$HOME/.config/xfce4/terminal/terminalrc"
template="$1"

if [ -f "$template" ]; then
	# remove Color* lines from config
	sed -i '/Color/d' "$file"
	# append template to config
	cat "$template" >> "$file"
else
	echo "Template $template do not exists!"
	echo "Available templates:"
	ls | grep -v "\.sh" | sed 's/^/\t/g'
fi
