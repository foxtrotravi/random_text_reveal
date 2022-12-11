[![pub package](https://img.shields.io/pub/v/random_text_reveal.svg)](https://pub.dev/packages/random_text_reveal) 
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


# Random Text Reveal

A Flutter package that helps you create animated Text widgets with Random Text Reveal 
Effect for all platforms.

# Simple Usage

You should pass in a text value to the RandomTextReveal widget. It will automatically
animate by generating random characters & slowly reveal text one by one. There are a 
few customizable options like style, duration, randomString etc.

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


!['random-text-reveal-preview'](https://media.giphy.com/media/jFhh29lqxsHw9nrFYi/giphy.gif)

### Parameters

#### `begin: double`
#### `text: String`

#### `randomString: String`

#### `duration: Duration`

#### `curve: Curve`

#### ` style: TextStyle?`

#### ` textDirection: TextDirection?`

#### ` locale: Locale?`

#### ` maxLines: int?`

#### ` overflow: TextOverflow?`

#### ` softWrap: bool?`

#### ` textAlign: TextAlign?`

#### ` semanticsLabel: String?`
