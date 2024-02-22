import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/search_post/controllers/search_post_controller.dart';

class SearchPost extends GetView<SearchPostController> {
  const SearchPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          'search post',
        ),
      ),
    );
  }
}
