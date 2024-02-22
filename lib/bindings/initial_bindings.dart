import 'package:get/get.dart';
import 'package:post_app/app/controllers/auth_controller.dart';

class InitialAppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AuthController(),
      fenix: true,
    );
  }
}
