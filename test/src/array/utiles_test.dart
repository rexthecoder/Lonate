import 'package:flutter_test/flutter_test.dart';
import 'package:lonate/lonate.dart';

void main() {
  group('List utilizes core', () {
    test('Should cheke if two maps are equal ', () {
      Map<String, dynamic> map1 = {
        'name': 'John',
        'age': '30',
        'city': 'London'
      };
      Map<String, dynamic> map2 = {
        'name': 'John',
        'age': '30',
        'city': 'London'
      };

      bool actualResult = mapsEqual(map1, map2);
      expect(actualResult, true);
    });

    test('Should cheke if two maps are equal when map 2 is empty ', () {
      Map<String, dynamic> map1 = {
        'name': 'John',
        'age': '30',
        'city': 'London'
      };
      Map<String, dynamic> map2 = {};

      bool actualResult = mapsEqual(map1, map2);
      expect(actualResult, false);
    });
    test('base fill', () {
      List expectedResult = [2, 2, 2, 2];
      List actualResult = baseFill([1, 2, 3, 4], 2, 0, 4);

      expect(actualResult, expectedResult);
    });

    test('base fill', () {
      List expectedResult = [1, 2, 3, 4];
      List actualResult = baseFill([1, 2, 3, 4], 2, 0, 0);

      expect(actualResult, expectedResult);
    });
  });
}
