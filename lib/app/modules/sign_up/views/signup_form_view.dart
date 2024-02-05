import 'package:flutter/material.dart';
import 'package:post_app/app/models/text_form_field_model.dart';
import 'package:post_app/app/widgets/custom_app_button.dart';
import 'package:post_app/app/widgets/custom_text_form_field.dart';

class SignUpFormView extends StatelessWidget {
  const SignUpFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            CustomTextFormField(
              roundedBorder: true,
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                hintText: "Full name",
                labelText: "Full name",
                keyboardType: TextInputType.name,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              roundedBorder: true,
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: "Your email",
                labelText: "Your email",
                keyboardType: TextInputType.emailAddress,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              roundedBorder: true,
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.contact_phone_outlined),
                hintText: "Your phone number",
                labelText: "Your phone number",
                keyboardType: TextInputType.number,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              roundedBorder: true,
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.password_outlined),
                hintText: "Password",
                labelText: "Password",
                keyboardType: TextInputType.text,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomAppButton(
              onPressed: () {},
              buttonText: 'SignUp',
            ),
          ],
        ),
      ),
    );
  }
}
