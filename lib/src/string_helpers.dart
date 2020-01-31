/// Misc string helpers

String capitalize(String s) => (s == null) ? null : s[0].toUpperCase() + s.substring(1);

String lowercase(String s) => (s == null) ? null : s[0].toLowerCase() + s.substring(1);

String flutterFilenameStyle({String using}) {
  if (using == null || using.isEmpty) return using;
  bool wasUppercase = true;
  List<String> result = List();
  final List<String> letters = using.split('');
  for (String character in letters) {
    if (RegExp(r'^[A-Z]+$').hasMatch(character)) {
      if (!wasUppercase) result.add('_');
      wasUppercase = true;
    } else {
      wasUppercase = false;
    }
    result.add(character.toLowerCase());
  }
  return result.join();
}
