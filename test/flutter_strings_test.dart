import 'package:flutter_strings/flutter_strings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('double first letters', () {
    final source = 'FFancyTableNameForDB';
    final answer = flutterFilenameStyle(using: source);
    final compare = 'ffancy_table_name_for_db';
    assert(compare == answer);
  });
  test('start with cap', () {
    final source = 'FancyTableNameForDB';
    final answer = flutterFilenameStyle(using: source);
    final compare = 'fancy_table_name_for_db';
    assert(compare == answer);
  });
  test('start with lowercase', () {
    final source = 'fancyTableNameForDB';
    final answer = flutterFilenameStyle(using: source);
    final compare = 'fancy_table_name_for_db';
    assert(compare == answer);
  });
  test('start more than two consecutive cap letters', () {
    final source = 'fancyTableNameForDBA';
    final answer = flutterFilenameStyle(using: source);
    final compare = 'fancy_table_name_for_dba';
    assert(compare == answer);
  });
}
