import 'package:get/get.dart';
import 'package:post_app/modules/posts/pages/post_page.dart';
import 'package:post_app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.posts;

  static final routes = [
    GetPage(
      name: Routes.posts,
      page: () => const PostPage(),
    ),
  ];
}
