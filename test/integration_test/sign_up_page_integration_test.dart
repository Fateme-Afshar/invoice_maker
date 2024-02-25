import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:invoice_maker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Sign up page widget test", (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

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

    await tester.pumpAndSettle();
  });
}