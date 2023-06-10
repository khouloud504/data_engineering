#!/bin/bash

# Add the cron job to the crontab
echo "*/10 * * * * python /app/etl.py >> /var/log/etl.log 2>&1" > /etc/cron.d/cronjob

# Apply cron job permissions
chmod 0644 /etc/cron.d/cronjob

# Start the cron service in the background
cron -f
