import 'package:lonate/lonate.dart';
import 'package:test/expect.dart';

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

  var fina = memoize((int x) {
    var result = 0;
    for (var i = 1; i <= x; i++) {
      for (var j = 1; j <= x; j++) {
        result++;
      }
    }
    return result;
  }, [10]);

  print(fina());
  int doubled(n) {
    return n * 2;
  }

  int square(n) {
    return n * n;
  }

  var mic = multipleComputation((x, y, a) {
    return [x, y, a];
  }, [square, doubled, square], [9]);
  
  /// Last index
  var lastIndex = findLastIndex([20,40, 20], (e) => e == 40);

 print(lastIndex);

  // print(mic);
}
