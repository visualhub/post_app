import 'package:get/get.dart';
import 'package:post_app/app/modules/liked_posts/controllers/liked_posts_controller.dart';

class LikedPostsBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LikedPostsController());
  }
}
