#!/bin/bash
./deploy.sh
./start.sh
# rm -rf ~/.config/headless15/trustnote*
# cp ~/.config/trustnote-hub/trustnote* ~/.config/headless15/
cd ./trustnote-headless/play
node create_genesis.js pay
echo "finish all!"