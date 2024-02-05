import 'package:flutter/material.dart';
import 'package:post_app/app/models/text_form_field_model.dart';
import 'package:post_app/app/widgets/custom_app_button.dart';
import 'package:post_app/app/widgets/custom_text_form_field.dart';

class LoginFormView extends StatelessWidget {
  const LoginFormView({
    super.key,
    this.onPressedLogin,
    this.onPressedForgetPassword,
  });
  final VoidCallback? onPressedLogin, onPressedForgetPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            CustomTextFormField(
              roundedBorder: true,
              obscureText: false,
              model: TextFormFieldModel(
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                prefixIcon: const Icon(Icons.people_outline),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              roundedBorder: true,
              obscureText: true,
              model: TextFormFieldModel(
                hintText: "Password",
                keyboardType: TextInputType.text,
                labelText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_outlined)),
                prefixIcon: const Icon(Icons.password_outlined),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: onPressedForgetPassword,
                child: const Text("Forget Password?"),
              ),
            ),
            CustomAppButton(
              onPressed: onPressedLogin,
              buttonText: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
