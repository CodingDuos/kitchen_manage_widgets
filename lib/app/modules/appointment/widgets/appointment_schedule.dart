import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';

import '../controllers/appointment_controller.dart';
import '../views/appointment_view.dart';

class AppointmentSchedulaePage extends StatelessWidget {
  const AppointmentSchedulaePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      return Container(
        decoration: allcontainerDecoration,
        child: ListView(
          children: [
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 15),
                    child: Container(
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          padding10,
                          Center(
                            child: SizedBox(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'images/hair.png',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          padding10,
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Dauglas Schneider',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  padding10,
                                  Text(
                                    index.isEven
                                        ? '#Luxe Locks Lounge'
                                        : '#Hair Cut ',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Mycolors.appColor),
                                  ),
                                ],
                              ),
                              padding5,
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_history_rounded,
                                    color: Mycolors.appColor,
                                  ),
                                  padding5,
                                  Text(
                                    '615 Carter Roads Suite 286',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                ],
                              ),
                              padding5,
                              const Row(
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    color: Mycolors.appColor,
                                  ),
                                  padding5,
                                  Text(
                                    '10:00 AM - 10:30 AM / 14 January 2024',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Mycolors.appColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Center(
                                    child: Text(
                                      'View E-Receipt',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      );
    });
  }
}
