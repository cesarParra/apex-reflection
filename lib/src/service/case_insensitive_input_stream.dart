import 'package:antlr4/antlr4.dart';

class CaseInsensitiveInputStream extends InputStream {
  late List<int> lookaheadData;

  CaseInsensitiveInputStream.fromString(String data) : super.fromString(data) {
    lookaheadData = data.toLowerCase().runes.toList(growable: false);
  }

  @override
  int LA(int offset) {
    if (offset == 0) {
      return 0; // undefined
    }
    if (offset < 0) {
      offset += 1; // e.g., translate LA(-1) to use offset=0
    }
    final pos = index + offset - 1;
    if (pos < 0 || pos >= size) {
      // invalid
      return Token.EOF;
    }
    return lookaheadData[pos];
  }
}
