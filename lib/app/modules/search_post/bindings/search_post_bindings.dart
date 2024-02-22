import 'package:get/get.dart';
import 'package:post_app/app/modules/search_post/controllers/search_post_controller.dart';

class SearchPostBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchPostController());
  }
}
