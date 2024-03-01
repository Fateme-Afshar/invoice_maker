import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:invoice_maker/core/database/appDatabase.dart';
import 'package:invoice_maker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

   testWidgets("Add product page widget test", (WidgetTester tester) async {
     await app.main();
     await tester.pumpAndSettle();

     final Finder nameFinder = find.byKey(Key("nameField"));
     final Finder priceFinder = find.byKey(Key("priceField"));
     final Finder addBtn = find.byKey(Key("addProductBtn"));

     await tester.enterText(nameFinder, "test product");
     await tester.enterText(priceFinder, '\$1000');
     await tester.tap(addBtn);

     await tester.pumpAndSettle();
   });

}