#!/bin/bash
##################################
#
# DOWNLOAD TRACKER

TARGET_DIR="$HOME/Downloads"
DATA_FILE="$HOME/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/writing/track-sys-downloads.csv"

CURRENTDATETIME=`date +"%Y-%m-%d %T"`
CURRENTDATE=`date +"%Y-%m-%d"`
# Linux format
#YESTERDAY=`date --date="yesterday" +"%Y-%m-%d"`
# Mac format
#YESTERDAY=`date -v-1d +%F`

cd "$TARGET_DIR"
total_files="$(find . -type f | wc -l)"

echo "Files: $total_files"

#echo ${YESTERDAY}, ${CURRENTDATETIME}, $total_files >> $DATA_FILE
echo ${CURRENTDATE}, $total_files >> $DATA_FILE

osascript -e 'display notification "Successfully Downloads logged stats." with title "Yesterday Downloads Stats Saved"'
