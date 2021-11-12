import 'package:lonate/lonate.dart';

extension CollectiveNum on num {
  /// Performs a SameValueZero comparison between two values to determine if they are equivalent.
  /// This is equivalent to the `==` operator.
  bool equal(num b) => isEqual(this, b);

  /// Checks if value is greater than other.
  /// This is equivalent to the `>` operator.
  /// Returns `true` if `this` is greater than `other`.
  /// Returns `false` if `this` is less than or equal to `other`.
  bool greaterThan(num other) => isGreater(this, other);

  /// Checks if value is greater than or equal to other.
  /// This is equivalent to the `>=` operator.
  /// Returns `true` if `this` is greater than or equal to `other`.
  /// Returns `false` if `this` is less than `other`.
  bool greaterThanOrEqual(num other) => isGreaterEqual(this, other);

  /// Checks if value is less than other.
  /// This is equivalent to the `<` operator.
  /// Returns `true` if `this` is less than `other`.
  /// Returns `false` if `this` is greater than or equal to `other`.
  bool lessThan(num other) => isLess(this, other);

  /// Adds two numbers.
  /// This is equivalent to the `+` operator.
  /// Returns the sum of `this` and `other`.
  num addValue(num other) => add(this, other);

  /// Computes number rounded up to precision.
  /// This is equivalent to the `ceil` function.
  /// Returns the smallest integer greater than or equal to `this`.
  /// If `precision` is `null`, `this` is returned.
  /// If `precision` is `0`, `this` is returned.
  num ceilWithPrecision(int precision) => ceil(this, precision);

  /// Divide two numbers.
  /// This is equivalent to the `/` operator.
  /// Returns the quotient of `this` and `other`.
  num divideValue(num other) => divide(this, other);

  ///Gets the value at path of object. If the resolved value is undefined, the defaultValue is returned in its place.
  /// This is equivalent to the `get` function.
  /// Returns the resolved value.
  dynamic getValue(List path, [dynamic defaultValue]) =>
      get(this, path, defaultValue);

  ///Computes number rounded down to precision.
  /// This is equivalent to the `floor` function.
  /// Returns the largest integer less than or equal to `this`.
  /// If `precision` is `null`, `this` is returned.
  num floorWithPrecision([num precision = 1]) => floor(this);

  /// Multiply two numbers.
  /// This is equivalent to the `*` operator.
  num multiplyValue(num other) => multiply(this, other);

  ///Computes number rounded to precision.
  /// This is equivalent to the `round` function.
  num roundWithPrecision([num precision = 1]) => round(this, precision);

  /// Subtract two numbers.
  /// This is equivalent to the `-` operator.
  num subtractValue(num other) => subtract(this, other);

  /// Checks if n is between start and up to, but not including, end. If end is not specified,
  bool isInRange(num start, [num? end]) => inRange(this, start, end);
}

extension CollectiveList<T> on List<T> {
  /// Computes the maximum value of array. If array is empty or falsey, undefined is returned.
  /// This is equivalent to the `max` function.
  /// Returns the largest value in `array`.
  /// If `array` is empty or falsey, undefined is returned.
  num get arrayMaxValue => arrayMax(this);

  /// Computes the mean of the values in array.
  /// This is equivalent to the `mean` function.
  /// Returns the mean of the values in `array`.
  num get arrayMeanVlaue => arrayMean(this);

  /// Computes the minimum value of array. If array is empty or falsey, undefined is returned.
  /// This is equivalent to the `min` function.
  /// Returns the smallest value in `array`.
  num get arrayMinValue => arrayMin(this);

  /// Produce the median  of the given array.
  /// This is equivalent to the `median` function.
  /// Returns the median of the given array.
  num get arrayMedianValue => median(this);

  /// Computes the value that appears most frequently in array.
  /// This is equivalent to the `mode` function.
  /// Returns the value that appears most frequently in `array`.
  num get arrayModeValue => mode(this);

  /// Computes the variance of the values in array.
  /// This is equivalent to the `variance` function.
  /// Returns the variance of the values in `array`.
  num get arrayVarianceValue => variance(this);

  /// Computes the standard deviation of the values in array.
  /// This is equivalent to the `std` function.
  /// Returns the standard deviation of the values in `array`.
  num get arrayStdValue => standardDeviation(this);

  /// Computes the sum of the values in array.
  /// This is equivalent to the `sum` function.
  /// Returns the sum of the values in `array`.
  num get arraySumValue => arraySum(this);

  ///Gets the value at path of object. If the resolved value is undefined, the defaultValue is returned in its place.
  /// This is equivalent to the `get` function.
  /// Returns the resolved value.
  dynamic getValue(List path, [dynamic defaultValue]) =>
      get(this, path, defaultValue);

  /// Checks if path is a direct property of object.
  /// This is equivalent to the `has` function.
  /// Returns `true` if `path` is a direct property of `object`, else `false`.
  bool hasValue(String path) => hasObject(this, path);

  ///Checks if path is a direct or inherited property of object.
  /// This is equivalent to the `hasIn` function.
  /// Returns `true` if `path` is a direct or inherited property of `object`, else `false`.
  bool hasInValue(String path) => hasInObject(this, path);

  ///Creates an array of the own enumerable string keyed property values of object.
  /// This is equivalent to the `values` function.
  /// Returns the values in `object`.
  List<dynamic> getValueList() => values(this);
}

extension CollectiveMap on Map {
  /// Assigns own enumerable string keyed properties of source objects to the destination object.
  /// This is equivalent to the `Object.assign` method or the `_=` operator.
  /// Returns the destination object.
  Map assignValue(Map source) => assign(this, source);

  ///  it returns the key of the first element predicate returns truthy for instead of the element itself.
  /// If predicate is not provided, it returns the first element in the array.
  /// This is equivalent to the `findKey` function.
  /// Returns the key of the first element predicate returns truthy for instead of the element itself.
  dynamic findKeyValue(Function predicate) => findKey(this, predicate);

  /// Checks if path is a direct property of object.
  /// This is equivalent to the `has` function.
  /// Returns `true` if `path` is a direct property of `object`, else `false`.
  bool hasValue(String path) => hasObject(this, path);

  ///Checks if path is a direct or inherited property of object.
  /// This is equivalent to the `hasIn` function.
  /// Returns `true` if `path` is a direct or inherited property of `object`, else `false`.
  bool hasInValue(String path) => hasInObject(this, path);

  ///Creates an array of the own enumerable string keyed property values of object.
  /// This is equivalent to the `values` function.
  /// Returns the values in `object`.
  List<dynamic> getValueList() => values(this);
}
