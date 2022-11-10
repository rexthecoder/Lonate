import 'dart:math' as math;
import 'dart:math';

/// Performs a SameValueZero comparison between two values to determine if they are equivalent.
bool isEqual(a, b) {
  return a == b;
}

/// Checks if value is greater than other.
bool isGreater(dynamic value, dynamic other) {
  if (value is num && other is num) {
    return value > other;
  }
  return value.compareTo(other) > 0;
}

/// Checks if value is greater than or equal to other.
bool isGreaterEqual(dynamic value, dynamic other) =>
    isGreater(value, other) || isEqual(value, other);

/// Checks if value is less than other.
bool isLess(dynamic value, dynamic other) {
  if (value is num && other is num) {
    return value < other;
  }
  return value.compareTo(other) < 0;
}

/// Adds two numbers.
num add(num a, num b) => a + b;

/// Computes number rounded up to precision.
num ceil(num value, [num precision = 1]) =>
    (value / precision).ceil() * precision;

/// Divide two numbers.
num divide(num a, num b) => a / b;

///Computes number rounded down to precision.
num floor(num value, [num precision = 1]) =>
    (value / precision).floor() * precision;

/// Computes the maximum value of array. If array is empty or falsey, undefined is returned.
num arrayMax(List<dynamic> array) {
  dynamic max = array[0];
  for (var i = 1; i < array.length; i++) {
    if (isGreater(array[i], max)) {
      max = array[i];
    }
  }
  return max;
}

/// Computes the mean of the values in array.
num arrayMean(List<dynamic> array) {
  num sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum / array.length;
}

/// Computes the minimum value of array. If array is empty or falsey, undefined is returned.
num arrayMin(List<dynamic> array) {
  dynamic min = array[0];
  for (var i = 1; i < array.length; i++) {
    if (isLess(array[i], min)) {
      min = array[i];
    }
  }
  return min;
}

/// Multiply two numbers.
num multiply(num a, num b) => a * b;

///Computes number rounded to precision.
num round(num value, [num precision = 1]) =>
    (value / precision).round() * precision;

/// Subtract two numbers.
num subtract(num a, num b) => a - b;

/// Computes the sum of the values in array.
num arraySum(List<dynamic> array) {
  num sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum;
}

/// Clamps number within the inclusive lower and upper bounds.
num clamp(num value, num lower, num upper) {
  if (isLess(value, lower)) {
    return lower;
  }
  if (isGreater(value, upper)) {
    return upper;
  }
  return value;
}

/// Checks if n is between start and up to, but not including, end. If end is not specified,
///  it's set to start with start then set to 0.
/// If start is greater than end the params are swapped to support negative ranges.
bool inRange(num n, num start, [num? end]) {
  if (end == null) {
    end = start;
    start = 0;
  }
  if (start > end) {
    var tmp = start;
    start = end;
    end = tmp;
  }
  return isGreaterEqual(n, start) && isLess(n, end);
}

/// Produces a random number between the inclusive lower and upper bounds.
num random(num lower, num upper, [bool floating = false]) {
  if (floating) {
    return math.Random().nextDouble() * (upper - lower) + lower;
  }
  return math.Random().nextInt(upper.toInt() - lower.toInt()) + lower;
}

/// Produce the median  of the given array.
num median(List<dynamic> array) {
  array.sort();
  var half = (array.length / 2).floor();
  if (array.length % 2 == 0) {
    return (array[half - 1] + array[half]) / 2;
  }
  return array[half];
}

/// Computes the value that appears most frequently in array.
num mode(List<dynamic> array) {
  var counts = <int, int>{};
  for (var n in array) {
    counts[n] = (counts[n] ?? 0) + 1;
  }
  int? maxCount = 0;
  num? maxValue;
  for (var n in counts.keys) {
    if (counts[n]! > maxCount!) {
      maxCount = counts[n];
      maxValue = n;
    }
  }
  return maxValue ?? 0;
}

/// Computes the variance of the values in array.
num variance(List<dynamic> values) {
  var mean = arrayMean(values);
  num sum = 0;
  for (var i = 0; i < values.length; i++) {
    sum += math.pow(values[i] - mean, 2);
  }
  return sum / values.length;
}

/// Computes the standard deviation of the values in array.
num standardDeviation(List<dynamic> values) {
  return math.sqrt(variance(values));
}

/// Assigns own enumerable string keyed properties of source objects to the destination object.
/// Source objects are applied from left to right. Subsequent sources overwrite property assignments of previous sources.
Map assign(object, [source]) {
  if (source == null) {
    return object;
  }
  if (object is Map) {
    return Map.from(object)..addAll(source);
  }
  return Map.from(object)..addAll(source);
}

///it returns the key of the first element predicate returns truthy for instead of the element itself.
dynamic findKey(Map map, Function predicate) {
  for (var key in map.keys) {
    if (predicate(map[key])) {
      return key;
    }
  }
  return null;
}

///Gets the value at path of object. If the resolved value is undefined, the defaultValue is returned in its place.
dynamic get(object, path, defaultValue) {
  if (path is String) {
    path = path.split('.');
  }
  if (path is List<String>) {
    var index = 0;
    while (index < path.length) {
      object = object[path[index++]];
      if (object == null) {
        return defaultValue;
      }
    }
    return object;
  }
  return defaultValue;
}

/// Checks if path is a direct property of object.
bool hasObject(dynamic object, String path) {
  var keys = path.split('.');
  for (var i = 0; i < keys.length; i++) {
    if (object is Map) {
      object = object[keys[i]];
    } else if (object is List) {
      object = object[int.parse(keys[i])];
    } else {
      return false;
    }
  }
  return true;
}

//Checks if path is a direct or inherited property of object.
bool hasInObject(dynamic object, String path) {
  var keys = path.split('.');
  for (var i = 0; i < keys.length; i++) {
    if (object is Map) {
      if (object.containsKey(keys[i])) {
        object = object[keys[i]];
      } else {
        return false;
      }
    } else if (object is List) {
      if (object.length > int.parse(keys[i])) {
        object = object[int.parse(keys[i])];
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
  return true;
}

///Creates an array of the own enumerable string keyed property values of object.
List values(dynamic object) {
  if (object is Map) {
    return object.values.toList();
  }
  if (object is List) {
    return object.map((e) => e).toList();
  }
  return [];
}

/// Creates an object composed of keys generated from the results of running each
/// element of collection thru iteratee. The corresponding value of each key is 
/// the number of times the key was returned by iteratee. 
/// The iteratee is invoked with one argument: (value).

Map countBy(List<dynamic> list, Function iteratee) {
  var result = <dynamic, int>{};
  for (var i = 0; i < list.length; i++) {
    var key = iteratee(list[i]);
    if (result.containsKey(key)) {
      result[key] = result[key]! + 1;
    } else {
      result[key] = 1;
    }
  }
  return result;
}


/// This method is like _.forEach except that it iterates over elements of collection from right to left.
void forEachRight(List<dynamic> list, Function iteratee) {
  for (var i = list.length - 1; i >= 0; i--) {
    iteratee(list[i]);
  }
}

/// eates an object composed of keys generated from the results 
/// of running each element of collection thru iteratee.
///  The order of grouped values is determined by the order they occur in collection. 
/// The corresponding value of each key is an array of 
/// elements responsible for generating the key. The iteratee is invoked with one argument: (value).
Map groupBy(List<dynamic> list, Function iteratee) {
  var result = <dynamic, List<dynamic>>{};
  for (var i = 0; i < list.length; i++) {
    var key = iteratee(list[i]);
    if (result.containsKey(key)) {
      result[key]!.add(list[i]);
    } else {
      result[key] = [list[i]];
    }
  }
  return result;
}

/// Checks if predicate returns truthy for all elements of collection. 
/// Iteration is stopped once predicate returns falsey
/// The predicate is invoked with three arguments: (value, index|key, collection).
bool every(List<dynamic> list, Function predicate) {
  for (var i = 0; i < list.length; i++) {
    if (!predicate(list[i])) {
      return false;
    }
  }
  return true;
}

/// Iterates over elements of collection, returning 
/// an array of all elements predicate returns truthy for.
///  The predicate is invoked with three arguments: (value, index|key, collection).
List filter(List<dynamic> list, Function predicate) {
  var result = <dynamic>[];
  for (var i = 0; i < list.length; i++) {
    if (predicate(list[i])) {
      result.add(list[i]);
    }
  }
  return result;
}

/// Creates an array of elements, sorted in ascending order by the results of running each element in a collection thru each iteratee. This method performs a stable sort, that is, it preserves the original sort order of equal elements. The iteratees are invoked with one argument: (value).
List sortBy(List<dynamic> list, Function iteratee) {
  var result = List.from(list);
  result.sort((a, b) {
    var a1 = iteratee(a);
    var b1 = iteratee(b);
    if (a1 is num && b1 is num) {
      return a1.compareTo(b1);
    }
    if (a1 is String && b1 is String) {
      return a1.compareTo(b1);
    }
    return 0;
  });
  return result;
}

///This method is like _.sortBy except that it allows specifying the sort orders of the iteratees to sort by. If orders is unspecified, all values are sorted in ascending order. Otherwise, specify an order of "desc" for descending or "asc" for ascending sort order of corresponding values.
List orderBy(List<dynamic> list, List<Function> iteratees, List<String> orders) {
  var result = List.from(list);
  result.sort((a, b) {
    for (var i = 0; i < iteratees.length; i++) {
      var a1 = iteratees[i](a);
      var b1 = iteratees[i](b);
      if (a1 is num && b1 is num) {
        if (a1 > b1) {
          return orders[i] == 'desc' ? -1 : 1;
        }
        if (a1 < b1) {
          return orders[i] == 'desc' ? 1 : -1;
        }
      }
      if (a1 is String && b1 is String) {
        if (a1.compareTo(b1) > 0) {
          return orders[i] == 'desc' ? -1 : 1;
        }
        if (a1.compareTo(b1) < 0) {
          return orders[i] == 'desc' ? 1 : -1;
        }
      }
    }
    return 0;
  });
  return result;
}


/// Creates an array of shuffled values, using a version of the Fisher-Yates shuffle.
List shuffle(List<dynamic> list) {
  var result = List.from(list);
  for (var i = result.length - 1; i > 0; i--) {
    var j = Random().nextInt(i + 1);
    var temp = result[i];
    result[i] = result[j];
    result[j] = temp;
  }
  return result;
}