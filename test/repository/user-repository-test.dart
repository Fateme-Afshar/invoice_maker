
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:integration_test/integration_test.dart';
import 'package:invoice_maker/core/database/appDatabase.dart';
import 'package:invoice_maker/data/repository/user-repository.dart';
import 'package:invoice_maker/model/user.dart';


void main() {
  const MethodChannel channel = MethodChannel('plugins.flutter.io/path_provider');
  TestWidgetsFlutterBinding.ensureInitialized();

  group("User repository test", () {
    late UserRepository userRepository;

    setUpAll(() async {
      channel.setMockMethodCallHandler((MethodCall methodCall) async {
        if (methodCall.method == 'getApplicationDocumentsDirectory') {
          return '.';
        }
        return null;
      });

      await AppDatabase.initialDatabase();
      Hive.registerAdapter(UserAdapter());
      userRepository = UserRepository();
      await userRepository.openUserBox();
    });

    test("Insert user", () async {
      User user = User.factory(
          username: "fateme", email: "test@test.com", password: "12345678");
      await userRepository.insert(user);

      User? savedUser = userRepository.get();
      expect(savedUser?.username,"fateme");
    });

    test("Delete user", () async {
      User user = User.factory(
          username: "fateme", email: "test@test.com", password: "12345678");
      await userRepository.insert(user);
      await userRepository.delete(user);

      Iterable<User> savedUser = userRepository.getList();
      expect(savedUser.isEmpty,isTrue);
    });

    test("Update user", () async {
      User user = User.factory(
          username: "fateme", email: "test@test.com", password: "12345678");
      await userRepository.insert(user);

      user.username="utab";
      await userRepository.update(user);

     User? savedUser = userRepository.get();
      expect(savedUser?.username,"utab");
    });
  });
}
