
import 'package:hive/hive.dart';
import 'package:invoice_maker/core/database/schema.dart';

@HiveType(typeId: UserSchema.userTypeId)
class User {
  @HiveField(0)
  final String username;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String password;

  User.factory(
      {required this.username, required this.email, required this.password});
}
