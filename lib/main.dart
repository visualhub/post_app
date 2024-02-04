import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/modules/posts/pages/post_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetCupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(),
      home: PostPage(),
    );
  }
}
