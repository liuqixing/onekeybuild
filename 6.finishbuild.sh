#!/bin/bash
genesisHash=$(cat ./genesisHash.txt)
witnessAddress=$(cat ./data/witnessAddress.json)


input="./config-files/constants.conf.js"
echo ""  > ./config-files/constants.js
while IFS= read -r var
do
  text=${var/REPLACE_GENESIS_UNIT/$genesisHash}
  echo $text >> ./config-files/constants.js
done < $input


input="./config-files/hub.conf.js"
echo ""  > ./config-files/constants.js
while IFS= read -r var
do
  text=${var/REPLACE_WITNESSES/$witnessAddress}
  echo $text >> ./config-files/hub-conf.js
done < $input


input="./config-files/explorer.conf.js"
echo ""  > ./config-files/explorer-conf.js
while IFS= read -r var
do
  text=${var/REPLACE_WITNESSES/$witnessAddress}
  echo $text >> ./config-files/explorer-conf.js
done < $input



input="./config-files/relay.conf.js"
echo ""  > ./trustnote-hub/node_modules/trustnote-relay/conf.js
while IFS= read -r var
do
  text=${var/REPLACE_WITNESSES/$witnessAddress}
  echo $text >> ./trustnote-hub/node_modules/trustnote-relay/conf.js
done < $input


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

