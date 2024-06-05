import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/widgets/discounts_bottom.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/widgets/discounts_header.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/widgets/discounts_main_body.dart';

import '../controllers/custom_delivery_charges_controller.dart';

class CustomDeliveryChargesView
    extends GetView<CustomDeliveryChargesController> {
  const CustomDeliveryChargesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: const CustomDeliveryChargesBody());
  }
}

class CustomDeliveryChargesBody extends StatelessWidget {
  const CustomDeliveryChargesBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: screensize.width * 0.50,
        height: screensize.height * 0.70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: const Column(
          children: [
            CustomChargesHeaderWidget(),
            Expanded(child: CustomDeliveryChargesMainBody()),
            CustomDeliveryChargesBottomWidget(),
          ],
        ),
      ),
    );
  }
}
