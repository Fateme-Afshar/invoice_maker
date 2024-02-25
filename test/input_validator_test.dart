
import 'package:test/test.dart';
import 'package:invoice_maker/utils/InputValidator.dart';

void main() {
  late InputValidator validator;

  setUp((){
    validator=InputValidator();
  });

  group('isEmpty', (){
    test("return true if the string is empty", () {
      expect(validator.isEmpty(" "), isFalse);
    });

    test("return false if the string isn't empty", () {
      expect(validator.isEmpty("input"), isTrue);
    });
  });

  group('isPasswordLengthValid', () {
    test("should return true if password length is less than 8", () {
      expect(validator.isPasswordLengthValid("1234567"), isFalse);
    });

    test("should return true if password length is more than 8", () {
      expect(validator.isEmpty("12345678"), isTrue);
    });
  });
}