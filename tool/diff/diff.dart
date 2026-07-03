import 'dart:convert';
import 'package:apex_reflection/src/service/case_insensitive_input_stream.dart';
import 'package:apex_reflection/src/service/walker.dart';
import 'package:apex_reflection/src/service/apex_pp/apex_pp_parser.dart';
import 'package:apex_reflection/src/model/types.dart';

TypeMirror antlr(String body) {
  final d = ApexWalkerDefinition();
  Walker.walk(CaseInsensitiveInputStream.fromString(body), d,
      (p) => p.compilationUnit());
  return d.getGeneratedApexType()!;
}

const corpus = <String, String>{
  'simple': 'class MyClass{}',
  'docs': '/**\n * @description Class description\n */\nclass MyClass{}',
  'block-docs': '/**********\n@group Group Name\n@description Class description\n**********/\nclass MyClass{}',
  'comments-anywhere': 'public  class class_with_comments {\n  private static void m0() { m1(); /****/ }\n  /****/\n  private static void m1() {}\n}',
  'anno-before-docs': '@IsTest\n/**\n* @group Integration Tests\n* @description This is a unit test class.\n*/\nprivate class SampleTestClass {}',
  'anno-after-docs': "/**\n * @description Account related operations.\n */\n@RestResource(urlMapping='/Account/*')\nprivate class SampleTestClass {}",
  'private': 'private class MyClass{}',
  'global': 'global class MyClass{}',
  'protected': 'protected class MyClass{}',
  'virtual': 'public virtual class MyClass{}',
  'abstract': 'public abstract class MyClass{}',
  'ns-anno': '@NamespaceAccessible public virtual class MyClass{}',
  'istest-anno': '@IsTest private class MyClass{}',
  'anno-params': '@IsTest(Parallel=true) private class MyClass{}',
  'anno-multi': "@InvocableMethod(label='Get Account Names' description='Returns the list of account names corresponding to the specified account IDs.' category='Account') private class MyClass{}",
  'extends': 'public class MyClass extends ParentClass{}',
  'properties': 'public class MyClass {\n @NamespaceAccessible public String MyProperty1 { get; set; }\n private List<Integer> MyProperty2 { get; set; }\n}',
  'fields': 'public class MyClass {\n private String myVar1, myVar2;\n private Integer myVar3;\n}',
  'transient': 'public class MyClass { transient String myVar1; }',
  'final-field': 'public class MyClass { final String myVar1; }',
  'field-value': "public class MyClass { private String myVar1 = 'some value'; }",
  'methods': "public class MyClass {\n @NamespaceAccessible\n public void sayHi() { System.debug(getGreeting()); }\n public String getGreeting() { return 'Hi!'; }\n}",
  'virtual-method': "public virtual class MyClass {\n public virtual void sayHi() {}\n public String getGreeting() { return 'Hi!'; }\n}",
  'method-params-doc': 'public class MyClass {\n /**\n * @description Some description\n * @param param1 The description for param1\n */\n @NamespaceAccessible\n public void sayHi(String param1) {}\n}',
  'constructors': "public class MyClass {\n private final String var1;\n @NamespaceAccessible\n public MyClass() { this.var1 = 'Hello!'; }\n public MyClass(String greeting) { this.var1 = greeting; }\n}",
  'inner-enum': 'public class MyClass {\n @NamespaceAccessible\n public enum MyEnum { A,B,C }\n}',
  'inner-interface': 'public class MyClass {\n @NamespaceAccessible\n public interface MyInterface { String sampleMethod(String prop1, String prop2); }\n}',
  'inner-class': "public class MyClass {\n public class InnerClass {\n public String innerMethod(String prop1, String prop2) { return ''; }\n }\n}",
  'null-coalesce': "public class MyClass { public class InnerClass { public String innerMethod() { return null ?? 'test'; } } }",
  'soql-multi': 'public class MyClass { public class InnerClass { public List<SObject> innerMethod() { return [SELECT Name, (SELECT Id FROM Child1) FROM Parent]; } } }',
  'switch-when': 'public class MyClass { public void doSomething() { switch on Account.SObjectType.newSObject() { when Schema.Account someAccount { System.debug(someAccount.Name); } } } }',
  'iface-simple': 'interface MyInterface{}',
  'iface-extends': 'public interface MyInterface extends Interface1, Interface2{}',
  'iface-methods': '@NamespaceAccessible\npublic interface MyInterface {\n void sayHi();\n String getGreeting();\n}',
  'iface-method-doc': '@NamespaceAccessible\npublic interface MyInterface {\n /**\n * @description Some description\n */\n @Deprecated\n void sayHi();\n}',
  'enum-simple': 'enum MyEnum{}',
  'enum-values': 'enum MyEnum { VALUE1, VALUE2, VALUE3 }',
  'enum-value-docs': 'enum MyEnum {\n /** @description Value 1 */\n VALUE1,\n /** @description Value 2 */\n VALUE2\n}',
  'tref-list': 'public class MyClass { private List<String> myVar1; }',
  'tref-set': 'public class MyClass { private Set<String> myVar1; }',
  'tref-map': 'public class MyClass { private Map<Integer, String> myVar1; }',
  'tref-generic': 'public class MyClass { private Iterable<String> myVar1; }',
  'tref-listoflist': 'public class MyClass { private List<List<String>> myVar1; }',
  'tref-mapofmap': 'public class MyClass { private Map<String, Map<Integer, String>> myVar1; }',
  'tref-array': 'public class MyClass { private String[] myVar1; }',
  'tref-array2': 'public class MyClass { private String[][] myVar1; }',
  'tref-namespaced': 'public class MyClass { public Iterable<String> start(Database.BatchableContext info) {} }',
  'soql-distance': "public class MyClass { public void myMethod() { List<Account> a = [SELECT Name, Location__c FROM Warehouse__c WHERE DISTANCE(Location__c, GEOLOCATION(37.775,-122.418), 'mi') < 20]; } }",
  'sosl-tolabel': "public class MyClass { public void myMethod() { String s = 'test'; Object r = [FIND :s IN ALL FIELDS RETURNING Account(Id, toLabel(Name)) LIMIT 10]; } }",
};

void main() {
  int match = 0, diff = 0, err = 0;
  final diffs = <String>[];
  corpus.forEach((name, body) {
    String a, p;
    try {
      a = jsonEncode(antlr(body).toJson());
    } catch (e) {
      print('  ANTLR-ERR $name: $e');
      return;
    }
    try {
      p = jsonEncode(ApexPpParser.parseType(body).toJson());
    } catch (e) {
      err++;
      diffs.add('PP-ERROR $name: $e');
      return;
    }
    if (a == p) {
      match++;
    } else {
      diff++;
      diffs.add('DIFF $name:\n  ANTLR: $a\n  PP   : $p');
    }
  });
  print('MATCH=$match DIFF=$diff PP_ERR=$err / ${corpus.length}');
  print('');
  for (final d in diffs) {
    print(d);
    print('---');
  }
}
