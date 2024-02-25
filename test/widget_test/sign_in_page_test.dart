import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoice_maker/sign-in/sign-in-page.dart';

void main() {
  group("Sign in page tests", () {
    testWidgets("Should have username and password fields and a sign-in button", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: SignInPage(),
      ));

      final Finder usernameField = find.byKey(Key('usernameField'));
      final Finder passwordField = find.byKey(Key('passwordField'));
      final Finder signInBtn = find.byKey(Key('signinBtn'));

      expect(usernameField, findsOneWidget);
      expect(passwordField, findsOneWidget);
      expect(signInBtn, findsOneWidget);

      await tester.enterText(usernameField, "testuser");
      await tester.enterText(passwordField, "password");

      await tester.tap(signInBtn);

      await tester.pump();
    });
  });
}
