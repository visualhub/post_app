import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/posts/controllers/post_controller.dart';
import 'package:post_app/app/widgets/custom_app_button.dart';

class PostPage extends GetView<PostPageController> {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    controller.text,
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(
                top: 12,
                left: 24,
                right: 24,
                bottom: 24,
              ),
              child: CustomAppButton(
                onPressed: () {
                  debugPrint("called");
                  controller.userSignOut();
                },
                buttonText: 'Log out',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomSheet extends GetView<PostPageController> {
  const CustomBottomSheet({
    super.key,
    required this.workoutDescription,
  });
  final String workoutDescription;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: Get.width * 0.25,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              Container(
                constraints: BoxConstraints(maxHeight: Get.height * 0.4),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: Text(
                      workoutDescription,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white.withOpacity(0.6),
            padding: const EdgeInsets.only(
              top: 12,
              left: 24,
              right: 24,
              bottom: 24,
            ),
            child: CustomAppButton(
              onPressed: () {
                Navigator.pop(context);
              },
              buttonText: 'Bottom sheet',
            ),
          ),
        ],
      ),
    );
  }
}


//  showModalBottomSheet(
//                     context: context,
//                     clipBehavior: Clip.antiAlias,
//                     backgroundColor: Colors.black,
//                     isScrollControlled: true,
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.vertical(
//                         top: Radius.circular(32),
//                       ),
//                     ),
//                     builder: (context) {
//                       return LayoutBuilder(
//                         builder: (context, constraints) {
//                           return CustomBottomSheet(
//                             workoutDescription:
//                                 " desktop publishing software like PageMaker including versions of Lorem IpsumLorem Ipsum passages, desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum passages, desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
//                             key: bottomSheetKey,
//                           );
//                         },
//                       );
//                     },
//                   );