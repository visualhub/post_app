import 'package:flutter/material.dart';
import 'package:post_app/app/models/text_form_field_model.dart';
import 'package:post_app/app/widgets/auth_header_widget.dart';
import 'package:post_app/app/widgets/custom_text_form_field.dart';
import 'package:post_app/global/constants/image_strings.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "HERO_LOGO",
              child: Image.asset(
                tAppLogo,
                height: 160,
              ),
            ),
            const AuthHeaderWidget(
              title: "Forget Password",
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.center,
              subTitle:
                  "Please enter your registered email to get 6-digit pin.",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              roundedBorder: false,
              model: TextFormFieldModel(
                hintText: "Email",
                labelText: "Email",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => const ForgetPasswordOtpScreen());
                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
