import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:invoice_maker/core/database/schema.dart';
import 'package:invoice_maker/model/product.dart';
import 'package:invoice_maker/model/user.dart';

class AppDatabase {
  static initialDatabase() async => await Hive.initFlutter();

  static Future<Box<User>> initialUserBox() async =>
      await Hive.openBox<User>(UserSchema.userBoxName);

  static Future<Box<Product>> initialProductBox() async =>
      await Hive.openBox<Product>(ProductSchema.productBoxName);
}
