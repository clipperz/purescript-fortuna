"use strict";

exports._showBytes = bytes => "bytes:[" + bytes.reduce(((a, i) => (a == "") ? i : a + "," + i), "") + "]";
exports._foldMapBytesToString = f => bytes => bytes.reduce((a, i) => a + f(i), "");

// function typedArrayToBuffer(array /*: Uint8Array*/) /*: ArrayBuffer*/ {
//     return array.buffer.slice(array.byteOffset, array.byteLength + array.byteOffset)
// }
// exports._typedArrayToBuffer = typedArrayToBuffer

exports._typedArrayToBuffer = a => a.buffer.slice(a.byteOffset, a.byteLength + a.byteOffset)