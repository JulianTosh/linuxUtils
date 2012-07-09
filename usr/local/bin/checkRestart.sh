#!/bin/bash
# Generally used to determine if a restart is required after applying updates.

LIST=$(lsof 2> /dev/null | grep 'DEL.*lib' | cut -f 1 -d ' ' | sort -u;)
COUNT=$(echo -e "$LIST" | grep -v "^$" | wc -l)
if [ $COUNT -gt 0 ]; then
  echo -e "These processes have stale libraries:\n$LIST"
  echo "Time for a reboot."
  exit 1
else
  echo "Reboot not required."
  exit 0
fi
