import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// OUR PACKAGE
import 'package:random_text_reveal/random_text_reveal.dart';

final GlobalKey<RandomTextRevealState> globalKey = GlobalKey();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: RandomTextReveal(
            key: globalKey,
            initialText: 'Ae8&vNQ32cK^',
            shouldPlayOnStart: false,
            text: 'PASSWORD',
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
