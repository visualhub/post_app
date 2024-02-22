import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/widgets/custom_app_button.dart';
import 'package:post_app/global/routes/app_routes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppButton(
              onPressed: () {
                Get.toNamed(
                  Routes.logIn,
                );
              },
              buttonText: 'Login',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppButton(
              onPressed: () {
                Get.toNamed(
                  Routes.signUp,
                );
              },
              buttonText: 'Sign up',
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
