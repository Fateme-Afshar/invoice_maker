import 'package:hive/hive.dart';
import 'package:invoice_maker/core/database/schema.dart';
import 'package:invoice_maker/data/repository/crud-repository.dart';
import 'package:invoice_maker/model/user.dart';

import '../../core/database/appDatabase.dart';

class UserRepository extends IRepository<User> {
  late final Box<User> box;

  Future<void> openUserBox() async {
    box = await AppDatabase.initialUserBox();
  }

  @override
  Future<void> delete(User obj) async {
    await box.delete(obj.userKey);
  }

  @override
  User? get() {
    return box.get(UserSchema.userKey);
  }

  @override
  Iterable<User> getList() {
    return box.values;
  }

  @override
  Future<void> insert(User obj) async {
    await box.put(UserSchema.userKey, obj);
  }

  @override
  Future<void> update(User obj) async {
    await box.put(UserSchema.userKey, obj);
  }
}
