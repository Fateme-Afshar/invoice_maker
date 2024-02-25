import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Key btnKey;
  final VoidCallback onPress;

  const Button({super.key, required this.btnKey, required this.buttonText, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          key: btnKey,
          onPressed:onPress,
          child:  Text(
            buttonText,
          )),
    );
  }
}
