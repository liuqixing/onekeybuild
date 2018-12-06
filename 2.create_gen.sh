rm -rf ~/.config/headless15/trustnote*
cp -r ./data/headless15/ ~/.config/
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
    LINE=${LINE/'"IO3JFSLJQVS4GNWR6I4QYIPBYGIUF3ZF"'/$arrOutputs}
    LINE=${LINE/'"WXPL4JYBBUVARY54CSDWG6GBYGTB4VRR"'/$from_address}
    LINE=${LINE/'"XIM76DRNUNFWPXPI5AGOCYNMA3IOXL7V"'/$payee_address}
    echo "$LINE" >> $2
  done
}

fun_get_text ./trustnote-headless/play/create_genesis_conf.js ./trustnote-headless/play/create_genesis.js



cd ./trustnote-headless/play
node create_genesis.js