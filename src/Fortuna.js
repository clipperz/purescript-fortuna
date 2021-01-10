"use strict";

function _randomByte () {
    return Math.floor(Math.random() * 256);
}

function _randomBytes (n) {
    let result = new Uint8Array(n);  

    for (i=0; i<n; i++) {
        result[i] = _randomByte();
    }

    return result;
}

function _initPRNG () {
    console.log("INIT PRNG");
}

exports._randomBytes = _randomBytes;
exports._initPRNG = _initPRNG;

// _initPRNG();