"use strict";

exports.port = 6655;
exports.bServeAsHub = false;
exports.bSaveJointJson = true;
exports.bLight = false;

exports.storage = 'sqlite';

exports.initial_witnesses = REPLACE_WITNESSES;

// exports.initial_peers = [
//     'wss://victor.trustnote.org/tn',
//     'wss://eason.trustnote.org/tn',
//     'wss://lymn.trustnote.org/tn',
//     'wss://bob.trustnote.org/tn',
//     'wss://curry.trustnote.org/tn',
//     'wss://kake.trustnote.org/tn'
// ];

console.log('finished relay conf');