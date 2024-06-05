import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';

import '../controllers/add_credit_controller.dart';

class AddCreditHeaderWidget extends StatelessWidget {
  const AddCreditHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(
        init: AddCreditController(),
        builder: (controller) {
          var text = controller.payedamount.value == 0
              ? 'Select Credit Amount'
              : 'Select Payment Method';
          return Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Color(0xff604BE8),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 50),
              child: Row(
                children: [
                  controller.payedamount.value == 0
                      ? Container()
                      : IconButton(
                          onPressed: () {
                            controller.setpayedamount(0);
                            controller.selectpaymentmethod(-1);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          )),
                  padding15,
                  Text('Add Credit:  $text',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        });
  }
}
