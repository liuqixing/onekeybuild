#!/bin/bash
./deploy.sh
./start.sh
rm -rf ~/.config/headless15/trustnote*
rm ./trustnote-headless/start.js
cp ./genesis-scripts/headless.start.js ./trustnote-headless/start.js
cd ./trustnote-headless/play
node create_genesis.js pay
echo "finish all!"