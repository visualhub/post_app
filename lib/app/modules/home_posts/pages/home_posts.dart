import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/home_posts/controllers/home_posts_controller.dart';

class HomePosts extends GetView<HomePostsController> {
  const HomePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          'home posts',
        ),
      ),
    );
  }
}
