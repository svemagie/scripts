#!/bin/bash
##################################
#
# DOWNLOAD TRACKER

TARGET_DIR="/Users/sven/Downloads"
DATA_FILE="/Users/sven/Documents/Projekte/quantified_sven/data/track-downloads.csv"

CURRENTDATETIME=`Date +"%Y-%m-%d %T"`
CURRENTDATE=`Date +"%Y-%m-%d"`
#YESTERDAY=`Date -v-1d +%F`

cd "$TARGET_DIR"
total_files="$(find . -type f | wc -l)"

echo "Files: $total_files"

#echo ${YESTERDAY}, ${CURRENTDATETIME}, $total_files >> $DATA_FILE
echo ${CURRENTDATE}, $total_files >> $DATA_FILE

osascript -e 'display notification "Successfully Downloads logged stats." with title "Yesterday Downloads Stats Saved"'
