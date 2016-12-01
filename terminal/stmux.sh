#!/bin/bash
# Check if tmux are installed
command -v tmux >/dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "Please install tmux"
else
	tmux attach || tmux new
fi

exit
