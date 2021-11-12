[![build](https://github.com/Rexfordasamoah51/Lonate/workflows/build/badge.svg?branch=main)](https://github.com/bruno-garcia/badges.bar/actions?query=branch%3Amain)
[![likes](https://lonate/lonate/likes)](https://pub.dev/packages/badges_bar/score) [![popularity](https://lonate/lonate/popularity)](https://pub.dev/packages/badges_bar/score) [![pub points](https://lonate/lonate/pub%20points)](https://pub.dev/packages/badges_bar/score)

![UX](https://user-images.githubusercontent.com/36260221/141528867-f9ee0e1f-248f-4ef3-bb3c-d2f3cba5a9c9.png)


A super effective Dart and Flutter library delivering performance🌝 & ensuring greater build speed 🚀. The package has some cook utilizes which is ready to be serve in your app.💙

## Getting started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  lonate: <latest_version>
```

In your library add the following import:

```dart
import 'package:lonate/lonate.dart';
```

## How to use Lonate

```dart
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

/// Function to do multipleComputation
  var mic = multipleComputation((x, y, a) {
    return [x, y, a];
  }, [square, doubled, square], [9]);

  debugPrint(mic);
}

```

## Contributing

- Fix a bug
- Write and improve some **documentation**. Documentation is very critical to us. We would appreciate help in adding multiple languages to our docs.
- If you are a developer, feel free to check out the source and submit pull requests.
- Dig into [**CONTRIBUTING.MD**](CONTRIBUTING.md), which covers submitting bugs, requesting new features, preparing your code for a pull request, etc.
- Please don't forget to **like**, **follow**, and **star our repo**!

### Show some :heart: and star the repo
