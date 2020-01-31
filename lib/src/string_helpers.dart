/// Misc string helpers

String capitalize(String s) => (s == null) ? null : s[0].toUpperCase() + s.substring(1);

String lowercase(String s) => (s == null) ? null : s[0].toLowerCase() + s.substring(1);
