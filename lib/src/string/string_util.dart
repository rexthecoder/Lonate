import 'dart:math' as math;

/// Converts string to camel case.
String camelCase(String string) {
  return string.split('_').map((s) => s.toLowerCase()).join('');
}

/// Deburrs string by converting Latin-1 Supplement and Latin Extended-A letters to basic Latin letters and removing combining diacritical marks.
String deburr(String string) {
  return string.replaceAllMapped(
      RegExp(r'[\u00c0-\u00d6\u00d8-\u00f6\u00f8-\u00ff\u0100-\u024f]'),
      (match) {
    return String.fromCharCode(match.group(0)!.codeUnitAt(0) - 0x0060);
  });
}

/// Converts the characters "&", "<", ">", '"', and "'" in string to their corresponding HTML entities.
String escape(String string) {
  return string
      .replaceAll(RegExp(r'&'), '&amp;')
      .replaceAll(RegExp(r'<'), '&lt;')
      .replaceAll(RegExp(r'>'), '&gt;')
      .replaceAll(RegExp(r'"'), '&quot;')
      .replaceAll(RegExp(r"'"), '&#x27;');
}

/// Escapes the RegExp special characters "^", "$", "", ".", "*", "+", "?", "(", ")", "[", "]", "{", "}", and "|" in string.
String escapeRegExp(String string) {
  return string.replaceAll(RegExp(r'[\\^$.*+?()[\]{}|]'), r'\\$&');
}

/// Converts string to kebab case.
String kebabCase(String string) {
  return string.split('_').map((s) => s.toLowerCase()).join('-');
}

/// Converts the first character of string to upper case and the remaining to lower case
String lowerFirst(String string) {
  return string.substring(0, 1).toLowerCase() + string.substring(1);
}

/// Converts the first character of string to upper case and the remaining to lower case.
String capitalize(String string) {
  return string.substring(0, 1).toUpperCase() + string.substring(1);
}

/// Pads string on the left and right sides if it's shorter than length. Padding characters are truncated if they can't be evenly divided by length.
String pad(String string, int length, [String? chars]) {
  chars ??= ' ';
  if (string.length < length) {
    final padLength = (length - string.length) ~/ chars.length;
    final padString = List.filled(padLength, chars).join();
    return padString.substring(0, padLength * chars.length) +
        string +
        padString.substring(padLength * chars.length);
  }
  return string;
}

/// Pads string on the right side if it's shorter than length. Padding characters are truncated if they exceed length.
String padEnd(String string, int length, [String? chars]) {
  chars ??= ' ';
  if (string.length < length) {
    final padLength = (length - string.length) ~/ chars.length;
    final padString = List.filled(padLength, chars).join();
    return string +
        padString.substring(0, padLength * chars.length) +
        padString.substring(padLength * chars.length);
  }
  return string;
}

/// Pads string on the left side if it's shorter than length. Padding characters are truncated if they exceed length.
String padStart(String string, int length, [String? chars]) {
  chars ??= ' ';
  if (string.length < length) {
    final padLength = (length - string.length) ~/ chars.length;
    final padString = List.filled(padLength, chars).join();
    return padString.substring(0, padLength * chars.length) +
        string +
        padString.substring(padLength * chars.length);
  }
  return string;
}

/// Repeats the given string n times.
String repeat(String string, int n) {
  return List.filled(n, string).join();
}

/// Replaces matches for pattern in string with replacement.
String replace(String string, Pattern pattern, String replacement) {
  return string.replaceAll(pattern, replacement);
}

/// Converts string to snake case.
String snakeCase(String string) {
  return string.split('_').map((s) => s.toLowerCase()).join('_');
}

/// Converts string to start case.
String startCase(String string) {
  return string.split('_').map((s) => s.toLowerCase()).join(' ');
}

/// Checks if string starts with the given target string.
bool startsWith(String string, [target, position = 0]) {
  return string.substring(position, position + target.length) == target;
}

/// Truncates string if it's longer than the given maximum string length.
/// The last characters of the truncated string are replaced with the omission string which defaults to "...".
String truncate(String string, int length, [String? omission]) {
  if (string.length <= length) {
    return string;
  }
  omission ??= '...';
  return string.substring(0, length - omission.length) + omission;
}

/// Converts the first character of string to upper case.
String upperFirst([string = '']) {
  return string.substring(0, 1).toUpperCase() + string.substring(1);
}

/// Generates a unique ID. If prefix is given, the ID is appended to it.
String uniqueId([prefix = '']) =>
    prefix + math.Random().nextInt(1000000).toString();
