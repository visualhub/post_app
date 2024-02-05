import 'package:get/get.dart';
import 'package:post_app/app/modules/log_in/pages/log_in.dart';
import 'package:post_app/app/modules/posts/pages/post_page.dart';
import 'package:post_app/app/modules/sign_up/pages/sign_up.dart';
import 'package:post_app/global/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.logIn;

  static final routes = [
    GetPage(
      name: Routes.posts,
      page: () => const PostPage(),
    ),
    GetPage(
      name: Routes.logIn,
      page: () => const LogInScreen(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpScreen(),
    ),
  ];
}
