import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/routes/app_pages.dart';
import 'package:kitchen/app/layoutassigned/controller/mainlayout_controller.dart';

class MainLayoutDrawer extends StatelessWidget {
  const MainLayoutDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainLayoutController>(
        init: MainLayoutController(),
        builder: (controller) {
          return Column(
            children: [
              padding30,
              const Text(
                'All Widgets',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                  itemCount: AppPages.routes.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var data = AppPages.routes[index].name.substring(1);
                    bool isselected =
                        index == controller.selectedMainInitialPage.value;
                    if (index == 0) {
                      return Container();
                    }
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: GestureDetector(
                        onTap: () {
                          controller.setMainselectedPage(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  isselected ? BorderRadius.circular(12) : null,
                              color: isselected ? Colors.blue : null),
                          height: 50,
                          child: Center(
                            child: Row(
                              children: [
                                padding10,
                                Icon(
                                  Icons.dashboard,
                                  color: isselected
                                      ? Colors.white
                                      : const Color(0xffB9B7C2),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  data,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: isselected
                                        ? Colors.white
                                        : const Color(0xffB9B7C2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              Expanded(child: Container()),
            ],
          );
        });
  }
}
