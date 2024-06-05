import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_credit_controller.dart';

class AddCreditBottomWidget extends StatelessWidget {
  const AddCreditBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(
        init: AddCreditController(),
        builder: (controller) {
          return Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Color(0xffC3CDE4),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  controller.payedamount.value == 0
                      ? Container()
                      : Text(
                          'Amount : €${controller.payedamount.value}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                  Row(
                    children: [
                      AddCreditMaterialButtons(
                        callback: () {},
                        text: 'Cancel',
                        textcolor: Colors.grey,
                        buttoncolor: Colors.white,
                      ),
                      controller.selectedpaymentMethod.value < 0
                          ? Container()
                          : AddCreditMaterialButtons(
                              callback: () {},
                              text: 'Pay',
                              textcolor: Colors.white,
                              buttoncolor: const Color(0xff604BE8),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class AddCreditMaterialButtons extends StatelessWidget {
  const AddCreditMaterialButtons(
      {super.key,
      required this.text,
      required this.callback,
      required this.textcolor,
      required this.buttoncolor});
  final String text;
  final Color textcolor;
  final Color buttoncolor;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: callback(),
      child: Container(
        decoration: BoxDecoration(
            color: buttoncolor, borderRadius: BorderRadius.circular(8)),
        height: 40,
        width: 120,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
        ),
      ),
    );
  }
}
