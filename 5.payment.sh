from_address=$(cat ./data/config.json | jq .[14].address)
payee_address=$(cat ./data/config.json | jq .[13].address)

fun_get_text(){
  IFS="  "
  rm $2
  touch $2
  cat $1 | while read -r LINE
  do
    LINE=${LINE/'"PYQJWUWRMUUUSUHKNJWFHSR5OADZMUYR"'/$payee_address}
    LINE=${LINE/'"LS3PUAGJ2CEYBKWPODVV72D3IWWBXNXO"'/$from_address}
    echo "$LINE" >> $2
  done
}

fun_get_text ./config-files/payment.conf.js ./trustnote-headless/play/create_payment.js

rm -rf ~/.config/headless15/trustnote*
cp -r ~/.config/headless13/ ~/.config/headless15

cd ./trustnote-headless/play/
node create_payment.js