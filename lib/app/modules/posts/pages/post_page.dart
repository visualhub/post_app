import 'package:flutter/cupertino.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          "Hello post app",
        ),
      ),
    );
  }
}
