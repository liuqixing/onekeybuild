#!/bin/bash
genesisHash=$(cat ./genesisHash.txt)
text=$(cat ./config-files/constants.js)
text=${text/REPLACE_GENESIS_UNIT/$genesisHash}
echo text > ./config-files/constants.js

witnessAddress=$(cat ./data/witnessAddress.json)
text=$(cat ./config-files/hub-conf.js)
text=${text/REPLACE_WITNESSES/$witnessAddress}
echo text > ./config-files/hub-conf.js

text=$(cat ./config-files/explorer-conf.js)
text=${text/REPLACE_WITNESSES/$witnessAddress}
echo text > ./config-files/explorer-conf.js