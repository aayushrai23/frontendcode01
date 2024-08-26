#!/bin/bash
cd /home/ubuntu/frontend
pm2 start react
npm run build
npx react-scripts start
