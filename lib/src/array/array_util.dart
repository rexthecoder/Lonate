import 'package:lonate/lonate.dart';

/// Creates an array of elements split into groups the length of `size`.
///   If `array` can't be split evenly, the final chunk will be the remaining
///    elements.
List chunk(List array, size) {
  return array.isEmpty
      ? array
      : ([
          array.take(size).toList(),
          ...chunk(array.skip(size).toList(), size).toList()
        ]);
}

///Creates an array with all falsey values removed. The values false, null, 0, "",
///undefined, and NaN are falsey.
List compact(List array) {
  return array
      .where(
        (element) =>
            element != null &&
            element != false &&
            element != 0 &&
            element != "",
      )
      .toList();
}

/// Creates an array of array values not included in the other given arrays using SameValueZero
/// for equality comparisons. The order and references of result values are determined by the first array.
List difference(List array, List values) {
  return array.where((element) => !values.contains(element)).toList();
}

///This method is like _.difference except that it accepts iteratee which is invoked
///for each element nt of array and values to generate the criterion by which they're compared.
///The order and references of result values are determined by the first array.
/// The iteratee is invoked with one argument:
List differenceBy(List array, List values, Function iteratee) {
  return array.where((element) => !values.contains(iteratee(element))).toList();
}

// Creates a slice of array with n elements dropped from the beginning.
List drop(List array, [int n = 1]) {
  return array.skip(n).toList();
}

// Creates a slice of array with n elements dropped from the end.
List dropRight(List array, [int n = 1]) {
  return array.take(array.length - n).toList();
}

/// Creates a slice of array excluding elements dropped from the beginning.
/// Elements are dropped until predicate returns falsey.
///  The predicate is invoked with three arguments: (value, index, array).
List dropWhile(List array, Function predicate) {
  return array.skipWhile((element) => !predicate(element)).toList();
}

/// Fills elements of array with value from start up to, but not including, end.
List fill(List array, value, {int start = 0, int? end}) {
  if (array.isEmpty) {
    return [];
  }
  end = array.length;
  return baseFill(array, value, start, end);
}

/// This method is like _.find except that it returns the index of the
/// first element predicate returns truthy for instead of the element itself.
int findIndex(List array, Function predicate) {
  for (var i = 0; i < array.length; i++) {
    if (predicate(array[i])) {
      return i;
    }
  }
  return -1;
}

/// Flattens array a single level deep.
List flatten(List array) {
  return array
      .expand((element) => element is List ? element : [element])
      .toList();
}

// Recursively flattens array.
List flattenDeep(List array) {
  return array.expand((element) {
    if (element is List) {
      return flattenDeep(element);
    }
    return [element];
  }).toList();
}

/// Recursively flatten array up to depth times.
List flattenDepth(List array, int depth) {
  if (depth == 1) {
    return flatten(array);
  }
  return array.expand((element) {
    if (element is List) {
      return flattenDepth(element, depth - 1);
    }
    return [element];
  }).toList();
}

/// The inverse of _.toPairs; this method returns an object composed from key-value pairs.
Map fromPairs(List pairs) {
  return pairs.fold({}, (map, pair) {
    map[pair[0]] = pair[1];
    return map;
  });
}

/// Gets all but the last element of array.
List initial(List array) {
  return array.take(array.length - 1).toList();
}

/// Creates an array of unique values that are included in all given arrays
///  The order and references of result values are determined by the first array.
List intersection(List array, List values) {
  return array.where((element) => values.contains(element)).toList();
}

///This method is like _.indexOf except that it iterates over elements of array from right to left.
int lastIndexOf(List array, value, [int? fromIndex]) {
  var result = 0;
  fromIndex ??= array.length - 1;
  for (var i = fromIndex; i >= 0; i--) {
    if (array[i] == value) {
      result = i;
      return result;
    }
  }
  return result;
}

///Removes all given values from array
List pull(List array, List values) {
  return array.where((element) => !values.contains(element)).toList();
}

/// Removes elements from array corresponding
/// to indexes and returns an array of removed elements
List pullAt(List array, List indexes) {
  var result = [];
  for (var index in indexes) {
    result.add(array.removeAt(index));
  }
  return result;
}

/// Uses a binary search to determine the lowest index at
/// which value should be inserted into array in order to maintain its sort order.
int sortedIndex(List array, value) {
  var low = 0;
  var high = array.length;
  while (low < high) {
    var mid = (low + high) ~/ 2;
    if (array[mid] < value) {
      low = mid + 1;
    } else {
      high = mid;
    }
  }
  return low;
}

/// This method is like _.indexOf except that it performs a binary search on a sorted array.
int sortedIndexOf(List array, value, [int? fromIndex]) {
  var low = fromIndex ?? 0;
  var high = array.length;
  while (low < high) {
    var mid = (low + high) ~/ 2;
    if (array[mid] < value) {
      low = mid + 1;
    } else {
      high = mid;
    }
  }
  return low;
}

/// Returns the new duplicate free array.
List sortedUniq(List array) {
  return array.toSet().toList();
}

///  This method is like _.uniq except that it's designed and optimized for sorted arrays.
List sortedUniqBy(List array, Function iteratee) {
  var seen = <dynamic>{};
  var result = [];
  for (var element in array) {
    var computed = iteratee(element);
    if (!seen.contains(computed)) {
      seen.add(computed);
      result.add(element);
    }
  }
  return result;
}

/// Gets all but the first element of array.
List tail(List array) {
  return array.skip(1).toList();
}

/// Returns the new array of combined values.
List union(List array, List values) {
  return array.toSet().union(values.toSet()).toList();
}

/// This method is like _.union except that it accepts iteratee which is invoked for each element of each arrays
///  to generate the criterion by which uniqueness is computed.
///  Result values are chosen from the first array in which the value occurs.
/// The iteratee is invoked with one argument:
List unionBy(List array, List values, Function iteratee) {
  var seen = <dynamic>{};
  var result = [];
  for (var element in array) {
    var computed = iteratee(element);
    if (!seen.contains(computed)) {
      seen.add(computed);
      result.add(element);
    }
  }
  for (var value in values) {
    var computed = iteratee(value);
    if (!seen.contains(computed)) {
      seen.add(computed);
      result.add(value);
    }
  }
  return result;
}

///Creates a duplicate-free version of an array, using SameValueZero for equality comparisons,
///in which only the first occurrence of each element is kept.
///The order of result values is determined by the order they occur in the array.
List uniq(List array) {
  return array.toSet().toList();
}

///Creates an array of grouped elements, the first of which
///contains the first elements of the given arrays,
///the second of which contains the second elements of the given arrays, and so on.
List zip(List firstArray, List secondArray, List values) {
  var result = <List>[];
  for (var i = 0; i < firstArray.length; i++) {
    result.add([firstArray[i], secondArray[i], values[i]]);
  }
  return result;
}

/// Creates an array excluding all given values
/// using SameValueZero for equality comparisons.
List withOut(List array, List values) {
  return array.where((element) => !values.contains(element)).toList();
}
