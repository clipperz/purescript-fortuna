"use strict";

function _randomByte () {
    return Math.floor(Math.random() * 256);
}

// ============================================================================
const gratuitousTimeout = 2000;

exports._randomBytes = (n) => (onError, onSuccess) => {
    let result = new Promise((resolve, reject) => {
        setTimeout(() => {
            var i;
            let result = new Uint8Array(n);  

            for (i=0; i<n; i++) {
                result[i] = _randomByte();
            }

            resolve(result);
        }, gratuitousTimeout);
    });

    result.then(onSuccess).catch(onError);
    return (cancelError, cancelerError, cancelerSuccess) => {
      // Handle however you'd cancel the `o` (if the API supports it)
    }
}

// ============================================================================

exports._initPRNG = (onError, onSuccess) => {
    let result = new Promise((resolve, reject) => {
        setTimeout(() => {
            console.log("INIT PRNG");
            resolve();
        }, gratuitousTimeout);
    })

    result.then(onSuccess).catch(onError);
    return (cancelError, cancelerError, cancelerSuccess) => {
      // Handle however you'd cancel the `o` (if the API supports it)
    }
}    

// ============================================================================
