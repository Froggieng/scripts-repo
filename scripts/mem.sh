#!/usr/bin/env bash

totalmem=$(free -m | awk '/Mem/ {print $2}')
availmem=$(free -m | awk '/Mem/ {print $7}')
buffcache=$(free -m | awk '/Mem/ {print $6}')
usedmem=$(($totalmem-$availmem))
memusage=$(echo "scale=2; $usedmem * 100 / $totalmem" | bc)

echo
echo MEMORY UTILISATION TEST
echo
echo Total Memory: $totalmem MB
echo Used Memory: $usedmem MB
echo Available Memory: $availmem MB
echo Buffer/Cache Memory: $buffcache MB
echo Memory Usage: $usedmem '/' $totalmem MB '(' $memusage % ')'
echo

if (( $(echo "$memusage > 80" | bc) )); then
	echo "Bad Memory!! :("
	echo
else
	echo "Memory is okay. :)"
	echo
fi
