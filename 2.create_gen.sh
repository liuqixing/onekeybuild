# rm -rf ~/.config/headless15/trustnote*
# cp -r .testnet-builder/data/headless15/ ~/.config/
arrOutputs=$(cat ./data/config.json | jq .[12].address)
from_address=$(cat ./data/config.json | jq .[14].address)
payee_address=$(cat ./data/config.json | jq .[13].address)
echo -e "arrOutputs:\n$arrOutputs"
echo -e "from_address:\n$from_address"
echo -e "payee_address:\n$payee_address"

fun_get_text(){
  IFS="  "
  rm $2
  touch $2
  cat $1 | while read -r LINE
  do
    LINE=${LINE/'"REPLACE_ARR_OUT_PUTS"'/$arrOutputs}
    LINE=${LINE/'"REPLACE_FROM_ADDRESS"'/$from_address}
    LINE=${LINE/'"REPLACE_PAYEE_ADDRESS"'/$payee_address}
    echo "$LINE" >> $2
  done
}

fun_get_text ./genesis-scripts/create_genesis.js ./trustnote-headless/play/create_genesis.js
fun_get_text ./genesis-scripts/create_payment.js ./trustnote-headless/play/create_payment.js

cp ./config-files/headless.conf.js ./trustnote-headless/conf.js
cp ./config-files/headless.conf.js ./trustnote-headless/play/node_modules/trustnote-headless/conf.js

cd ./trustnote-headless/play
node create_genesis.js
cd ../../
