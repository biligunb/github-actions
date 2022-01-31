echo "Kill all the running PM2 actions"
whoami
pm2 kill

echo "Jump to app folder"
cd /home/ubuntu/github-actions

echo "Update app from Git"
git checkout .
git pull

echo "Install app dependencies"
sudo rm -rf node_modules package-lock.json
npm install

echo "Run new PM2 action"
pm2 start ecosystem.config.js
