#!/bin/bash

echo "[DEPLOY] Deploying express-chat locally..."

# Stop old process if running
pm2 stop express-chat || echo "No running process"

# Install dependencies
npm install

# Start the app
pm2 start app.js --name express-chat || echo "Start failed"

echo "[DEPLOY] Done!"
