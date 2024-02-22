import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/profile/controllers/profile_controller.dart';

class Profile extends GetView<ProfileController> {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          'profile',
        ),
      ),
    );
  }
}
