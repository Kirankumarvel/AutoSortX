#!/bin/bash

# Create necessary directories
mkdir -p logs backup

# Set up cron job
(crontab -l 2>/dev/null; echo "0 * * * * /path/to/AutoSortX/autosortx.sh >> /var/log/autosortx.log 2>&1") | crontab -

echo "Setup completed! AutoSortX will now run automatically."
