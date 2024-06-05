import 'package:flutter/material.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/widgets/discounts_calculator.dart';
import 'package:kitchen/app/modules/custom_delivery_charges/widgets/discounts_cards_grid.dart';

class CustomDeliveryChargesMainBody extends StatelessWidget {
  const CustomDeliveryChargesMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomDeliveryChargesCardGrid()),
        Expanded(child: CustomDeliveryChargesCalculatorScreen())
      ],
    );
  }
}
