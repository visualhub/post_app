import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/liked_posts/controllers/liked_posts_controller.dart';

class LikedPosts extends GetView<LikedPostsController> {
  const LikedPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          'liked posts',
        ),
      ),
    );
  }
}
