import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pass_gen/main.dart';

void main() {
  testWidgets('password generator', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our password length TextField is present.
    expect(find.byKey(const Key('password_length_textfield')), findsOneWidget);

    // Verify that our checkboxes are present.
    expect(find.byKey(const Key('uppercase_checkbox')), findsOneWidget);
    expect(find.byKey(const Key('lowercase_checkbox')), findsOneWidget);
    expect(find.byKey(const Key('numbers_checkbox')), findsOneWidget);
    expect(find.byKey(const Key('special_chars_checkbox')), findsOneWidget);

    // Verify that our generate password button is present.
    expect(find.byKey(const Key('generate_password_button')), findsOneWidget);

    // Verify that our copy to clipboard button is initially absent.
    expect(find.byKey(const Key('copy_to_clipboard_button')), findsNothing);
  });
}
