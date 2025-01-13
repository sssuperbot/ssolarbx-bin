#!/bin/bash

# Define the new cron job
CRON_JOB="* * */3 * * cd $PWD && ./run-screens.sh"

# Debug output
echo "Clearing previous crontab and adding the new job."
echo "New cron job: $CRON_JOB"

# Clear the current crontab
crontab -r 2>/dev/null

# Add the new cron job
echo "$CRON_JOB" | crontab -

# Verify the addition
if crontab -l | grep -qF "$CRON_JOB"; then
    echo "New cron job added successfully."
else
    echo "Failed to add the new cron job."
fi