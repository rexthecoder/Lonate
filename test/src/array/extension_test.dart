import 'package:lonate/lonate.dart';
import 'package:test/test.dart';

void main() {
  group('List extension utilizes', () {
    test('should returm new chunk list when size is greater than 1', () {
      List expectedResult = [
        ['a', 'b'],
        ['c', 'd']
      ];
      List actualResult = ['a', 'b', 'c', 'd'].chunk(2);
      expect(actualResult, expectedResult);
    });

    test(
        'should return List with all falsey values removed when List is valid list',
        () {
      List expectedResult = [1, 2, 3];
      List actualResult = [0, 1, false, 2, '', 3].compact;

      expect(actualResult, expectedResult);
    });

    test('should return difference when a valid List is passed', () {
      List expectedResult = [1];
      List actualResult = [2, 1].difference([2, 3]);

      expect(actualResult, expectedResult);
    });

    test(
        'should return difference based on iteratee when a valid List is passed',
        () {
      List expectedResult = [1.2];
      List actualResult = [2.1, 1.2].differenceBy([2.1, 3.4], (a) => a);

      expect(actualResult, expectedResult);
    });

    test('should return a List with n remove when n elements is passed', () {
      List expectedResult = [3];
      List actualResult = [1, 2, 3].drop(2);

      expect(actualResult, expectedResult);
    });

    test(
        'should return  a slice of array excluding elements dropped from the beginning.',
        () {
      List expectedResult = [1, 2, 3];
      List actualResult = [1, 2, 3].dropWhile((a) => a < 2);
      expect(actualResult, expectedResult);
    });

    test(
        'should return a List with n remove from the right when n elements is passed',
        () {
      List expectedResult = [1];
      List actualResult = [1, 2, 3].dropRight(2);
      expect(actualResult, expectedResult);
    });

    test('should return an array with the with value from start up to the end ',
        () {
      List expectedResult = [2, 2, 2];
      List actualResult = [1, 2, 3].fill(2, start: 0);
      expect(actualResult, expectedResult);
    });
    test('should return an empty List when array pass is []', () {
      List expectedResult = [];
      List actualResult = [].fill(2, start: 0);
      expect(actualResult, expectedResult);
    });
    test('should return the index of the array on top of the predicate', () {
      int expectedResult = 1;
      int actualResult = [1, 2, 3].findIndex((a) => a == 2);

      expect(actualResult, expectedResult);
    });

    test('should return -1 when the predictor is not found', () {
      int expectedResult = -1;
      int actualResult = [1, 2, 3].findIndex((a) => a == 4);

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
      List actualResult = [
        1,
        [
          2,
          [
            3,
            [4]
          ],
          5
        ]
      ].flatten();
      expect(actualResult, expectedResult);
    });

    test('should return new Recursively flattened array', () {
      List expectedResult = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List actualResult = [
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
      ].flattenDeep;
      expect(actualResult, expectedResult);
    });

    test('should return recursively flatten array up to depth times.', () {
      List expectedResult = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List actualResult = [
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
      ].flattenDepth(10);
      expect(actualResult, expectedResult);
    });
    test('should return an object composed from key-value pairs', () {
      Map expectedResult = {'a': 1, 'b': 2, 'c': 3};
      Map actualResult = [
        ['a', 1],
        ['b', 2],
        ['c', 3]
      ].fromPairs;
      expect(actualResult, expectedResult);
    });

    test('should return all but the last element of array', () {
      List expectedResult = [1, 2, 3];
      List actualResult = [1, 2, 3, 4].initial;
      expect(actualResult, expectedResult);
    });

    test('should return unique values that are included in all given arrays',
        () {
      List expectedResult = [2, 3];
      List actualResult = [1, 2, 3].intersection([4, 3, 2]);

      expect(actualResult, expectedResult);
    });

    test('should return all removes given values from the list passed', () {
      List expectedResult = [3, 4, 5, 6];
      List actualResult = [1, 2, 3, 4, 5, 6].pull([1, 2]);

      expect(actualResult, expectedResult);
    });

    test('should return an array of removed elements', () {
      List expectedResult = ['b', 'd'];
      List actualResult = ['a', 'b', 'c', 'd'].pullAt([1, 2]);

      expect(actualResult, expectedResult);
    });

    test(
        'should return the lowest index which value should be inserted into array in order to maintain its sort order',
        () {
      int expectedResult = 1;
      int actualResult = [30, 50].sortedIndex(40);

      expect(actualResult, expectedResult);
    });

    test('should return a likiness of sortedIndex', () {
      int expectedResult = 1;
      int actualResult = [4, 5, 5, 5, 6].sortedIndexOf(5);

      expect(actualResult, expectedResult);
    });

    test('should return a list of sorted values', () {
      List expectedResult = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      List actualResult = [1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10].sortedUniq;

      expect(actualResult, expectedResult);
    });

    test('should return a list of sorted values based on iteratee', () {
      List expectedResult = [1.1, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1, 8.1, 9.1, 10.1];
      List actualResult = [
        1.1,
        1.2,
        2.1,
        3.1,
        4.1,
        5.1,
        5.5,
        6.1,
        7.1,
        8.1,
        9.1,
        10.1
      ].sortedUniqBy((a) => a.floor());

      expect(actualResult, expectedResult);
    });

    test('should return a list of values from array without the first element',
        () {
      List expectedResult = [2, 3];
      List actualResult = [1, 2, 3].tail;

      expect(actualResult, expectedResult);
    });

    test('should return the new array of combined values based on iteratee',
        () {
      List expectedResult = [1, 2, 3, 4];
      List actualResult = [1, 2, 3].unionBy([4, 3, 2], (a) => a.floor());

      expect(actualResult, expectedResult);
    });

    test('should return a duplicate-free version of an array', () {
      List expectedResult = [1, 2, 3, 4];
      List actualResult = [1, 2, 3, 1, 4, 1].uniq();

      expect(actualResult, expectedResult);
    });

    test('should return an array of grouped elements', () {
      List expectedResult = [
        ['a', 1, true],
        ['b', 2, false]
      ];
      List actualResult = ['a', 'b'].zip([1, 2], [true, false]);

      expect(actualResult, expectedResult);
    });

    test('should return an array excluding all given values', () {
      List expectedResult = [3];
      List actualResult = [2, 1, 2, 3].withOut([2, 1]);

      expect(actualResult, expectedResult);
    });
  });
}
