import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/controllers/custom_delivery_charges_controller.dart';

class CustomChargesHeaderWidget extends StatelessWidget {
  const CustomChargesHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDeliveryChargesController>(
        init: CustomDeliveryChargesController(),
        builder: (controller) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'Custom Delivery Charges / Tax / Service Charges / Gratuity',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Container(
                    key: controller.globalKey,
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: GestureDetector(
                      onTap: () {
                        controller.showPopupMenu(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.selectedmenu.value.toString(),
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
