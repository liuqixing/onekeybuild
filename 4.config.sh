#!/bin/bash
echo "config"
mkdir data
sudo rm -r ~/.config
cp -r ./genesis-scripts/* ./trustnote-headless/play/
cd ./trustnote-headless/play/
sudo node create_allConfig.js --unsafe-perm
cd ../../
rm -rf ~/.config/headless15/trustnote*
cp -r ./data/headless15/ ~/.config/
echo ""


arrOutputs=$(cat ./data/config.json | jq .[12].address)
from_address=$(cat ./data/config.json | jq .[13].address)
payee_address=$(cat ./data/config.json | jq .[14].address)

echo "">./trustnote-headless/play/create_genesis.js

input="./genesis-scripts/create_genesis.js"
while IFS= read -r var
do
  text=${var/FIRSTAMOUNT/$arrOutputs}
  text=${text/FROMADDRESS/$from_address}
  text=${text/PAYEEADDRESS/$payee_address}
  echo $text>>./trustnote-headless/play/create_genesis.js
done < "$input"
echo "config finish"