import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/routes/app_pages.dart';
import 'package:kitchen/app/layoutassigned/controller/mainlayout_controller.dart';
import 'package:kitchen/app/layoutassigned/widgets/maindrawer.dart';

class MainLayOutPagesScreens extends StatelessWidget {
  const MainLayOutPagesScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainLayoutController>(builder: (controller) {
      return Scaffold(
        body: Row(
          children: [
            Container(
                width: 300,
                color: Colors.white,
                child: const MainLayoutDrawer()),
            Expanded(
                child: AppPages.routes[controller.selectedMainInitialPage.value]
                    .page())
          ],
        ),
      );
    });
  }
}
