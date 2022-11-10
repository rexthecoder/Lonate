import 'package:lonate/lonate.dart';

void main() {


  int doubled(n) {
    return n * 2;
  }

  int square(n) {
    return n * n;
  }

  var mic = multipleComputation((x, y, a) {
    return [x, y, a];
  }, [square, doubled, square], [9]);

  print(mic);
}
