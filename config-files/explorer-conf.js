/*jslint node: true */
"use strict";

exports.port = null;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = false;
exports.bLight = false;

exports.webPort = 3000;

exports.storage = 'sqlite';


exports.initial_witnesses = [
	"5WEIWLLLMWEWZBFLS62XECV64JFBLWVE",
	"6WACSWIDFXYU6OBCOR3LOM2PDZ2VBOC3",
	"B5OC6KJ2XDDZMS5ARNFLYQIFZJ2NO4OS",
	"GPEJ7D7I74YLVYTCIV6VBLHUYLSZPN7Z",
	"IG3BOSE7L66N7SGDUYQZJICZHEGBW6QV",
	"MWA6HOY5YT5GCINY3AZY5I4JLTEM6VHE",
	"MX66X3GRLJ2RWQEWVLR5XFG6A3TXNDUY",
	"NAJDYJNFQVNGWAQ6FPBSY7H4346QUDEL",
	"PWW5XJ2XJIYBBFQOIXI2SMJX2ZB7NT3Q",
	"RISNFPYX64KXQEOXMSY7PH67QTDX3HEH",
	"S6FK2JNRWBHOCKSW3OF43I42N5VQZ765",
	"UBZ3YSJKHUJYJRP7SJ7CQAROSX2WT56L"
]


/*'wss://trustnote.org/tg' */
exports.initial_peers = [
	'ws://127.0.0.1:6616'
];

console.log('finished explorer conf');
