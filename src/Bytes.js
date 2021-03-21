"use strict";

exports._showBytes = bytes => "bytes:[" + bytes.reduce(((a, i) => (a == "") ? i : a + "," + i), "") + "]";
exports._foldMapBytesToString = f => bytes => bytes.reduce((a, i) => a + f(i), "");
