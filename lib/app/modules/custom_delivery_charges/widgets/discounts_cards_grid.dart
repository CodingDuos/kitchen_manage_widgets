import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/controllers/custom_delivery_charges_controller.dart';

class CustomDeliveryChargesCardGrid extends StatelessWidget {
  const CustomDeliveryChargesCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDeliveryChargesController>(
        init: CustomDeliveryChargesController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 18,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                      crossAxisCount: 3,
                      childAspectRatio: 2),
                  itemBuilder: (context, index) {
                    if (index == 17) {
                      return DiscountsCardWidget(
                          index: index,
                          widgeticon: const Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                          colors: const Color(0xff604BE8),
                          text: 'Add Charges',
                          textcolor: Colors.white);
                    }

                    return DiscountsCardWidget(
                        index: index,
                        colors: index == controller.selectedDiscount.value
                            ? const Color(0xff604BE8)
                            : const Color(0xffF3F7FF),
                        text: '€${index + 20}',
                        textcolor: index == controller.selectedDiscount.value
                            ? Colors.white
                            : Colors.grey);
                  }),
            ),
          );
        });
  }
}

class DiscountsCardWidget extends StatelessWidget {
  const DiscountsCardWidget(
      {super.key,
      required this.colors,
      required this.text,
      required this.index,
      this.widgeticon,
      required this.textcolor});
  final Color colors;
  final String text;

  final Color textcolor;
  final int index;
  final Icon? widgeticon;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDeliveryChargesController>(
        init: CustomDeliveryChargesController(),
        builder: (controller) {
          return MaterialButton(
            onPressed: () {
              controller.setselectedDiscount(index);
              controller.setdiscountVoucher(
                  'Custom Delivery Charges / Tax / Service Charges / Gratuity:  €${index + 20}');
            },
            child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: colors, borderRadius: BorderRadius.circular(12)),
                child: widgeticon == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                                color: textcolor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Delivery Charges',
                                style: TextStyle(
                                    color: textcolor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widgeticon!,
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            text,
                            style: TextStyle(
                                color: textcolor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
          );
        });
  }
}
