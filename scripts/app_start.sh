#!/bin/bash
cd /home/ubuntu/pipeline-deploy

npm run build

if ! command -v pm2 &> /dev/null
then
    sudo npm install -g pm2
fi
pm2 start npm --name "react-app" -- start
pm2 save
