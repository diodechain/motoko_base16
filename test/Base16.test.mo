import { test } "mo:test";
import Base16 "../src/Base16";
import Blob "mo:base/Blob";

test(
  "encode",
  func() {
    assert (Base16.encode(Blob.fromArray([0x00, 0x01, 0x02, 0x03])) == "00010203");
    assert (Base16.encode(Blob.fromArray([0xa3, 0xFF, 0xdd])) == "a3ffdd");
  },
);

test(
  "decode",
  func() {
    assert (Base16.decode("00010203") == ?Blob.fromArray([0x00, 0x01, 0x02, 0x03]));
    assert (Base16.decode("a3FFdd") == ?Blob.fromArray([0xa3, 0xFF, 0xdd]));
  },
);
