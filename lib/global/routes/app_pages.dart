import 'package:get/get.dart';
import 'package:post_app/app/controllers/auth_controller.dart';
import 'package:post_app/app/modules/create_post/bindings/create_post_bindings.dart';
import 'package:post_app/app/modules/create_post/pages/create_post.dart';
import 'package:post_app/app/modules/dashboard/bindings/dashboard_bindings.dart';
import 'package:post_app/app/modules/dashboard/pages/dashboard.dart';
import 'package:post_app/app/modules/home_posts/bindings/home_posts_bindings.dart';
import 'package:post_app/app/modules/home_posts/pages/home_posts.dart';
import 'package:post_app/app/modules/landing_page/pages/landing_page.dart';
import 'package:post_app/app/modules/liked_posts/bindings/liked_posts_bindings.dart';
import 'package:post_app/app/modules/liked_posts/pages/liked_posts.dart';
import 'package:post_app/app/modules/log_in/bindings/log_in_page_binding.dart';
import 'package:post_app/app/modules/log_in/pages/log_in.dart';
import 'package:post_app/app/modules/profile/bindings/profile_bindings.dart';
import 'package:post_app/app/modules/profile/pages/profile.dart';
import 'package:post_app/app/modules/search_post/bindings/search_post_bindings.dart';
import 'package:post_app/app/modules/search_post/pages/search_post.dart';
import 'package:post_app/app/modules/sign_up/bindings/sign_up_page_binding.dart';
import 'package:post_app/app/modules/sign_up/pages/sign_up.dart';
import 'package:post_app/global/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static final initial =
      Get.find<AuthController>().userLoggedIn ? Routes.homePosts : Routes.logIn;

  static final routes = [
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
    GetPage(
      name: Routes.dashboard,
      page: () => const Dashboard(),
      binding: DashboardBindings(),
    ),
    GetPage(
      name: Routes.homePosts,
      page: () => const HomePosts(),
      binding: HomePostsBindings(),
    ),
    GetPage(
      name: Routes.searchPost,
      page: () => const SearchPost(),
      binding: SearchPostBindings(),
    ),
    GetPage(
      name: Routes.createPost,
      page: () => const CreatePost(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: Routes.likedPosts,
      page: () => const LikedPosts(),
      binding: LikedPostsBinging(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const Profile(),
      binding: ProfileBindings(),
    ),
  ];
}
