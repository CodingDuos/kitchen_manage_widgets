import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/report/widgets/checklist.dart';
import 'package:kitchen/app/modules/report/widgets/options_screen.dart';
import 'package:kitchen/app/modules/report/widgets/other_summary.dart';
import 'package:kitchen/app/modules/report/widgets/payment_summary.dart';
import 'package:kitchen/app/modules/report/widgets/stastics_screen.dart';
import 'package:kitchen/app/modules/report/widgets/terminal.dart';
import '../controllers/report_controller.dart';

class ReportView extends GetView<ReportController> {
  const ReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: ReportViewBody(),
        ));
  }
}

class ReportViewBody extends StatelessWidget {
  const ReportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReportController>(
        init: ReportController(),
        builder: (controller) {
          return Column(
            children: [
              Container(
                height: 75,
                color: Colors.white,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Report Manage',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 25, 63, 94),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              padding10,
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(flex: 2, child: OptionScreenPage()),
                    padding10,
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Expanded(flex: 4, child: TerminalScreenPage()),
                              padding10,
                              const Expanded(flex: 7, child: ChecklistPage()),
                            ],
                          ),
                        )),
                    padding10,
                    const Expanded(
                        flex: 6,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Expanded(flex: 2, child: StasticsScreenPage()),
                              padding10,
                              Expanded(flex: 4, child: PaymentSummary()),
                              padding10,
                              Expanded(flex: 4, child: OtherSummary()),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
