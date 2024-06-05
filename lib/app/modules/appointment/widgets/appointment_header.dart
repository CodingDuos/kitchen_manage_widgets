import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';

import '../controllers/appointment_controller.dart';
import '../views/appointment_view.dart';

class AppointmentHeader extends StatelessWidget {
  const AppointmentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      final List<String> days = [
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday',
      ];

      return Container(
        decoration: allcontainerDecoration,
        child: Column(
          children: [
            Expanded(
                child: SizedBox(
              child: Center(
                child: Row(
                  children: [
                    padding20,
                    const Text(
                      'January, 2024',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
                    ),
                    padding10,
                    Container(
                      height: 42,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Mycolors.appColor,
                          ),
                          Text(
                            'Today',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    padding10,
                    Container(
                      height: 42,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Mycolors.appColor,
                          ),
                        ],
                      ),
                    ),
                    padding10,
                    Container(
                      height: 42,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Mycolors.appColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Mycolors.grey.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: ['All', 'Monthly', 'Weekly']
                            .map((e) => e == 'Monthly'
                                ? Expanded(
                                    child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Mycolors.appColor),
                                      child: Center(
                                        child: Text(
                                          e,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ))
                                : Expanded(
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ))
                            .toList(),
                      ),
                    ),
                    padding30
                  ],
                ),
              ),
            )),
            Expanded(
                child: SizedBox(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300)),
                    width: 100,
                    child: const Center(
                      child: Text(
                        'GMT+7',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [0, 1, 2, 3, 4, 5, 6]
                        .map((e) => Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (e + 10).toString(),
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: e == 4
                                            ? Mycolors.appColor
                                            : Colors.grey,
                                        fontWeight: e == 4
                                            ? FontWeight.bold
                                            : FontWeight.w400),
                                  ),
                                  Text(
                                    days[e],
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: e == 4
                                            ? Mycolors.appColor
                                            : Colors.grey,
                                        fontWeight: e == 4
                                            ? FontWeight.bold
                                            : FontWeight.w400),
                                  )
                                ],
                              ),
                            )))
                        .toList(),
                  ))
                ],
              ),
            ))
          ],
        ),
      );
    });
  }
}
