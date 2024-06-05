import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/modules/appointment/widgets/appointment_body.dart';
import 'package:kitchen/app/modules/appointment/widgets/appoitment_drawer.dart';

import '../../../constants/padding.dart';
import '../controllers/appointment_controller.dart';

class AppointmentView extends GetView<AppointmentController> {
  const AppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: AppointmentViewBody(),
        ));
  }
}

class AppointmentViewBody extends StatelessWidget {
  const AppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(
        init: AppointmentController(),
        builder: (controller) {
          return const Row(
            children: [
              Expanded(flex: 3, child: AppointmentDrawerSideScreen()),
              padding10,
              Expanded(flex: 12, child: AppointmentBody()),
            ],
          );
        });
  }
}

BoxDecoration allcontainerDecoration =
    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20));
