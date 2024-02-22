import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/sign_up/views/signup_form_view.dart';
import 'package:post_app/app/widgets/auth_footer_widget.dart';
import 'package:post_app/app/widgets/auth_header_widget.dart';
import 'package:post_app/global/constants/image_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                    tag: "HERO_LOGO",
                    child: Image.asset(
                      tAppLogo,
                      height: 80,
                    )),
                const AuthHeaderWidget(
                  subTitle:
                      "Create account, so you can connect with your team! ",
                  title: "Signup",
                ),
                const SignUpFormView(),
                AuthFooterWidget(
                  buttonText: "Sig-Up with Google",
                  bottomPrefixText: "I already have an Account ",
                  bottomPostfixText: "Sign In",
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
