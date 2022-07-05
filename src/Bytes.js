"use strict";

function _showBytes(bytes) { return "bytes:[" + bytes.reduce(((a, i) => (a == "") ? i : a + "," + i), "") + "]"; }
function _foldMapBytesToString(f) { return bytes => bytes.reduce((a, i) => a + f(i), ""); }

// function typedArrayToBuffer(array /*: Uint8Array*/) /*: ArrayBuffer*/ {
//     return array.buffer.slice(array.byteOffset, array.byteLength + array.byteOffset)
// }
// exports._typedArrayToBuffer = typedArrayToBuffer

function _typedArrayToBuffer(a) { return a.buffer.slice(a.byteOffset, a.byteLength + a.byteOffset); }

export {
	  _showBytes
	, _foldMapBytesToString
	, _typedArrayToBuffer
}