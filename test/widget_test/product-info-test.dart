import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoice_maker/features/add-product/product-info-page.dart';

void main() {
  group("Product information test page", () {
    testWidgets("Should have name and price fields and a update button",
            (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(
            home: ProductInfoPage(),
          ));

          final Finder nameFinder = find.byKey(Key("nameField"));
          final Finder priceFinder = find.byKey(Key("priceField"));
          final Finder updateProductBtn = find.byKey(Key("updateProductBtn"));

          expect(nameFinder, findsOneWidget);
          expect(priceFinder, findsOneWidget);
          expect(updateProductBtn, findsOneWidget);

          await tester.enterText(nameFinder, "test product");
          await tester.enterText(priceFinder, "\$1000");

          await tester.tap(updateProductBtn);

          await tester.pump();
        });
  });
}