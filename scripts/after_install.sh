#!/bin/bash
cd /home/ubuntu/test/frontend-code
rm -rf /home/ubuntu/test/frontend-code/node_modules

npm install
npm run build

