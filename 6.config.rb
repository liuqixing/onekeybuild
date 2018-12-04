#!/usr/bin/ruby
require "json"
genesisHash = File.read("./genesisHash.txt")
witnessAddress = File.read("./data/witnessAddress.json")



File.open(gen_file,"w+") do |file|
    file.puts gen_text
end




input="./config-files/constants.conf.js"
echo ""  > ./config-files/constants.js
while IFS= read -r var
do
  text=${var/REPLACE_GENESIS_UNIT/$genesisHash}
  echo -e "$text" >> ./config-files/constants.js
done < $input


input="./config-files/hub.conf.js"
echo ""  > ./config-files/constants.js
while IFS= read -r var
do
  text=${var/REPLACE_WITNESSES/$witnessAddress}
  echo -e "$text" >> ./config-files/hub-conf.js
done < $input


input="./config-files/explorer.conf.js"
echo ""  > ./config-files/explorer-conf.js
while IFS= read -r var
do
  text=${var/REPLACE_WITNESSES/$witnessAddress}
  echo -e "$text" >> ./config-files/explorer-conf.js
done < $input



input="./config-files/relay.conf.js"
echo ""  > ./trustnote-hub/node_modules/trustnote-relay/conf.js
while IFS= read -r var
do
  text=${var/REPLACE_WITNESSES/$witnessAddress}
  echo -e "$text" >> ./trustnote-hub/node_modules/trustnote-relay/conf.js
done < $input