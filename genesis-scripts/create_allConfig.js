var fs = require('fs');
var crypto = require('crypto');
var Mnemonic = require('bitcore-mnemonic');
var Bitcore = require('bitcore-lib');
var objectHash = require('trustnote-common/object_hash.js');

var configArray = [];

function derivePubkey(xPubKey, path){
	var hdPubKey = new Bitcore.HDPublicKey(xPubKey);
	return hdPubKey.derive(path).publicKey.toBuffer().toString("base64");
}

function createWallet(){
	var deviceTempPrivKey = crypto.randomBytes(32);
	var devicePrevTempPrivKey = crypto.randomBytes(32);
	var passphrase = "";
	var mnemonic = new Mnemonic(); // generates new mnemonic
	while (!Mnemonic.isValid(mnemonic.toString()))
		mnemonic = new Mnemonic();
	var xPrivKey = mnemonic.toHDPrivateKey(passphrase);
	var strXPubKey = Bitcore.HDPublicKey(xPrivKey.derive("m/44'/0'/0'")).toString();
	var pubkey = derivePubkey(strXPubKey, "m/"+0+"/"+0);
	var arrDefinition = ['sig', {pubkey: pubkey}];
	var address = objectHash.getChash160(arrDefinition);
	var wallet = crypto.createHash("sha256").update(strXPubKey, "utf8").digest("base64");

	var obj = {};
	obj['passphrase'] = passphrase;
    obj['mnemonic_phrase'] = mnemonic.phrase;
    obj['temp_priv_key'] = deviceTempPrivKey.toString('base64');
    obj['prev_temp_priv_key'] = devicePrevTempPrivKey.toString('base64');
	obj['address'] = address;
	obj['wallet'] = wallet;
    obj['is_change'] = 0;
    obj['address_index'] = 0;
    obj['definition'] = arrDefinition;
    configArray.push(obj);
}

function writedown(){
	// config data
	fs.writeFile("../../data/config.json", JSON.stringify(configArray, null, '\t'), 'utf8', function(err){
	if (err)
		throw Error("failed to write json");
	});

	// all address
	var addressArray=[];
	var witnessAddressArray=[];

	for (var i = 0; i < configArray.length; i++) {
		var item = configArray[i];

		var dir;
		//创建目录,前12个为witness,后面的为headless
		if (i<12) {
			witnessAddressArray.push(item['address']);
			dir = '../../data/witness'+(i+1);
		}
		else {
			dir = '../../data/headless'+(i+1);
		}
		//所有地址
		addressArray.push(item['address']);
		if (!fs.existsSync(dir)){
			fs.mkdirSync(dir);
		}

		//写入启动的key
		var keys = {};
		keys['mnemonic_phrase'] = item['mnemonic_phrase'];
   		keys['temp_priv_key'] = item['temp_priv_key'];
    	keys['prev_temp_priv_key'] = item['prev_temp_priv_key'];

		fs.writeFile(dir+"/keys.json", JSON.stringify(keys, null, '\t'), 'utf8', function(err){
			if (err)
				throw Error("failed to write json");
		});
		//写入设备名称
		var cfg = {};
		cfg['deviceName'] = "witness"+(i+1);
		fs.writeFile(dir+"/conf.json", JSON.stringify(cfg, null, '\t'), 'utf8', function(err){
			if (err)
				throw Error("failed to write json");
		});
	}

	//12以后为headless，文件夹名称为headless*
	//写入所有地址
	fs.writeFile("../../data/allAddress.json", JSON.stringify(addressArray.sort(), null, '\t'), 'utf8', function(err){
		if (err)
			throw Error("failed to write json");
	});
	//写入witness地址
	fs.writeFile("../../data/witnessAddress.json", JSON.stringify(witnessAddressArray.sort(), null, '\t'), 'utf8', function(err){
		if (err)
			throw Error("failed to write json");
	});
}

for (var i = 0; i < 15; i++) {
	createWallet();
}

writedown()
