#!/bin/bash

sudo apt-get update

if ! command -v node &> /dev/null
then
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

cd /home/ubuntu/pipeline-deploy

sudo rm -rf node_modules/ build/

