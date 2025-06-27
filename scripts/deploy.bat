@echo off

set SERVER_USER=your_user
set SERVER_IP=your_server_ip
set SERVER_PATH=/path/to/chat-app

ssh %SERVER_USER%@%SERVER_IP% ^
    "cd %SERVER_PATH% && git pull origin main && npm install && (pm2 restart app || echo Restart failed)"