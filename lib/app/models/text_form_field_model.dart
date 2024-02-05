import 'package:flutter/material.dart';

class TextFormFieldModel {
  TextFormFieldModel({
    this.hintText,
    this.keyboardType,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
  });
  String? hintText, labelText;
  Icon? prefixIcon;
  IconButton? suffixIcon;
  TextInputType? keyboardType;
}
