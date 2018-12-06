/*jslint node: true */
"use strict";

exports.port = null;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = false;
exports.bLight = false;

exports.webPort = 3000;

exports.storage = 'sqlite';


exports.initial_witnesses = [
	"3S54NLWNU3C3LPM7YZXZ5RCVTH73PX6L",
	"4GS7QDQDXB5DTZ3LDMO7PXNYZECHETL5",
	"745GOP6EIMXUQAUTYJ4BGOQMOB73VEUA",
	"FFMNZP67C4VUWME457RC4YMJ22FRNGWU",
	"HIJ7ICSJNREXM34DO4NKXOHU5YECW2BM",
	"HPVNBW2EEFUHEHWVXKQGPZXACSRYCQM3",
	"M4DYA43VSBNKG6J6CT5B42VME2NNNPRR",
	"QDG7YOZ23PLCHQLF3QAZBHIWWZ44DPA6",
	"VL4AETJV22VUEO3LS2FHR52FVUJZVFXQ",
	"VV7ILJYLUMC6BKRT4JEBTEUHPI2H3Y5O",
	"W6SXXZCKWUPIAVBPVGBB23GJSEDVTP7T",
	"Y254VHHUJBVQW45PPVPPDGPZDGTVZITW"
]


/*'wss://trustnote.org/tg' */
exports.initial_peers = [
	'ws://127.0.0.1:6616'
];

console.log('finished explorer conf');
