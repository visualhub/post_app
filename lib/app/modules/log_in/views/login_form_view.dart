import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:post_app/app/models/text_form_field_model.dart';
import 'package:post_app/app/modules/log_in/controllers/log_in_controller.dart';
import 'package:post_app/app/widgets/custom_app_button.dart';
import 'package:post_app/app/widgets/custom_text_form_field.dart';

class LoginFormView extends GetView<LoginPageController> {
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
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              CustomTextFormField(
                roundedBorder: true,
                obscureText: false,
                model: TextFormFieldModel(
                  controller: controller.emailTextController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.people_outline),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => CustomTextFormField(
                  roundedBorder: true,
                  obscureText: controller.isObscured.value,
                  model: TextFormFieldModel(
                    controller: controller.passwordTextController,
                    hintText: "Password",
                    keyboardType: TextInputType.text,
                    labelText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.toggleIsObscured();
                      },
                      icon: Icon(
                        !controller.isObscured.value
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.password_outlined),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },
                  ),
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
      ),
    );
  }
}
