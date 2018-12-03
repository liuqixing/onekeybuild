#!/bin/bash
rm -rf ~/.config/headless15/trustnote*
cd ./trustnote-headless/play
node create_genesis.js gen
cd ../../
echo "finish!"