#!/bin/bash
cd /home/ubuntu/frontend-code
pm2 delete react
pm2 start npm --name "react" -- start
pm2 restart react
