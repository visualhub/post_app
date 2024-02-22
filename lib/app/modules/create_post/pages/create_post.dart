import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/create_post/controllers/create_post_controller.dart';

class CreatePost extends GetView<CreatePostController> {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          'create post',
        ),
      ),
    );
  }
}
