import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/database/user_queries.dart';
import 'package:post_app/app/models/text_form_field_model.dart';
import 'package:post_app/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:post_app/app/widgets/custom_app_button.dart';
import 'package:post_app/app/widgets/custom_text_form_field.dart';

class SignUpFormView extends GetView<SignupPageController> {
  const SignUpFormView({
    super.key,
  });

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
                model: TextFormFieldModel(
                  controller: controller.userNameTextController,
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  hintText: "Full name",
                  labelText: "Full name",
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                roundedBorder: true,
                model: TextFormFieldModel(
                  controller: controller.emailTextController,
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: "Your email",
                  labelText: "Your email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                roundedBorder: true,
                model: TextFormFieldModel(
                  controller: controller.phoneNumberTextController,
                  prefixIcon: const Icon(Icons.contact_phone_outlined),
                  hintText: "Your phone number",
                  labelText: "Your phone number",
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid phone number!';
                    }
                    return null;
                  },
                ),
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => CustomTextFormField(
                  roundedBorder: true,
                  model: TextFormFieldModel(
                    controller: controller.passwordTextController,
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
                    hintText: "Password",
                    labelText: "Password",
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },
                  ),
                  obscureText: controller.isObscured.value,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomAppButton(
                onPressed: () {
                  controller.onTapSignUp(controller.emailTextController.text,
                      controller.passwordTextController.text);

                  UserQueries.fetchUserData();
                },
                buttonText: 'SignUp',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
