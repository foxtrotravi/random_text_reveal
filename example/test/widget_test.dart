// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:random_text_reveal/random_text_reveal.dart';

void main() {
  testWidgets('Random Text Reveal test', (WidgetTester tester) async {
    const widget = RandomTextReveal(
      text: 'Random Text Reveal',
      duration: Duration(seconds: 2),
      style: TextStyle(
        fontSize: 36,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      curve: Curves.easeIn,
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      ),
    );

    expect(find.byType(RandomTextReveal), findsOne);
  });
}
