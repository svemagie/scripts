#!/bin/bash
##################################
#
# Based on
# More Info at https://github.com/markwk/writing-tracker
#
# INTRODUCTION: 
# Daily script to navigate to get INBOX mailcount

# Name of daily stats file
DATA_FILE="/Users/sven/Documents/Projekte/quantified_sven/data/mails-stats.csv"

CURRENTDATETIME=`Date +"%Y-%m-%d %T"`
CURRENTDATE=`Date +"%Y-%m-%d"`
YESTERDAY=`Date -v-1d +%F`

# Run our analysis and post to some log messages. 
echo "Mailcount for ${CURRENTDATETIME}"

# Counts 
mail_count=`osascript mailcount.osa`

# Save stats as new line with date to local csv
echo ${YESTERDAY}, ${CURRENTDATETIME}, $mail_count >> $DATA_FILE

# Optional for Mac
# uncomment to send a mac notification message
#osascript -e 'display notification "Successfully copied writing files and logged stats into git." with title "Yesterday Daily Writing Stats Saved"'
