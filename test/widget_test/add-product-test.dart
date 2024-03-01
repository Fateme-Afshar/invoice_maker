import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoice_maker/features/add-product/add-product-page.dart';

void main() {
  group("Add product test page", () {
    testWidgets("Should have name and price fields and a add button",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AddProductPage(),
      ));

      final Finder nameFinder = find.byKey(Key("nameField"));
      final Finder priceFinder = find.byKey(Key("priceField"));
      final Finder addBtn = find.byKey(Key("addProductBtn"));

      expect(nameFinder, findsOneWidget);
      expect(priceFinder, findsOneWidget);
      expect(addBtn, findsOneWidget);

      await tester.enterText(nameFinder, "test product");
      await tester.enterText(priceFinder, "\$1000");

      await tester.tap(addBtn);

      await tester.pump();
    });
  });
}
