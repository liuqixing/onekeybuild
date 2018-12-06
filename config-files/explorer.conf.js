/*jslint node: true */
"use strict";

exports.port = null;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = false;
exports.bLight = false;

exports.webPort = 3000;

exports.storage = 'sqlite';


exports.initial_witnesses = replace_your_witnessAddress


/*'wss://trustnote.org/tg' */
exports.initial_peers = [
	'ws://127.0.0.1:6616'
];

console.log('finished explorer conf');
