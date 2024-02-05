import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/forget_password/page/forget_password.dart';
import 'package:post_app/app/modules/log_in/views/login_form_view.dart';
import 'package:post_app/app/modules/posts/pages/post_page.dart';
import 'package:post_app/app/modules/sign_up/pages/sign_up.dart';
import 'package:post_app/app/widgets/auth_footer_widget.dart';
import 'package:post_app/app/widgets/auth_header_widget.dart';
import 'package:post_app/global/constants/image_strings.dart';
import 'package:post_app/global/constants/text_strings.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({
    super.key,
  });

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
                    height: 160,
                  ),
                ),
                const AuthHeaderWidget(
                  subTitle: tLoginPageSubTitle,
                  title: "Login",
                ),
                LoginFormView(
                  onPressedLogin: () {
                    Get.to(
                      () => const PostPage(),
                    );
                  },
                  onPressedForgetPassword: () {
                    ForgetPasswordScreen.forgetPasswordShowModelBottomSheet(
                      context,
                    );
                  },
                ),
                AuthFooterWidget(
                  bottomPrefixText: "I don't have an account ",
                  bottomPostfixText: "Sign Up",
                  buttonText: "Sign-In with Google",
                  onPressed: () {
                    Get.to(
                      () => const SignUpScreen(),
                    );
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
