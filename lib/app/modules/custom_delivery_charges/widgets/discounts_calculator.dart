import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/controllers/custom_delivery_charges_controller.dart';

class CustomDeliveryChargesCalculatorScreen extends StatelessWidget {
  const CustomDeliveryChargesCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDeliveryChargesController>(
        init: CustomDeliveryChargesController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.userInput.value,
                          style: const TextStyle(fontSize: 24),
                        ),
                        IconButton(
                            onPressed: () {
                              controller.clearuserinput();
                            },
                            icon: const Icon(Icons.clear_sharp))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '1')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '2')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '3')),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '4')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '5')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '6')),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '7')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '8')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '9')),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '.')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '0')),
                    Expanded(child: BuildKeypadButtonWidget(buttonText: '00')),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    controller.setselectedDiscount(0);
                    controller.setdiscountVoucher(
                        'Custom Delivery Charges / Tax / Service Charges / Gratuity:  €${controller.userInput.value}');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff604BE8),
                        borderRadius: BorderRadius.circular(12)),
                    height: 60,
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
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

class BuildKeypadButtonWidget extends StatelessWidget {
  const BuildKeypadButtonWidget({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDeliveryChargesController>(builder: (controller) {
      return Padding(
          padding: const EdgeInsets.all(0.0),
          child: MaterialButton(
            onPressed: () => controller.setuserinput(buttonText),
            child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xffF3F7FF),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: Color(0xff604BE8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ));
    });
  }
}
