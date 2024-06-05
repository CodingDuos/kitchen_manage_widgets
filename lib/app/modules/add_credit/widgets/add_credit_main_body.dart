import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/add_credit/controllers/add_credit_controller.dart';
import 'package:kitchen/app/modules/add_credit/widgets/add_credit_cards_grid.dart';
import 'package:kitchen/app/modules/add_credit/widgets/add_credit_payment_method.dart';

class AddCreditMainBody extends StatelessWidget {
  const AddCreditMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(builder: (controller) {
      return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: controller.payedamount.value == 0
            ? const AddCreditCardGrid()
            : const AddCreditPaymentMethodView(),
      );
    });
  }
}
