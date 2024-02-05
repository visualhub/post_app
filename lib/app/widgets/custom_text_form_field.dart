import 'package:flutter/material.dart';
import 'package:post_app/app/models/text_form_field_model.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.model,
    required this.obscureText,
    required this.roundedBorder,
  });

  final bool obscureText, roundedBorder;

  final TextFormFieldModel? model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        cursorColor: Colors.black38,
        keyboardType: model!.keyboardType,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: roundedBorder
                  ? BorderRadius.circular(18)
                  : BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Colors.black38, // Set your desired border color
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: roundedBorder
                  ? BorderRadius.circular(18)
                  : BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Colors.black, // Set your desired border color
              ),
            ),
            suffixIcon: model!.suffixIcon,
            prefixIcon: model!.prefixIcon,
            labelText: model!.labelText,
            hintText: model!.hintText),
        obscureText: obscureText,
      ),
    );
  }
}
