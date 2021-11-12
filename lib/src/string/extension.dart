import 'package:lonate/lonate.dart';

extension StringCase on String {
  /// Converts string to camel case.
  /// Example: "hello_world" -> "helloWorld"
  String get toCamelCase => camelCase(this);

  /// Converts string to kebab case.
  /// Example: "helloWorld" -> "hello-world"
  String get toKebabCase => kebabCase(this);

  /// Converts the first character of string to upper case and the remaining to lower case
  /// Example: "helloWorld" -> "HelloWorld"
  String get toLowerFirst => lowerFirst(this);

  /// Converts the first character of string to upper case and the remaining to lower case.
  /// Example: "helloWorld" -> "HelloWorld"
  String get toCapitalize => capitalize(this);

  /// Converts string to snake case.
  /// Example: "helloWorld" -> "hello_world"
  String get toSnakeCase => snakeCase(this);

  /// Converts string to start case.
  /// Example: "helloWorld" -> "HelloWorld"
  String get toStartCase => startCase(this);

  /// Checks if string starts with the given target string.
  /// Example: "helloWorld" -> "hello" -> true
  bool startsWith(String target, [position = 0]) =>
      startsWith(this, [target, position = 0]);

  /// Converts string to upper case.
  /// Example: "helloWorld" -> "HELLO_WORLD"
  String get toUpperFirst => upperFirst(this);
}

extension StringEscape on String {
  /// Converts the characters "&", "<", ">", '"', and "'" in string to their corresponding HTML entities.
  /// Example: "hello & world" -> "hello &amp; world"
  String get isEscape => escape(this);

  /// Escapes the RegExp special characters "^", "$", "", ".", "*", "+", "?", "(", ")", "[", "]", "{", "}", and "|" in string.
  /// Example: "hello ^ world" -> "hello \^ world"
  String get isEscapeRegExp => escapeRegExp(this);
}

extension StringPad on String {
  /// Pads string on the left and right sides if it's shorter than length. Padding characters are truncated if they can't be evenly divided by length.
  /// Example: "hello" -> "hello" -> "hello"
  String topad(int length, [String? chars]) => pad(this, length, chars);

  /// Pads string on the right side if it's shorter than length. Padding characters are truncated if they exceed length.
  /// Example: "hello" -> "hello" -> "hello"
  String toPadEnd(int length, [String? chars]) => padEnd(this, length, chars);

  /// Pads string on the left side if it's shorter than length.
  ///  Padding characters are truncated if they exceed length.
  /// Example: "hello" -> "hello" -> "hello"
  String toPadStart(int length, [String? chars]) =>
      padStart(this, length, chars);
}

extension StringMunipulator on String {
  /// Repeats the given string n times.
  /// Example: "hello" -> "hellohello"
  String toRepeat(int n) => repeat(this, n);

  /// Replaces matches for pattern in string with replacement.
  /// Example: "hello" -> "hello" -> "hello"
  String toReplace(RegExp pattern, String replacement) =>
      replace(this, pattern, replacement);

  /// Truncates string if it's longer than the given maximum string length.
  /// The last characters of the truncated string are replaced with the omission string which defaults to "...".
  /// Example: "hello" -> "hello" -> "hello"
  String toTruncate(int length, [String? omission]) =>
      truncate(this, length, omission);

  /// Deburrs string by converting Latin-1 Supplement and Latin Extended-A letters to basic Latin letters and removing combining diacritical marks.
  String get toDeburr => deburr(this);

  /// Generates a unique ID. If prefix is given, the ID is appended to it.
  /// Example: "hello" -> "hello" -> "hello"
  String get getUniqueId => uniqueId(this);
}
