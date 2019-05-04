#!/bin/bash
#::             RTD System System Managment Script
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:: Author:     Stephan S. 
#:: Version 1.00
#::
#::
#:: Purpose: The purpose of the script is to:
#::          1 - Launch Minecraft 
#::          2 - Check that Minecraft runs for at least one minute
#::          3 - If Minecraft crashes or quits after one minute, restart Minecraft 
#::  
#::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#::::::::::::::                                          ::::::::::::::::::::::
#::::::::::::::          Script Executive                ::::::::::::::::::::::
#::::::::::::::                                          ::::::::::::::::::::::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

pushd $(dirname "$0")

MC_SERVER_NAME=`cat server.properties |grep "motd=.*" ` 
export $MC_SERVER_NAME

while true; do

    start_epoch=$(date +%s)
    echo Starting Minecraft server $MC_SERVER_NAME ....
    java -Xmx2048M -Xms2048M -jar $(dirname "$0")/server.jar noggui broadcast
    #~/bin/jre1.8.0_73/bin/java -Xmx1024M -Xms1024M -jar $(dirname "$0")/server.jar noggui broadcast 

    # Abort if the application exited too quickly
    duration=$(( $(date +%s) - $start_epoch ))
    if [[ "$duration" < 60 ]]; then
        echo "Program exited too quickly! Aborting Minecraft Launcher...."
        exit
    fi

done

exit