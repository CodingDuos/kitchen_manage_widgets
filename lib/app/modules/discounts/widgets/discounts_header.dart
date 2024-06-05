import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/discounts/controllers/discounts_controller.dart';

class DiscountsHeaderWidget extends StatelessWidget {
  const DiscountsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscountsController>(
        init: DiscountsController(),
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
                  const Text('Discounts',
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
