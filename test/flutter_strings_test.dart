import 'package:flutter_strings/flutter_strings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    String val = 'duck-';
    val = pad(15, initialValue: val, using: 'quack');
    expect(val, 'duck-quackquack');
  });
}
