import 'package:get/get.dart';
import 'package:post_app/app/modules/create_post/controllers/create_post_controller.dart';

class CreatePostBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CreatePostController(),
    );
  }
}
