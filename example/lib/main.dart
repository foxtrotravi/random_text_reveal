import 'package:flutter/material.dart';

// OUR PACKAGE
import 'package:random_text_reveal/random_text_reveal.dart';

final GlobalKey<RandomTextRevealState> globalKey = GlobalKey();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 36,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    );

    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: RandomTextReveal(
            key: globalKey,
            text: 'Random Text Reveal',
            duration: const Duration(seconds: 2),
            style: textStyle,
            curve: Curves.easeIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            globalKey.currentState?.play();
          },
        ),
      ),
    );
  }
}
