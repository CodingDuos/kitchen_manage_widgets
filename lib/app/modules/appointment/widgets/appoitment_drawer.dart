import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/appointment/controllers/appointment_controller.dart';

import '../views/appointment_view.dart';
import 'dialog.dart';

class AppointmentDrawerSideScreen extends StatelessWidget {
  const AppointmentDrawerSideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      List namelist = [
        'Total Appointment',
        'Today Appointment',
        'Cancelled Appointment',
        'Copmleted Appointment'
      ];
      return Container(
        decoration: allcontainerDecoration,
        child: Column(
          children: [
            padding12,
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  const Text('January 2024'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.builder(
                  itemCount: 31,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.setselectedDate(index);
                      },
                      child: AnimatedContainer(
                        width: 100,
                        duration: const Duration(seconds: 1),
                        decoration: index == controller.selectedDate.value
                            ? const BoxDecoration(
                                color: Mycolors.appColor,
                                shape: BoxShape.circle)
                            : null,
                        child: Center(
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: index == controller.selectedDate.value
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  ServicesAnimatedDialogClass.showCustomDialog(context);
                },
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Mycolors.appColor),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Add New Appointment',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Mycolors.appColor.withOpacity(0.20)),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: Mycolors.appColor,
                      ),
                      padding10,
                      Text(
                        'Point Of Sell',
                        style: TextStyle(
                            color: Mycolors.appColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [0, 1, 2, 3]
                  .map((e) => Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade400)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.stacked_bar_chart,
                                      size: 30,
                                      color: Mycolors.appColor,
                                    ),
                                    Text(
                                      namelist[e],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '321769',
                                      style: TextStyle(
                                          color: Mycolors.appColor,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )))
                  .toList(),
            ))
          ],
        ),
      );
    });
  }
}
