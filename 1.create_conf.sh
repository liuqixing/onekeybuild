sudo rm -r ~/.config
cp -r ./genesis-scripts/* ./trustnote-headless/play/
mv ./trustnote-headless/play/create_genesis.js ./trustnote-headless/play/create_genesis_conf.js

echo "取消2次手动输入"
cp config-files/witness-headless-start.js ./trustnote-headless/play/node_modules/trustnote-headless/start.js
cp config-files/witness-headless-start.js ./trustnote-headless/start.js

echo "headless conf"
cp ./config-files/headless.conf.js ./trustnote-headless/conf.js
cp ./config-files/headless.conf.js ./trustnote-headless/play/node_modules/trustnote-headless/conf.js
cd ./trustnote-headless/play
node create_allConfig.js
cd ../../
