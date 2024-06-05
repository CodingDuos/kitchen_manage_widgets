import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/report/controllers/report_controller.dart';

class OptionScreenPage extends StatelessWidget {
  const OptionScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReportController>(builder: (controller) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Overview',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            SizedBox(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.optionsTitleslist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    bool isselected = controller.selectedoption.value == index;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.setselectedoption(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: !isselected
                                  ? Colors.white
                                  : const Color.fromARGB(255, 25, 63, 94),
                              borderRadius: isselected
                                  ? BorderRadius.circular(12)
                                  : null),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                controller.optionsTitleslistIcons[index],
                                size: 50,
                                color: isselected ? Colors.white : Colors.grey,
                              ),
                              padding10,
                              Text(
                                controller.optionsTitleslist[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: isselected
                                        ? Colors.white
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      );
    });
  }
}
