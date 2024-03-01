import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Key btnKey;
  final VoidCallback onPress;
  final ButtonStyle? style;

  const Button(
      {super.key, required this.btnKey, required this.buttonText, required this.onPress, this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          key: btnKey,
          onPressed: onPress,
          style: style,
          child: Text(
            buttonText,
          )),
    );
  }
}

class DeleteButton extends Button {

  DeleteButton(
      {required super.btnKey, required super.buttonText, required super.onPress})
      : super(style: ElevatedButton.styleFrom(
    backgroundColor:const Color.fromARGB(255, 0, 0, 128),
    foregroundColor: const Color.fromARGB(255, 255, 127, 80)
  ));

}
