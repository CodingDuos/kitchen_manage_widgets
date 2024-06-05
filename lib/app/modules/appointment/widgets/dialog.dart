import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/appointment/controllers/appointment_controller.dart';

class ServicesAnimatedDialogClass {
  static Future showCustomDialog(BuildContext context) {
    return showDialog(
        context: context,
        // barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Center(
              child: Material(
                color: Colors.transparent,
                child: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(seconds: 1),
                  builder: (BuildContext context, double value, Widget? child) {
                    const double dialogHeight = 900.0;
                    final double translateY = value * -50;
                    return Transform.translate(
                      offset: Offset(0, translateY),
                      child: Opacity(
                        opacity: value,
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            width: MediaQuery.of(context).size.width / 2,
                            height: dialogHeight,
                            child: const Form(child: DialogBody())),
                      ),
                    );
                  },
                ),
              ),
            );
          });
        });
  }
}

class DialogBody extends StatelessWidget {
  const DialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(builder: (controller) {
      return ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Schedule New Appointment',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Mycolors.appColor),
              ),
            ],
          ),
          Text(
            'Enter the following informations to schedule a new appointment and Select The Following time of the day of ${controller.selectedDate.value + 1} January 2025',
            style: const TextStyle(color: Mycolors.grey),
          ),
          padding10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const CircleAvatar(
                    //   radius: 80,
                    // ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Service Type',
                          hintText: 'Enter',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          )),
                    ),
                    padding10,
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Customer Name',
                          hintText: 'Enter',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          )),
                    ),
                    padding10,
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Customer Contact',
                          hintText: 'Enter',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          )),
                    ),
                    padding10,
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Customer Email',
                          hintText: 'Enter',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          )),
                    ),
                    padding10,
                    TextField(
                      maxLines: 2,
                      minLines: 2,
                      decoration: InputDecoration(
                          labelText: 'Customer Address',
                          hintText: 'Enter',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          )),
                    ),
                    padding10,
                    TextField(
                      maxLines: 5,
                      minLines: 5,
                      decoration: InputDecoration(
                          labelText: 'QA Schedule',
                          hintText: 'Enter',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400] as Color),
                          )),
                    ),
                    padding10,
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),
                      child: const Center(
                        child: Text('Select Profile Picture'),
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: index == 4
                                    ? Mycolors.appColor
                                    : Mycolors.appColor.withOpacity(0.20),
                                borderRadius: BorderRadius.circular(12)),
                            height: 75,
                            child: Center(
                              child: ListTile(
                                title: Text(
                                  '9:00 AM - 9:30 AM',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: index == 4
                                        ? Colors.white
                                        : Mycolors.appColor,
                                  ),
                                ),
                                leading: Icon(
                                  Icons.watch_later,
                                  size: 30,
                                  color: index == 4
                                      ? Colors.white
                                      : Mycolors.appColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                  padding15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Mycolors.appColor),
                          child: const Center(
                            child: Text(
                              'Save',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ],
      );
    });
  }
}
