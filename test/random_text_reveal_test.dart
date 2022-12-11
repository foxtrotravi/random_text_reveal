import 'package:flutter_test/flutter_test.dart';

import 'package:random_text_reveal/random_text_reveal.dart';

void main() {
  testWidgets('Random text reveal widget test', (tester) async {
    await tester.pumpWidget(const RandomTextReveal(text: 'R'));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    final textFinder = find.text('R');
    expect(textFinder, findsOneWidget);
  });
}
