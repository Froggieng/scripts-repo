#!/bin/bash

disksize=$(df -h --total | awk '/total/ {print $2}' )
diskused=$(df -h --total | awk '/total/ {print $3}')
diskavail=$(df -h --total | awk '/total/ {print $4}')
diskpercent=$(df -h --total | awk '/total/ {print $5}')

echo
echo Disk Size: $disksize
echo Disk Used: $diskused
echo Disk Available: $diskavail
echo Disk Usage: $diskpercent
echo
