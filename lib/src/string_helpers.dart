/// Misc string helpers

String capitalize(String s) => (s == null) ? null : s[0].toUpperCase() + s.substring(1);

String lowercase(String s) => (s == null) ? null : s[0].toLowerCase() + s.substring(1);

String pad(int size, {String initialValue = '', String using = ' '}) {
  assert(initialValue != null);
  assert(using != null && using.length > 0);
  assert(size > 0);
  while (initialValue.length < size) {
    initialValue += using;
  }
  return initialValue.substring(0, size);
}
