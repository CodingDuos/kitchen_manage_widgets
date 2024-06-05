import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/report/controllers/report_controller.dart';

class OtherSummary extends StatelessWidget {
  const OtherSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReportController>(builder: (controller) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Other Summary',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      );
    });
  }
}
