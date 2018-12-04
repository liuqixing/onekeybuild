#!/bin/bash
genesisHash=$(cat ./genesisHash.txt)
witnessAddress=$(cat ./data/witnessAddress.json)

text=$(cat ./config-files/constants.js)
text=${text/REPLACE_GENESIS_UNIT/$genesisHash}
echo $text > ./config-files/constants.js

text=$(cat ./config-files/hub-conf.js)
text=${text/REPLACE_WITNESSES/$witnessAddress}
echo $text > ./config-files/hub-conf.js

text=$(cat ./config-files/explorer-conf.js)
text=${text/REPLACE_WITNESSES/$witnessAddress}
echo $text > ./config-files/explorer-conf.js


rm ./trustnote-hub/node_modules/trustnote-relay/conf.js

text=$(cat ./config-files/relay.conf.js)
text=${text/REPLACE_WITNESSES/$witnessAddress}
echo $text > ./trustnote-hub/node_modules/trustnote-relay/conf.js


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

