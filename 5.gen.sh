#!/bin/bash
rm -rf ~/.config/headless15/trustnote*
rm ./trustnote-headless/start.js
cp ./genesis-scripts/headless.start.js ./trustnote-headless/start.js
cp ./genesis-scripts/headless.start.js ./trustnote-headless/play/start.js
# rm ./trustnote-headless/node_modules/trustnote-common/constants.js
# cp ./config-files/constants.js ./trustnote-headless/node_modules/trustnote-common/constants.js
cd ./trustnote-headless/play
node create_genesis.js gen
cd ../../
echo "finish!"