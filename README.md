
[![Pub release](https://img.shields.io/pub/v/lonate.svg?style=flat-square)](https://pub.dev/packages/lonate)
[![Likes](https://badges.bar/lonate/likes)](https://pub.dev/packages/lonate/score) [![Popularity](https://badges.bar/lonate/popularity)](https://pub.dev/packages/lonate/score)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/Apache-2.0)

![UX](https://user-images.githubusercontent.com/36260221/141528867-f9ee0e1f-248f-4ef3-bb3c-d2f3cba5a9c9.png)

A super effective Dart and Flutter library for delivering performante app🌝 & ensuring greater build speed 🚀. The package has some cook utilizes which is ready to be serve in your app.💙

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

Check the [api documentation](https://pub.dev/documentation/lonate/latest/) for more information

## Contributing

- Fix a bug
- Write and improve some **documentation**. Documentation is very critical to us. We would appreciate help in adding multiple languages to our docs.
- If you are a developer, feel free to check out the source and submit pull requests.
- Dig into [**CONTRIBUTING.MD**](CONTRIBUTING.md), which covers submitting bugs, requesting new features, preparing your code for a pull request, etc.
- Please don't forget to **like**, **follow**, and **star our repo**!

### Show some :heart: and star the repo
