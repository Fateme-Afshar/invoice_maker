import 'dart:math';

import 'package:hive/hive.dart';
import 'package:invoice_maker/core/database/schema.dart';

part 'product.g.dart';


@HiveType(typeId: ProductSchema.productTypeId)
class Product extends HiveObject {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late double price;
  @HiveField(2)
  final String productKey = "${ProductSchema.productKey}-${Random.secure().nextInt(1000)}";

  Product.factory({required this.name, required this.price});

  Product({required this.name, required this.price});
}
