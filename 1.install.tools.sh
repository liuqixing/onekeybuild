#!/bin/bash

sudo apt-get install build-essential git jq tree ruby

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install 8.9.4
sudo npm install pm2 -g
sudo npm install node-gyp -g