import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/controllers/auth_controller.dart';
import 'package:post_app/global/routes/app_routes.dart';

class LoginPageController extends GetxController {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  void onClose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.onClose();
  }

  final isObscured = true.obs;
  var formKey = GlobalKey<FormState>();

  void validateEmailAndPassword() {
    if (emailTextController.text.isEmpty) {
      throw Exception(
        'Please enter your email address.',
      );
    }
    if (!emailTextController.text.isEmail) {
      throw Exception(
        'Please enter a correct email address.',
      );
    }
    if (passwordTextController.text.isEmpty) {
      throw Exception(
        'Please enter your password.',
      );
    }
  }

  Future<void> logInUser(String emailAddress, String password) async {
    try {
      await Get.find<AuthController>()
          .signInUserWithEmail(emailAddress, password);
      Get.toNamed(Routes.posts);
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
  }

  void toggleIsObscured() {
    isObscured.value = !isObscured.value;
    print(isObscured.value);
  }
}
