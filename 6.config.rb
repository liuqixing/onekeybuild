#!/usr/bin/ruby
require "json"
genesisHash = File.read("./genesisHash.txt")
witnessAddress = File.read("./data/witnessAddress.json")


constants = File.read("./config-files/constants.conf.js")
File.open("./config-files/constants.js","w+") do |file|
    constants["REPLACE_GENESIS_UNIT"] = genesisHash
    file.puts constants[""]
end

hub = File.read("./config-files/hub.conf.js")
File.open("./config-files/hub-conf.js","w+") do |file|
    hub["REPLACE_WITNESSES"] = witnessAddress
    file.puts constants[""]
end


explorer = File.read("./config-files/explorer.conf.js")
File.open("./config-files/explorer-conf.js","w+") do |file|
    explorer["REPLACE_WITNESSES"] = witnessAddress
    file.puts constants[""]
end


relay = File.read("./config-files/relay.conf.js")
File.open("./trustnote-hub/node_modules/trustnote-relay/conf.js","w+") do |file|
    explorer["REPLACE_WITNESSES"] = witnessAddress
    file.puts constants[""]
end