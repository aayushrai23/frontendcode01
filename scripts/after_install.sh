#!/bin/bash
cd /home/ubuntu/frontend
rm -rf node_modules build
npm install
npm run build

