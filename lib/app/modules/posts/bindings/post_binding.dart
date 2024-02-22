import 'package:get/get.dart';
import 'package:post_app/app/modules/posts/controllers/post_controller.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PostPageController());
  }
}
