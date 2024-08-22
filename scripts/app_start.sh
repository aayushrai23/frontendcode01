#!/bin/bash
cd /home/ubuntu/pipeline-deploy || { echo "Failed to change directory"; exit 1; }
echo "Directory contents:"
ls -la
echo "Node version:"
node -v
echo "NPM version:"
npm -v
echo "Installing dependencies..."
npm install
echo "Building the project..."
npm run build
echo "Build complete. Starting application..."
npm start
