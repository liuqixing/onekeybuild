/*jslint node: true */
"use strict";

exports.port = null;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = false;
exports.bLight = false;

exports.webPort = 3000;

exports.storage = 'sqlite';


exports.initial_witnesses = [
	"6C6A2J4BUHFQZH5M3EAFXLO3GAQ2ZVUX",
	"7FW6ZTN2JBMKZXO6XKQ7UADT3QQ5KWE3",
	"BR23XGEGD5HY55JMKNOG3H7GVZSRY6NE",
	"HLTGMRLP6WA3GTO2MMR3UOKQA3GJ74MR",
	"L2M3ITNS4IKAYNQ7NFGZB2HPAYWERD6A",
	"MKGXTMK2HXMMTZWI7T4ZMAXK7PJQMBZX",
	"NUUSIKANWIPGXNNICSMFZV3Q5UUOGS2P",
	"RITZ4WBYUZHD7DXXHWIVJJGSEESBSMVW",
	"T5TETMT6HCRX3DA5YPWLDF6CSKNEAFYK",
	"XQQEX7D2444AF2PFH4BTFON3Y7Q25KOM",
	"XXLT2NY4RZ34OUE4FY5OKUV5WDQ3MPTO",
	"Y3CDDNQI5MUTKLBMIX3BWRGWRBOJVBD3"
]


/*'wss://trustnote.org/tg' */
exports.initial_peers = [
	'ws://127.0.0.1:6616'
];

console.log('finished explorer conf');
