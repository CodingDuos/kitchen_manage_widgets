import 'package:flutter/material.dart';
import 'package:kitchen/app/modules/discounts/widgets/discounts_calculator.dart';
import 'package:kitchen/app/modules/discounts/widgets/discounts_cards_grid.dart';

class DiscountsMainBody extends StatelessWidget {
  const DiscountsMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: DiscountsCardGrid()),
        Expanded(child: DiscountsCalculatorScreen())
      ],
    );
  }
}
