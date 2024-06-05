import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/discounts_controller.dart';

class DiscountsBottomWidget extends StatelessWidget {
  const DiscountsBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscountsController>(
        init: DiscountsController(),
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
                  controller.selectedDiscountValue.value == ''
                      ? Container()
                      : Text(
                          '${controller.selectedDiscountValue.value}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                  Row(
                    children: [
                      DiscountsMaterialButtons(
                        callback: () {},
                        text: 'Cancel',
                        textcolor: Colors.grey,
                        buttoncolor: Colors.white,
                      ),
                      DiscountsMaterialButtons(
                        callback: () {},
                        text: 'Save',
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

class DiscountsMaterialButtons extends StatelessWidget {
  const DiscountsMaterialButtons(
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
