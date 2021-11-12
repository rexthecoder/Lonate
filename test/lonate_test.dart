import 'package:flutter_test/flutter_test.dart';

import 'package:lonate/lonate.dart';

var users = [
  {'user': 'barney', 'active': false},
  {'user': 'fred', 'active': false},
  {'user': 'pebbles', 'active': true}
];

void main() {
  test('Testing Frezzing util', () {
    final value = isLength(3);
    final chunkVlue = chunk(['a', 'b', 'c', 'd'], 2);
    final compactValue = compact([0, 1, false, 2, '', 3]);
    final diff = difference([2, 1], [2, 3]);
    final diffBy = differenceBy([2.1, 1.2], [2.1, 3.4], (a) => a);
    final dr = drop([1, 2, 3], 0);
    final dropR = dropRight([1, 2, 3]);

    final flatDepth = flattenDepth([
      1,
      [
        2,
        [
          3,
          [4]
        ],
        5
      ]
    ], 1);

    expect(flatDepth, [
      1,
      2,
      [
        3,
        [4]
      ],
      5
    ]);

    expect(tail([1, 2, 3]), [2, 3]);

    // expect(plAt, ['b', 'd']);
    expect(dropR, [1, 2]);
    expect(dr, [1, 2, 3]);
    expect(diffBy, [1.2], reason: 'differenceBy');
    expect(diff, [1], reason: 'difference');
    expect(union([2], [1, 2]), [2, 1]);
    expect(unionBy([2.1], [1.2, 2.3], (n) => n = 1), [2.1], reason: 'unionBy');
    expect(
        zip(['a', 'b'], [1, 2], [true, false]),
        [
          ['a', 1, true],
          ['b', 2, false]
        ],
        reason: 'zip');

    expect(
        chunkVlue,
        [
          ['a', 'b'],
          ['c', 'd']
        ],
        reason: 'chunk');
    expect(compactValue, [1, 2, 3], reason: 'compact');
    expect(value, true, reason: 'isLength');

    expect(withOut([2, 1, 2, 3], [1, 2]), [3], reason: 'Should return [3]');
  });

  test('Testing Flamers', () {
    final fPairs = fromPairs([
      ['a', 1],
      ['b', 2]
    ]);
    final ignoreLast = initial([1, 2, 3]);
    final intersec = intersection([2, 1], [2, 3]);
    final lasIndex = lastIndexOf([1, 2, 1, 2], 2);
    final removeValue = pull(['a', 'b', 'c', 'a', 'b', 'c'], ['a', 'c']);
    final plAt = pullAt(['a', 'b', 'c', 'd'], [1, 2]);
    final sortedByInt = sortedIndexOf([4, 5, 5, 5, 6], 5);
    final sortedBy = sortedIndex([30, 50], 40);
    final uniqList = sortedUniq([1, 1, 2]);
    final uniqListBy = sortedUniqBy([1.1, 1.2, 2.3, 2.4], (n) => n > 1);

    expect(uniqListBy, [1.1]);
    expect(uniqList, [1, 2]);
    expect(sortedByInt, 1);
    expect(sortedBy, 1);
    expect(plAt, ['b', 'd']);
    expect(lasIndex, 3);
    expect(removeValue, ['b', 'b']);
    expect(intersec, [2]);
    expect(ignoreLast, [1, 2]);
    expect(fPairs, {'a': 1, 'b': 2});
  });

  test('Testing Maths', () {});
}
