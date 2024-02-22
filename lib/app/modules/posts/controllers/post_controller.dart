import 'package:get/get.dart';
import 'package:post_app/app/controllers/auth_controller.dart';
import 'package:post_app/app/database/user_queries.dart';
import 'package:post_app/app/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:post_app/global/routes/app_routes.dart';

class PostPageController extends GetxController {
  late Rx<UserData> userData = UserData.empty().obs;
  final RxDouble maxHeight = 0.0.obs;
  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateMaxHeight();
    });
    _fetchUserData();
    super.onInit();
  }

  void _calculateMaxHeight() {
    final screenHeight = MediaQuery.of(Get.context!).size.height;
    maxHeight.value = screenHeight * 0.4; // 90% of the screen height
  }

  Future<void> _fetchUserData() async {
    userData.bindStream(UserQueries.fetchUserData());
    userData.listen((p0) {
      debugPrint(p0.email);
    });
    debugPrint(userData.value.email);
  }

  final String text = "Hello post app";

  Future<void> userSignOut() async {
    await Get.find<AuthController>().signOutUser();

    Get.offAllNamed(Routes.landingPage);
  }
}
