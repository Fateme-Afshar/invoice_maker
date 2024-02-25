class InputValidator {
   bool isEmpty(String input) {
    return input.isEmpty;
  }

   bool isPasswordLengthValid(String password, {int minLength = 8}) {
    return password.length >= minLength;
  }
}
