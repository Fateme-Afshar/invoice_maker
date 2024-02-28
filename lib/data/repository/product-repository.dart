import 'package:hive/hive.dart';
import 'package:invoice_maker/data/repository/crud-repository.dart';
import 'package:invoice_maker/model/product.dart';

import '../../core/database/appDatabase.dart';

class ProductRepository extends IRepository<Product> {
  late final Box<Product> box;

  Future<void> openProductBox() async {
    box = await AppDatabase.initialProductBox();
  }

  @override
  Future<void> delete(Product obj) async {
    await box.delete(obj.key);
  }

  @override
  Product? get(String key) {
    return box.get(key);
  }

  @override
  Iterable<Product> getList() {
    return box.values;
  }

  @override
  Future<void> insert(Product obj) async {
    await box.put(obj.productKey,obj);
  }

  @override
  Future<void> update(Product obj) async {
    await box.put(obj.productKey, obj);
  }
}
