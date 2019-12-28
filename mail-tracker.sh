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
DATA_FILE="/Users/sven/Documents/Projekte/quantified_sven/data/mails-stats.csv"
CURRENTDATE=`Date +"%Y-%m-%d"`

# Run our analysis and post to some log messages. 
echo "INBOX Stats Analysis for ${CURRENTDATETIME}"

# Counts 
mail_count=`osascript /Users/sven/bin/mailcount.osa`

# Save stats as new line with date to local csv
echo ${CURRENTDATE}, $mail_count >> $DATA_FILE

# Optional for Mac
# uncomment to send a mac notification message
#osascript -e 'display notification "Successfully counted mails and logged stats." with title "Daily INBOX Stats Saved"'
