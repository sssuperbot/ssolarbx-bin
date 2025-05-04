#!/bin/bash

# Kill existing screens
echo "Killing existing screens..."
screen -S "proxy" -X quit || true

# Wait a bit for the screens to terminate
sleep 1

# Start new solarbx screen
echo "Starting proxy screen process..."
screen -dmS "proxy"
screen -S "proxy" -X stuff "bash ./run-bot.sh\n"

# Print info
echo "New screen processes started, view them with:"
echo "screen -r proxy"