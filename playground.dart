import 'dart:convert';
import 'lib/apex_reflection.dart';

main() {
  final someInterface = '''
  public interface MyInter {}
  ''';

  final result = Reflection.reflect(someInterface);
  const encoder = JsonEncoder.withIndent('  ');
  print(encoder.convert(result.typeMirror?.toJson()));
}
