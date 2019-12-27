#!/bin/bash
##################################
#
# WRITING TRACKER
#
# More Info at https://github.com/markwk/writing-tracker
#
# INTRODUCTION: 
# Daily script to navigate to a directory of plain text files,
# add files to git repo, calculate key diff stats, store stats to csv
# and commit to git with message  
# 
# Optional: 
# * Send a local mac push notification. 
# * Track actual files directory of copy files to a new dirctory for tracking
#
# Designed to help track writing and notes files in in plaintext
# it should work with any directory of plain text files. 
#
# by Mark Koester 
# github.com/markwk
# markwkoester@gmail.com 
# 
##################################
# SETUP 
# [If haven't already, install git locally]
#
# 1. Either make your current files directory git repo
# Or create a copy directory of files and make it a git repo
#
# 2. Copy this script and create file into a local directory as archive-daily-git-commit.bash 
# 3. Make file executable by setting permissions with commmand:
# $ chmod +x archive-daily-git-commit.bash
# 
# 4. Configure Directory references below. 
# 5. Edit cron to run daily by running command:
# $ crontab -e
# add line like this which runs at 1am daily:
# 00  1  *  *  * /path/to/bash/archive-daily-git-commit.bash
#
##################################
# CONFIGURATION
#
# Uncomment and set your target directories.
#
# ARCHIVE_DIR=/Users/markkoester/Library/Mobile' 'Documents/9CR7T2DMDG~com~ngocluu~onewriter/Documents/Notes_TheArchive/
# COPIED_DIR="/Users/markkoester/Development/bash/the_archive_writings_tracking_repo/"
# Name of Directory with files we will be tracking
#TARGET_DIR=/Users/markkoester/Library/Mobile' 'Documents/9CR7T2DMDG~com~ngocluu~onewriter/Documents/Archive/

# Name of daily stats file
DATA_FILE="/Users/sven/Documents/Projekte/quantified_sven/data/mails-stats.csv"
#
##################################

CURRENTDATETIME=`Date +"%Y-%m-%d %T"`
CURRENTDATE=`Date +"%Y-%m-%d"`
YESTERDAY=`Date -v-1d +%F`

# Run our analysis and post to some log messages. 
echo "Writing Stats Analysis for ${CURRENTDATETIME}"

# Counts 
mail_count=`osascript mailcount.osa`

# Save stats as new line with date to local csv
echo ${CURRENTDATE}, $mail_count >> $DATA_FILE

# Optional for Mac
# uncomment to send a mac notification message
#osascript -e 'display notification "Successfully copied writing files and logged stats into git." with title "Yesterday Daily Writing Stats Saved"'
