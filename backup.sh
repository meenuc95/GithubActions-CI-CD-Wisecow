#!/bin/bash

# Variables
BACKUP_SRC="./linux/script"
BACKUP_DST="./backup"
BACKUP_DATE=$(date +'%Y-%m-%d-%S')
BACKUP_FILENAME="backup_$BACKUP_DATE.tar.gz"


# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DST/$BACKUP_DATE"

# Archive the source directory
tar -cvf "$BACKUP_DST/$BACKUP_DATE/$BACKUP_FILENAME" "$BACKUP_SRC"

# Verify if the backup was created successfully
if [ $? -eq 0 ]; then
    echo "Backup succeeded."
else
    echo "Backup failed."
fi
