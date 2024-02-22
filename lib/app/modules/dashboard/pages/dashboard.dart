import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_app/app/modules/dashboard/controllers/dashboard_controller.dart';

class Dashboard extends GetView<DashboardController> {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(
          'dashboard',
        ),
      ),
    );
  }
}
