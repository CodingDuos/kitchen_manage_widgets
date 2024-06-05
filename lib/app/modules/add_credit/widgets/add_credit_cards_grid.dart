import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';

import '../controllers/add_credit_controller.dart';

class AddCreditCardGrid extends StatelessWidget {
  const AddCreditCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(
        init: AddCreditController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.hoverlistOfPayButton.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                      crossAxisCount: 5,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return AddCreditCardWidget(
                        index: index,
                        colors: const Color(0xff604BE8),
                        text: '${index + 10}',
                        textcolor: Colors.grey);
                  }),
            ),
          );
        });
  }
}

class AddCreditCardWidget extends StatelessWidget {
  const AddCreditCardWidget(
      {super.key,
      required this.colors,
      required this.text,
      required this.index,
      required this.textcolor});
  final Color colors;
  final String text;
  final Color textcolor;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(
        init: AddCreditController(),
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(
                color: const Color(0xffF3F7FF),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '€$text',
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                padding15,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovering) {
                      controller.sethover(index, hovering);
                    },
                    child: MaterialButton(
                      onPressed: () {
                        controller.setpayedamount(int.parse(text));
                        controller.setallHoverFalse();
                      },
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color:
                                controller.hoverlistOfPayButton[index] != true
                                    ? null
                                    : colors,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            'Pay',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: controller.hoverlistOfPayButton[index] !=
                                        true
                                    ? Colors.grey.shade400
                                    : Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
