genesisHash=$(cat ./genesisHash.txt)
echo "'$genesisHash'"

fun_get_text(){
  IFS="  "
  rm $2
  touch $2
  cat $1 | while read -r LINE
  do
    LINE=${LINE/$3/$4}
    echo "$LINE" >> $2
  done
}

fun_get_text ./config-files/constants.conf.js ./config-files/constants.js 'Ffrmbl8JSMhkflvwiH7Cfo8xs/oX1bRcda38IVUhtEo=' $genesisHash

witnessAddress=$(cat ./data/witnessAddress.json)

fun_get_text ./config-files/hub.conf.js ./config-files/hub-conf.js replace_your_witnessAddress $witnessAddress
fun_get_text ./config-files/explorer.conf.js ./config-files/explorer-conf.js replace_your_witnessAddress $witnessAddress

cp ./config-files/constants.js ./fusion-server/node_modules/trustnote-common/constants.js
cp ./trustnote-hub/node_modules/trustnote-relay/conf.js ./fusion-server/node_modules/trustnote-relay/conf.js

fun_get_text ./config-files/relay.conf.js ./trustnote-hub/node_modules/trustnote-relay/conf.js replace_your_witnessAddress $witnessAddress
chmod +x deploy.sh
./deploy.sh
chmod +x start.sh
./start.sh
