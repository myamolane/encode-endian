import 'package:collection/collection.dart';
import 'package:encode_endian/encode_endian.dart';
import 'package:encode_endian/base.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('big endian encode test', () {
      assert(IterableEquality().equals(encodeEndian(0x0102, 2), [0x01, 0x02]));
      assert(IterableEquality().equals(encodeEndian(0xffee, 2), [0xff, 0xee]));
      assert(IterableEquality().equals(encodeEndian(-35, 2), [255, 221]));
      assert(IterableEquality().equals(encodeEndian(0x1234, 2), [0x12, 0x34]));
      assert(IterableEquality().equals(encodeEndian(0x1234, 4), [0x00, 0x00, 0x12, 0x34]));
      assert(IterableEquality().equals(encodeEndian(0x1234, 8), [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x34]));
    });

    test('little endian encode test', () {
      assert(IterableEquality().equals(encodeEndian(0x1234, 2, endianType: EndianType.littleEndian), [0x34, 0x12]));
      assert(IterableEquality().equals(encodeEndian(0xffee, 2, endianType: EndianType.littleEndian), [0xee, 0xff]));
      assert(IterableEquality().equals(encodeEndian(-35, 2, endianType: EndianType.littleEndian), [221, 255]));
      assert(IterableEquality().equals(encodeEndian(0x1234, 4, endianType: EndianType.littleEndian), [0x34, 0x12, 0x00, 0x00]));
      assert(IterableEquality().equals(encodeEndian(0x1234, 4, endianType: EndianType.littleEndian), [0x34, 0x12, 0x00, 0x00]));
      assert(IterableEquality().equals(encodeEndian(0x1234, 8, endianType: EndianType.littleEndian), [0x34, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]));
    });
  });
}
