


import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:invoice_maker/core/database/appDatabase.dart';
import 'package:invoice_maker/data/repository/product-repository.dart';
import 'package:invoice_maker/model/product.dart';

void main() {
  const MethodChannel channel = MethodChannel('plugins.flutter.io/path_provider');
  TestWidgetsFlutterBinding.ensureInitialized();

  group("Product repository test", () {
    late ProductRepository productRepository;

    setUpAll(() async {
      channel.setMockMethodCallHandler((MethodCall methodCall) async {
        if (methodCall.method == 'getApplicationDocumentsDirectory') {
          return '.';
        }
        return null;
      });

      await AppDatabase.initialDatabase();
      Hive.registerAdapter(ProductAdapter());
      productRepository = ProductRepository();
      await productRepository.openProductBox();
    });

    test("Insert product", () async {
      Product product = Product.factory(name: "Phone",price: 1000);

      await productRepository.insert(product);

      Product? savedProduct = productRepository.get(product.productKey);
      expect(savedProduct?.name,"Phone");
    });

    test("Delete product", () async {
      Product product = Product.factory(name: "Phone",price: 1000);

      await productRepository.insert(product);
      await productRepository.delete(product);

      Product? savedProduct = productRepository.get(product.productKey);

      expect(savedProduct,isNull);
    });

    test("Update product", () async {
      Product product = Product.factory(name: "Phone",price: 1000);

      await productRepository.insert(product);

      product.name="Tablet";
      await productRepository.update(product);

      Product? savedProduct = productRepository.get(product.productKey);
      expect(savedProduct?.name,"Tablet");
    });
  });
}