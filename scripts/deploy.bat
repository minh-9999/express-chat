@echo off
echo [DEPLOY] Deploying express-chat locally...

:: Stop the previous process if it exists (using PM2)
pm2 stop express-chat || echo "No running process"

:: Install dependencies if needed
npm install

:: Restart the application
pm2 start app.js --name express-chat || echo "Start failed"

echo [DEPLOY] Done!
