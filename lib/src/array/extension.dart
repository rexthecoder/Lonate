import 'array_util.dart' as array;

extension ArrayCliz<T> on List<T> {
  /// [chunk] for creatubg a list of lists split into groups
  /// @param [size] the size of each group
  /// @param [array] the list to chunk
  /// @returns a list of lists split into groups
  List chunk(int size) => array.chunk(this, size);

  /// [compact] for removing all falsy values from the list
  ///   - false, 0, "", null, undefined, NaN
  List get compact => array.compact(this);
}

extension ArrayDifference<T> on List<T> {
  /// [difference] for returning the values in the list that are not in the other
  /// @param [array] the list to compare against
  /// @returns the values in the list that are not in the other
  List difference(List values) => array.difference(this, values);

  /// [differenceBy] for returning the values in the list that are not in the other
  ///  - using a function to determine equality
  /// @param [array] the list to compare against
  /// @param [iteratee] the function to determine equality
  /// @returns the values in the list that are not in the other
  List differenceBy(List values, Function iteratee) =>
      array.differenceBy(this, values, iteratee);
}

extension ArrayDrop<T> on List<T> {
  /// [drop] Creates a slice of array with n elements dropped from the beginning.
  /// @param [array] the list to compare against
  /// @param [n] the number of elements to drop
  /// @returns the values in the list that are not in the other
  List drop(int count) => array.drop(this, count);

  ///[dropRight] Creates a slice of array with n elements dropped from the end.
  /// @param [array] the list to compare against
  /// @param [n] the number of elements to drop
  List dropRight([int n = 1]) => array.dropRight(this, n);

  /// [dropRightWhile]Creates a slice of array excluding elements dropped from the beginning.
  ///  @param [array] the list to compare against
  ///  @param [predicate] the function to determine equality
  List dropWhile(Function predicate) => array.dropWhile(this, predicate);
}

extension ArrayIndexing<T> on List<T> {
  /// [fill] elements of array with value from start up to, but not including, end.
  /// @param [value] the value to fill the array with
  /// @param [start] the start index
  /// @param [end] the end index
  List fill(value, {int start = 0, int? end}) =>
      array.fill(this, value, start: start, end: end);

  /// [findIndex] Returns the index of the first element predicate returns truthy for.
  /// @param [predicate] the function to determine equality
  int findIndex(Function predicate) => array.findIndex(this, predicate);

  /// [lastIndexOf] Returns the index of the last element predicate returns truthy for.
  /// @param [values] the list to compare against
  /// @param [fromIndex] the start index
  int lastIndexOf(List values, [int? fromIndex]) =>
      array.lastIndexOf(this, values, fromIndex);
}

extension ArrayFlatten<T> on List<T> {
  /// [flatten] flattens a nested array.
  /// @param [array] the list to compare against
  List flatten() => array.flatten(this);

  /// [flattenDeep] flattens a nested array.
  /// @param [array] the list to compare against
  List get flattenDeep => array.flattenDeep(this);

  /// [flattenDepth] flattens a nested array.
  /// @param [array] the list to compare against
  /// @param [depth] the depth of the flattening
  List flattenDepth(int depth) => array.flattenDepth(this, depth);
}

extension ArrayFrom<T> on List<T> {
  /// [fromPairs] Creates an array from the pairs of array.
  /// @param [array] the list to compare against
  Map get fromPairs => array.fromPairs(this);

  /// [initial] Returns all but the last element of array.
  /// @param [array] the list to compare against
  List get initial => array.initial(this);

  /// [intersection] Creates an array of unique values that are included in all given arrays
  /// @param [values] the list to compare against
  List intersection(List values) => array.intersection(this, values);
}

extension ArrayPull<T> on List<T> {
  /// [pull] Removes all given values from array.
  /// @param [values] the list to compare against
  List pull(List values) => array.pull(this, values);

  ///[pullAt] Removes all given values
  /// @parem [indexes] the indexes to remove
  List pullAt(List indexes) => array.pullAt(this, indexes);
}

extension ArraySorted<T> on List<T> {
  /// [sortedIndex]is like [indexOf] but except that it performs a binary search on a sorted array.
  ///  @param [value] the value to find the index of
  int sortedIndex(value) => array.sortedIndex(this, value);

  /// [sortedIndexBy] is like [sortedIndex] except that it accepts a iteratee for value
  /// @param [value] the value to find the index of
  /// @param [fromIndex]  the index of the first element to be searched
  int sortedIndexOf(value, [int? fromIndex]) =>
      array.sortedIndexOf(this, value, fromIndex);

  /// [sortedUniq] Creates a duplicate-free version of an array, using
  List get sortedUniq => array.sortedUniq(this);

  /// [sortedUniqBy] Creates a duplicate-free version of an array, using
  /// except that it's designed and optimized for sorted arrays.
  List sortedUniqBy(Function iteratee) => array.sortedUniqBy(this, iteratee);
}

extension ArrayUnion<T> on List<T> {
  /// [union] Creates an array of unique values, in order, from all given arrays
  /// @param [values] the list to compare against
  List union(List values) => array.union(this, values);

  /// [unionBy] Creates an array of unique values, in order, from all given arrays
  /// @param [values] the list to compare against
  /// @param [iteratee] the function to determine equality
  List unionBy(List values, Function iteratee) =>
      array.unionBy(this, values, iteratee);

  /// [tail] Gets all but the first element of array.
  List get tail => array.tail(this);
}

extension ArrayZip<T> on List<T> {
  ///Creates a duplicate-free version of an array, using SameValueZero for equality comparisons,
  ///in which only the first occurrence of each element is kept.
  ///The order of result values is determined by the order they occur in the array.
  List uniq() => array.uniq(this);

  ///[zip] the elements of array together with values from the other arrays
  /// @param [values] the list to compare against
  /// @param [secondArray]  the array to compare against
  List zip(List secondArray, List values) =>
      array.zip(this, secondArray, values);

  /// [without] Creates an array excluding all given values
  /// Creates an array excluding all given values
  /// using SameValueZero for equality comparisons.
  List withOut(List values) => array.withOut(this, values);
}
