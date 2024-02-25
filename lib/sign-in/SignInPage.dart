import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_maker/custom-widget/CustomButton.dart';
import 'package:invoice_maker/custom-widget/CustomTextField.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Sign In your account",
                ),
              ),
              InputTextField(
                key: const Key("usernameField"),
                hint: "Username/ Email",
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                key: const Key("passwordField"),
                hint: "Password",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("signinBtn"),
                buttonText: "Sign In",
                onPress: () {},
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 16),
                  child: Text(
                    "create an account",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
