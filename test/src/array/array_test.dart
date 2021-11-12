import 'package:flutter_test/flutter_test.dart';
import 'package:lonate/lonate.dart';

void main() {
  group('test for List utilizes', () {
    test('should returm new chunk list when size is greater than 1', () {
      List expectedResult = [
        ['a', 'b'],
        ['c', 'd']
      ];
      List actualResult = chunk(['a', 'b', 'c', 'd'], 2);
      expect(actualResult, expectedResult);
    });

    test(
        'should return List with all falsey values removed when List is valid list',
        () {
      List expectedResult = [1, 2, 3];
      List actualResult = compact([0, 1, false, 2, '', 3]);

      expect(actualResult, expectedResult);
    });

    test('should return difference when a valid List is passed', () {
      List expectedResult = [1];
      List actualResult = difference([2, 1], [2, 3]);

      expect(actualResult, expectedResult);
    });

    test(
        'should return difference based on iteratee when a valid List is passed',
        () {
      List expectedResult = [1.2];
      List actualResult = differenceBy([2.1, 1.2], [2.1, 3.4], (a) => a);

      expect(actualResult, expectedResult);
    });

    test('should return a List with n remove when n elements is passed', () {
      List expectedResult = [3];
      List actualResult = drop([1, 2, 3], 2);

      expect(actualResult, expectedResult);
    });

    test(
        'should return a List with n remove from the right when n elements is passed',
        () {
      List expectedResult = [1];
      List actualResult = dropRight([1, 2, 3], 2);
      expect(actualResult, expectedResult);
    });

    test('should return an array with the with value from start up to the end ',
        () {
      List expectedResult = [2, 2, 2];
      List actualResult = fill([1, 2, 3], 2, start: 0);
      expect(actualResult, expectedResult);
    });

    test('should return the index of the array on top of the predicate', () {
      int expectedResult = 1;
      int actualResult = findIndex([1, 2, 3], (a) => a == 2);

      expect(actualResult, expectedResult);
    });

    test('should return new flattened array ', () {
      List expectedResult = [
        1,
        2,
        [
          3,
          [4]
        ],
        5
      ];
      List actualResult = flatten([
        1,
        [
          2,
          [
            3,
            [4]
          ],
          5
        ]
      ]);
      expect(actualResult, expectedResult);
    });

    test('should return new Recursively flattened array', () {
      List expectedResult = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List actualResult = flattenDeep([
        1,
        [
          2,
          [
            3,
            [
              4,
              [
                5,
                [
                  6,
                  [
                    7,
                    [
                      8,
                      [
                        9,
                        [10]
                      ]
                    ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]);
      expect(actualResult, expectedResult);
    });

    test('should return recursively flatten array up to depth times.', () {
      List expectedResult = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List actualResult = flattenDepth([
        1,
        [
          2,
          [
            3,
            [
              4,
              [
                5,
                [
                  6,
                  [
                    7,
                    [
                      8,
                      [
                        9,
                        [10]
                      ]
                    ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ], 10);
      expect(actualResult, expectedResult);
    });
    test('should return an object composed from key-value pairs', () {
      Map expectedResult = {'a': 1, 'b': 2, 'c': 3};
      Map actualResult = fromPairs([
        ['a', 1],
        ['b', 2],
        ['c', 3]
      ]);
      expect(actualResult, expectedResult);
    });

    test('should return all but the last element of array', () {
      List expectedResult = [1, 2, 3];
      List actualResult = initial([1, 2, 3, 4]);
      expect(actualResult, expectedResult);
    });

    test('should return unique values that are included in all given arrays',
        () {
      List expectedResult = [2, 3];
      List actualResult = intersection([1, 2, 3], [4, 3, 2]);

      expect(actualResult, expectedResult);
    });

    test('should return the last index of the list when valid List is passed',
        () {
      int expectedResult = 3;
      int actualResult = lastIndexOf([1, 2, 1, 2, 3], 2);

      expect(actualResult, expectedResult);
    });

    test('should return all removes given values from the list passed', () {
      List expectedResult = [3, 4, 5, 6];
      List actualResult = pull([1, 2, 3, 4, 5, 6], [1, 2]);

      expect(actualResult, expectedResult);
    });

    test('should return an array of removed elements', () {
      List expectedResult = ['b', 'd'];
      List actualResult = pullAt(['a', 'b', 'c', 'd'], [1, 2]);

      expect(actualResult, expectedResult);
    });

    test(
        'should return the lowest index which value should be inserted into array in order to maintain its sort order',
        () {
      int expectedResult = 1;
      int actualResult = sortedIndex([30, 50], 40);

      expect(actualResult, expectedResult);
    });

    test('should return a likiness of sortedIndex', () {
      int expectedResult = 1;
      int actualResult = sortedIndexOf([4, 5, 5, 5, 6], 5);

      expect(actualResult, expectedResult);
    });

    test('should return a list of sorted values', () {
      List expectedResult = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List actualResult = sortedUniq([1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]);

      expect(actualResult, expectedResult);
    });

    test('should return a list of sorted values based on iteratee', () {
      List expectedResult = [1.1, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1, 8.1, 9.1, 10.1];
      List actualResult = sortedUniqBy(
          [1.1, 1.2, 2.1, 3.1, 4.1, 5.1, 5.5, 6.1, 7.1, 8.1, 9.1, 10.1],
          (a) => a.floor());

      expect(actualResult, expectedResult);
    });

    test('should return a list of values from array without the first element',
        () {
      List expectedResult = [2, 3];
      List actualResult = tail([1, 2, 3]);

      expect(actualResult, expectedResult);
    });

    test('should return the new array of combined values. ', () {
      List expectedResult = [1, 2, 3, 4];
      List actualResult = union([1, 2, 3], [4, 3, 2]);

      expect(actualResult, expectedResult);
    });

    test('should return the new array of combined values based on iteratee',
        () {
      List expectedResult = [1, 2, 3, 4];
      List actualResult = unionBy([1, 2, 3], [4, 3, 2], (a) => a.floor());

      expect(actualResult, expectedResult);
    });

    test('should return a duplicate-free version of an array', () {
      List expectedResult = [1, 2, 3, 4];
      List actualResult = uniq([1, 2, 3, 1, 4, 1]);

      expect(actualResult, expectedResult);
    });

    test('should return an array of grouped elements', () {
      List expectedResult = [
        ['a', 1, true],
        ['b', 2, false]
      ];
      List actualResult = zip(['a', 'b'], [1, 2], [true, false]);

      expect(actualResult, expectedResult);
    });

    test('should return an array excluding all given values', () {
      List expectedResult = [3];
      List actualResult = withOut([2, 1, 2, 3], [2, 1]);

      expect(actualResult, expectedResult);
    });
  });
}
