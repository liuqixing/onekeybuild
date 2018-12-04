#!/bin/bash
./deploy.sh
./start.sh
rm -rf ~/.config/headless15/trustnote*
cd ./trustnote-headless/play
node create_genesis.js pay
echo "finish all!"