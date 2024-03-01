import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:invoice_maker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Sign in page widget test", (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    final Finder usernameField = find.byKey(Key('usernameField'));
    final Finder passwordField = find.byKey(Key('passwordField'));
    final Finder signInBtn = find.byKey(Key('signinBtn'));

    await tester.enterText(usernameField, "username");
    await tester.enterText(passwordField, 'password');
    await tester.tap(signInBtn);

    await tester.pumpAndSettle();
  });
}
