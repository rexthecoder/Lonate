import 'package:flutter/foundation.dart';
import 'package:lonate/lonate.dart';

void main() {
  // Function to memorize state
  var clumsysquare = memoize((int x) {
    var result = 0;
    for (var i = 1; i <= x; i++) {
      for (var j = 1; j <= x; j++) {
        result++;
      }
    }
    return result;
  }, [20]);

  debugPrint(clumsysquare());
  int doubled(n) {
    return n * 2;
  }

  int square(n) {
    return n * n;
  }

  var mic = multipleComputation((x, y, a) {
    return [x, y, a];
  }, [square, doubled, square], [9]);

  debugPrint(mic);
}
