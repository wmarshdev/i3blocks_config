#!/bin/bash                                                                                                        

# count how many updates we have got
ups=`/usr/lib/update-notifier/apt-check --human-readable | head -1 | awk '{print $1;}'`
 
# print the results
if [ "$ups" -eq "1" ]
then
  echo "<span foreground=\"yellow\">$ups update available</span>"
elif [ "$ups" -gt "1" ]
then
  echo "<span foreground=\"yellow\" weight=\"heavy\">$ups updates available</span>"
fi

