import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoice_maker/sign-up/SignUpPage.dart';

void main() {
  group("Sign up page test", () {
    testWidgets(
        "Should have username, password and confirm password fields and a sign-up button",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: SignUpPage(),
      ));

      final Finder usernameField = find.byKey(Key("usernameField"));
      final Finder emailField = find.byKey(Key("emailField"));
      final Finder passwordField = find.byKey(Key("passwordField"));
      final Finder confirmPasswordField =
          find.byKey(Key("confirmPasswordField"));
      final Finder signupBtn = find.byKey(Key("signupBtn"));

      expect(usernameField, findsOneWidget);
      expect(emailField, findsOneWidget);
      expect(passwordField, findsOneWidget);
      expect(confirmPasswordField, findsOneWidget);
      expect(signupBtn, findsOneWidget);

      await tester.enterText(usernameField, "username");
      await tester.enterText(emailField, "test@test.com");
      await tester.enterText(passwordField, "012345678");
      await tester.enterText(confirmPasswordField, "012345678");

      await tester.tap(signupBtn);
      await tester.pump();
    });
  });
}
