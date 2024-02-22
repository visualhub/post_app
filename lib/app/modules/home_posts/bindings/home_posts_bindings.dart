import 'package:get/get.dart';
import 'package:post_app/app/modules/home_posts/controllers/home_posts_controller.dart';

class HomePostsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePostsController());
  }
}
