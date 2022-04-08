import 'package:flutter/material.dart';

class TextFormField {
  static InputDecoration inputDecoration(String hint, String label) =>
      InputDecoration(
        hintText: hint,
        labelText: label,
        border: UnderlineInputBorder(), 
      );
}
