A library can convert integer to big endian or little endian.

A Dart version of [endian-code](https://github.com/emretapci/endian-code)

## Usage

A simple usage example:

```dart
import 'package:encode_endian/encode_endian.dart';
import 'package:encode_endian/base.dart';

main() {
  // default convert to big endian
  // [0x01, 0x02]
  encodeEndian(0x0102, 2);
  // [255, 221]
  encodeEndian(-35, 2);
  // [0x00, 0x00, 0x12, 0x34]
  encodeEndian(0x1234, 4);

  // convert to little endian
  // [0x34, 0x12]
  encodeEndian(0x1234, 2, endianType: EndianType.littleEndian);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
