#!/bin/bash

cp -r ./data/witness* ~/.config/
cp -r ./data/headless* ~/.config/
cp -r ./config-files/hub-conf.js ./trustnote-hub/conf.js
cp -r ./config-files/witness-conf.js ./trustnote-witness/conf.js
cp -r ./config-files/explorer-conf.js ./trustnote-explorer/conf.js
cp -r ./config-files/witness-headless-start.js ./trustnote-witness/node_modules/trustnote-headless/start.js
cp -r ./config-files/witness-start.js ./trustnote-witness/start.js
cp -r ./config-files/constants.js ./trustnote-witness/node_modules/trustnote-common/constants.js
cp -r ./config-files/constants.js ./trustnote-headless/node_modules/trustnote-common/constants.js
cp -r ./config-files/constants.js ./trustnote-hub/node_modules/trustnote-common/constants.js
cp -r ./config-files/constants.js ./trustnote-explorer/node_modules/trustnote-common/constants.js

./deploy.sh
./start.sh
# rm -rf ~/.config/headless15/trustnote*
# cp ~/.config/trustnote-hub/trustnote* ~/.config/headless15/
cd ./trustnote-headless/play
node create_genesis.js pay
echo "finish all!"