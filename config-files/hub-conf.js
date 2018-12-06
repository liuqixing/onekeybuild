/*jslint node: true */
"use strict";

exports.clientName = 'TTT';
exports.minClientVersion = '1.1.0';
exports.WS_PROTOCOL = 'ws://';
// https://console.developers.google.com
exports.pushApiProjectNumber = 0;
exports.pushApiKey = '';

exports.port = 6616;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = true;
exports.bSaveJointJson = true;
exports.bLight = false;

// this is used by wallet vendor only, to redirect bug reports to developers' email
exports.bug_sink_email = 'admin@example.org';
exports.bugs_from_email = 'bugs@example.org';

exports.HEARTBEAT_TIMEOUT = 300*1000;

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

exports.initial_peers = [
];

console.log('finished hub conf');
