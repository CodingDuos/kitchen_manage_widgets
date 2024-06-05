import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/report/controllers/report_controller.dart';

class ChecklistPage extends StatelessWidget {
  const ChecklistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReportController>(builder: (controller) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'CheckList',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListView.builder(
                itemCount: 9,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Checkbox(
                      value: false,
                      onChanged: (v) {},
                    ),
                    title: const Text('Employee Status'),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 25, 63, 94),
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Close a Day (Z Report)',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
