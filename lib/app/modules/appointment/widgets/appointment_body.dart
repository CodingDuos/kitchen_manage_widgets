import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/appointment/widgets/appointment_header.dart';
import 'package:kitchen/app/modules/appointment/widgets/appointment_schedule.dart';

import '../controllers/appointment_controller.dart';
import 'appointment_information.dart';

class AppointmentBody extends StatelessWidget {
  const AppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      return const Column(
        children: [
          Expanded(flex: 2, child: AppointmentHeader()),
          padding10,
          Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(flex: 6, child: AppointmentSchedulaePage()),
                  padding10,
                  Expanded(flex: 4, child: AppointmenrInformationPage())
                ],
              ))
        ],
      );
    });
  }
}
