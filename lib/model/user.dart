import 'package:hive/hive.dart';
import 'package:invoice_maker/core/database/schema.dart';

part 'user.g.dart';

@HiveType(typeId: UserSchema.userTypeId)
class User extends HiveObject {
  @HiveField(0)
  late String username;
  @HiveField(1)
  late String email;
  @HiveField(2)
  late String password;
  @HiveField(3)
  final String userKey = UserSchema.userKey;

  User.factory(
      {required this.username, required this.email, required this.password});

  User({required this.username, required this.email, required this.password});
}
