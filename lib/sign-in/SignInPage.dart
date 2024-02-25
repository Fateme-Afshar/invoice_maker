import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Text(
                  "Sign In your account",
                ),
              ),
              const TextField(
                key: Key("usernameField"),
                decoration: InputDecoration(hintText: "Username/ Email"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                key: Key("passwordField"),
                decoration: InputDecoration(hintText: "Password"),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    key: Key("signinBtn"),
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
                    )),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 24, 0, 16),
                  child: Text(
                    "create an account",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14),
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
