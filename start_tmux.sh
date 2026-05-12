#!/bin/bash
if tmux has-session -t minecraft > /dev/null 2>&1; then
	:
else
	cd /home/pi/minecraft;tmux new-session -d -s "minecraft" ./start.sh
	echo "start minecraft"
fi

