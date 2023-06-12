#!/bin/bash

uptime=$(uptime -p)
cpuusage=$(top -bn1 | awk '/Cpu/ {print $2 + $4}')

echo
echo Server Uptime: $uptime
echo CPU Usage: $cpuusage%
echo
