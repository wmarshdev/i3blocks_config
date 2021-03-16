#!/bin/bash

amixer get Master | sed 5q | grep -q '\[on\]'
muted=$?
volume=`awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)`

if [[ $muted -eq 1 ]]
then
  echo "$volume (muted)"
else
  echo $volume
fi
