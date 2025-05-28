#! /bin/bash

# directory to clean
CLEAN_DIR= "/tmp/myapp"

#log file location
LOG_FILE= "var/log/cleanup_temp.log"

#timestamp
TIMESTAMP= $(date "+%y-%m-%d %h-%m-%s")

#check if directroy exists
if [ -d "$CLEAN_DIR" ]; then
    echo "$TIMESTAMP -cleaning files older than 10 minutes in $CLEAN_DIR" >> "$LOG_FILE"
    find "$CLEAN_DIR" -type -f -mmin +10 -exec rm -f {} \; >> "$LOG_FILE" 2>&1
else
    echo  "$TIMESTAMP - Directory $CLEAN_DIR not found. " >> "$LOG_FILE"

    this bash script is used to check temporary directory. if present then it deletes files older than 10 minutes and log the cleanup
    with timestamp to /var/log/cleanup_temp.log
    if the directory is not found this log also saved in log file.

    