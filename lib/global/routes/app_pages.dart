import 'package:get/get.dart';
import 'package:post_app/app/controllers/auth_controller.dart';
import 'package:post_app/app/modules/landing_page/pages/landing_page.dart';
import 'package:post_app/app/modules/log_in/bindings/log_in_page_binding.dart';
import 'package:post_app/app/modules/log_in/pages/log_in.dart';
import 'package:post_app/app/modules/posts/bindings/post_binding.dart';
import 'package:post_app/app/modules/posts/pages/post_page.dart';
import 'package:post_app/app/modules/sign_up/bindings/sign_up_page_binding.dart';
import 'package:post_app/app/modules/sign_up/pages/sign_up.dart';
import 'package:post_app/global/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static final initial =
      Get.find<AuthController>().userLoggedIn ? Routes.posts : Routes.logIn;

  static final routes = [
    GetPage(
      name: Routes.posts,
      page: () => const PostPage(),
      binding: PostBinding(),
    ),
    GetPage(
      name: Routes.logIn,
      page: () => const LogInScreen(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpScreen(),
      binding: SignupPageBinding(),
    ),
    GetPage(
      name: Routes.landingPage,
      page: () => const LandingPage(),
      // binding: SignupPageBinding(),
    ),
  ];
}
