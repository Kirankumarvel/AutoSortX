#!/bin/bash

# Load configuration
source config.env

# Create directories if they don't exist
mkdir -p "$IMAGE_DIR" "$DOCUMENT_DIR" "$VIDEO_DIR" "$BACKUP_DIR"

# Move files based on extensions
mv $SOURCE_DIR/*.{jpg,png,gif} "$IMAGE_DIR" 2>/dev/null
mv $SOURCE_DIR/*.{pdf,docx,txt} "$DOCUMENT_DIR" 2>/dev/null
mv $SOURCE_DIR/*.{mp4,mkv,avi} "$VIDEO_DIR" 2>/dev/null

# Log activity
echo "$(date) - Files sorted successfully." >> logs/autosortx.log
