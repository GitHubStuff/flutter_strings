/// Misc string helpers

String capitalize(String s) => (s == null || s.trim() == '') ? s : s[0].toUpperCase() + (s.length > 1 ? s.substring(1) : '');

String lowercase(String s) => (s == null || s.trim() == '') ? s : s[0].toLowerCase() + (s.length > 1 ? s.substring(1) : '');

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

String indent(String text, [int amount = 0]) {
  if (text == null || amount == 0 || text.trim().isEmpty) return text;
  return text.padLeft(text.length + amount, ' ');
}
