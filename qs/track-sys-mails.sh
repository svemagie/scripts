#!/bin/bash
##################################
#
# MAILCOUNT TRACKER
#
# More Info at https://github.com/markwk/writing-tracker
#
# INTRODUCTION: 
# Daily script to count mails in INBOX and store stats to csv
# for further quantifiedself tracking

# Name of daily stats file
DATA_FILE="$HOME/Library/CloudStorage/GoogleDrive-pr.giersig@gmail.com/Meine Ablage/data/writing/track-sys-mails.csv"
CURRENTDATE=`date +"%Y-%m-%d"`

# Linux format
#YESTERDAY=`date --date="yesterday" +"%Y-%m-%d"`
# Mac format
YESTERDAY=`date -v-1d +%F`

# Run our analysis and post to some log messages. 
echo "INBOX Stats Analysis for ${CURRENTDATE}"

# Counts 
mail_count=`osascript $HOME/bin/mailcount.osa`

# Save stats as new line with date to local csv
echo ${CURRENTDATE}, $mail_count >> $DATA_FILE
echo "Mails: $mail_count"

# Optional for Mac
# uncomment to send a mac notification message
osascript -e 'display notification "Successfully counted mails and logged stats." with title "Daily INBOX Stats Saved"'
