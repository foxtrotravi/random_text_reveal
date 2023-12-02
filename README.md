[![pub package](https://img.shields.io/pub/v/random_text_reveal.svg)](https://pub.dev/packages/random_text_reveal)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


# Random Text Reveal

A Flutter package that helps you create animated Text widgets with Random Text Reveal
Effect for all platforms.

# Simple Usage

You should pass in a text value to the `RandomTextReveal` widget. It will automatically
animate by generating random characters & slowly reveal text one by one. You can customize
the text by various parameters: `style`, `duration`, `randomString` etc.

```dart
const RandomTextReveal(
  text: 'Random Text Reveal',
  duration: Duration(seconds: 2),
  style: TextStyle(
    fontSize: 36,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
  curve: Curves.easeIn,
)
```

# Customized Usage

You can customize the `RandomTextReveal` widget by overriding the default values. Using
[GoogleFonts package](https://pub.dev/packages/google_fonts), you can make it a lot appealing

```dart
RandomTextReveal(
  key: globalKey,
  text: 'PASSWORD',
  initialText: 'Ae8&vNQ32cK^',
  shouldPlayOnStart: false,
  duration: const Duration(seconds: 2),
  style: GoogleFonts.orbitron(
    textStyle: const TextStyle(
      fontSize: 24,
      color: Colors.green,
      fontWeight: FontWeight.bold,
      letterSpacing: 8,
    ),
  ),
  randomString: Source.alphabets,
  onFinished: () {
    debugPrint('Password cracked successfully');
  },
  curve: Curves.easeIn,
  overflow: TextOverflow.ellipsis,
  maxLines: 2,
)
```

!['random-text-reveal-preview'](https://media.giphy.com/media/ENweHBIx5F2iIBRtwM/giphy.gif)

### Parameters

* `text: String`
* `initialText: String?`
* `shouldPlayOnStart: bool`
* `randomString: String`
* `duration: Duration`
* `onFinished: VoidCallback?`
* `curve: Curve`
* `style: TextStyle?`
* `textDirection: TextDirection?`
* `locale: Locale?`
* `maxLines: int?`
* `overflow: TextOverflow?`
* `softWrap: bool?`
* `textAlign: TextAlign?`
* `semanticsLabel: String?`
