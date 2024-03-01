import 'package:flutter/material.dart';

class InputTextField extends TextFormField {
  final String hint;

  InputTextField({required Key key, required this.hint})
      : super(key: key, decoration: InputDecoration(hintText: hint));
}

class InfoTextField extends TextFormField {
  final String value;

  InfoTextField({required Key key, required this.value})
      : super(key: key, initialValue:value);
}
