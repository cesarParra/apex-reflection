import 'package:antlr4/antlr4.dart';

class CaseInsensitiveInputStream extends InputStream {
  late List<int> lookaheadData;

  CaseInsensitiveInputStream.fromString(super.data) : super.fromString() {
    // Reuse the base class's already-decoded code points (`data`) instead of
    // decoding the source string's runes a second time.
    final base = data;
    lookaheadData = List<int>.generate(base.length,
        (i) => (base[i] >= 65 && base[i] <= 90) ? base[i] + 32 : base[i],
        growable: false);
  }

  @override
  // ignore: non_constant_identifier_names
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
