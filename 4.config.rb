#!/usr/bin/ruby
require "json"
text = File.read("./data/config.json")
json = JSON.parse(text)
arrOutputs = json[12]["address"]
from_address = json[14]["address"]
payee_address = json[13]["address"]

gen_file = "./trustnote-headless/play/create_genesis.js"
gen_text = File.read(gen_file)
gen_text["FIRSTAMOUNT"] = arrOutputs
gen_text["FROMADDRESS"] = from_address
gen_text["PAYEEADDRESS"] = payee_address
File.open(gen_file,"w+") do |file|
    file.puts gen_text
end

