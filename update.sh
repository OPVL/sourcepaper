#!/bin/bash

WP_WORKING_DIR="$HOME/wallpaper"
WP_SIZING="3840x2160"
WP_SOURCE="https://source.unsplash.com/random/$WP_SIZING"
WP_QUERY=""
WP_OUTPUT_DATE=$(date +%d-%b-%Y-%H:%M:%S)
WP_OUTPUT_FILENAME="images/${WP_OUTPUT_DATE}"
WP_OUTPUT_FILETYPE="jpg"

if [ $# -gt 0 ]; then
    for i in `seq 1 $#`; do
        WP_QUERY+="${!i}"
        WP_OUTPUT_FILENAME+="_${!i}"

        if [ $i -lt $# ]; then
            WP_QUERY+=","
        fi
    done 

    WP_SOURCE+="?$WP_QUERY"
fi

WP_OUTPUT_FILENAME+=".$WP_OUTPUT_FILETYPE"


echo $WP_SOURCE
echo $WP_OUTPUT_FILENAME
WP_LATEST="${WP_WORKING_DIR}/${WP_OUTPUT_FILENAME}"

echo $WP_LATEST
wget -O $WP_OUTPUT_FILENAME $WP_SOURCE

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'"$WP_LATEST"\"
