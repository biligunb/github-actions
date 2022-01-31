echo "Kill all the running PM2 actions"
pm2 kill

echo "Jump to app folder"
cd /home/ubuntu/github-actions

echo "Update app from Git"
git pull

echo "Install app dependencies"
sudo rm -rf node_modules package-lock.json
sudo npm install

echo "Run new PM2 action"
pm2 start ecosystem.config.js
