library encode_endian;
import 'package:encode_endian/base.dart';

List<int> encodeEndian(int n, int k, { endianType = EndianType.bigEndian }) {
  var hexStr = getHexString(n, k);
  var bytes = convertHexString2Bytes(hexStr);

  return convertBytesEndianType(bytes, k, endianType);
}