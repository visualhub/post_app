import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/controllers/auth_controller.dart';
import 'package:post_app/app/database/user_queries.dart';
import 'package:post_app/app/models/user_data.dart';
import 'package:post_app/global/routes/app_routes.dart';

class SignupPageController extends GetxController {
  final emailTextController = TextEditingController();
  final userNameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final phoneNumberTextController = TextEditingController();

  @override
  void onClose() {
    emailTextController.dispose();
    userNameTextController.dispose();
    passwordTextController.dispose();
    phoneNumberTextController.dispose();
    super.onClose();
  }

  var formKey = GlobalKey<FormState>();
  final _authController = Get.find<AuthController>();
  final isObscured = true.obs;
  UserData data = UserData.empty();

  Future<void> onTapSignUp(String emailAddress, String password) async {
    try {
      final user =
          await _authController.createUserWithEmail(emailAddress, password);
      data.userName = userNameTextController.text;
      data.email = emailTextController.text;
      data.phoneNumber = phoneNumberTextController.text;
      data.userID = user.uid;
      UserQueries.createUser(data);

      Get.toNamed(Routes.homePosts);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void toggleIsObscured() {
    isObscured.value = !isObscured.value;
  }
}
