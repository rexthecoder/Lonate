// ignore: non_constant_identifier_names
var MAX_ARRAY_LENGTH = 4294967295;

bool isLength(value) {
  return value.runtimeType == int && value > -1 && value % 1 == 0;
}

//For cheking if two maps are equal
bool mapsEqual(Map? a, Map? b) {
  if (a == b) return true;
  if (a == null || b == null) return false;
  if (a.length != b.length) return false;

  for (final k in a.keys) {
    var bValue = b[k];
    if (bValue == null && !b.containsKey(k)) return false;
    if (bValue != a[k]) return false;
  }

  return true;
}

List baseFill(array, value, start, end) {
  var length = array.length;
  start = start.toInt();

  end = (end == null || end > length) ? length : end.toInt();
  if (end < 0) {
    end += length;
  }
  end = start > end ? 0 : end.toInt();
  while (start < end) {
    array[start++] = value;
  }
  return array;
}
