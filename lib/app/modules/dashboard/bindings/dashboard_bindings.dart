import 'package:get/get.dart';
import 'package:post_app/app/modules/dashboard/controllers/dashboard_controller.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
