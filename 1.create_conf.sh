sudo rm -r ~/.config
cp -r ./genesis-scripts/* ./trustnote-headless/play/
# mv ~/testnet-builder/trustnote-headless/play/create_genesis.js ~/testnet-builder/trustnote-headless/play/create_genesis_conf.js

echo "取消2次手动输入"
cp ./config-files/witness-headless-start.js ./trustnote-headless/play/node_modules/trustnote-headless/start.js
cp ./config-files/witness-headless-start.js ./trustnote-headless/start.js
cd ./trustnote-headless/play
mkdir data
node create_allConfig.js
cd ../../
