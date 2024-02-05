import 'package:get/get.dart';
import 'package:post_app/app/modules/forget_password/controllers/forget_password_controller.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ForgetPasswordController());
  }
}
