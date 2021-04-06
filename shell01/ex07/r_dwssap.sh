#!/bin/sh
cat /etc/passwd |\
awk -F ':' '{print $1}' |\
sed '1!n;d' |\
rev |\
sort -r |\
sed ''$FT_LINE1','$FT_LINE2'!d' |\
sed 's/$/, /' |\
awk '{print}' ORS='' |\
sed 's/, $/./'
