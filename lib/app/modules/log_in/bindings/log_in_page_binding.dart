import 'package:get/get.dart';
import 'package:post_app/app/modules/log_in/controllers/log_in_controller.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginPageController());
  }
}
