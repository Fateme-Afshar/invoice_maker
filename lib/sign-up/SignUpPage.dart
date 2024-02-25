import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom-widget/CustomButton.dart';
import '../custom-widget/CustomTextField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("Sign up an account"),
              ),
              InputTextField(
                key: const Key("usernameField"),
                hint: "Username",
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                key: const Key("emailField"),
                hint: "Email",
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                key: const Key("passwordField"),
                hint: "Password",
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                key: const Key("confirmPasswordField"),
                hint: "Confirm Password",
              ),
              Button(
                btnKey: const Key("signupBtn"),
                buttonText: "Sign Up",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
