Q)Write a shell script program that displays a different message based on the current time of the day.  


#!/bin/bash
clear
hour=$(date +"%H")

if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
    echo "Good Morning!"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
    echo "Good Afternoon!"
elif [ $hour -ge 18 ] && [ $hour -lt 21 ]; then
    echo "Good Evening!"
else
    echo "Good Night!"
fi

