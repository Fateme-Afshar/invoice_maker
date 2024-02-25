import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoice_maker/sign-in/SignInPage.dart';

void main() {
  testWidgets("Sig in page widget test", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SignInPage(),
    ));

    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.widgetWithText(TextField, "Username/ Email"), findsOneWidget);
    expect(find.widgetWithText(TextField, "Password"), findsOneWidget);

    group("Sign in button", () {
      expect(find.widgetWithText(ElevatedButton, 'Sign In'), findsOneWidget);
    });

    await tester.enterText(
        find.widgetWithText(TextField, "Username/ Email"), "testuser");
    await tester.enterText(
        find.widgetWithText(TextField, "Password"), "password");

    await tester.tap(find.widgetWithText(ElevatedButton, "Sign In"));

    await tester.pump();
  });
}
