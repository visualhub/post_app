import 'package:get/get.dart';
import 'package:post_app/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignupPageController());
  }
}
