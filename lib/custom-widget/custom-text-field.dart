import 'package:flutter/material.dart';

class InputTextField extends TextField {
  final String hint;

  InputTextField({
    required Key key,
    required this.hint
  }) : super(key: key, decoration: InputDecoration(hintText: hint));
}
