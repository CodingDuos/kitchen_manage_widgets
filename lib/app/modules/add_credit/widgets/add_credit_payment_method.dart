import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/add_credit/controllers/add_credit_controller.dart';

class AddCreditPaymentMethodView extends StatelessWidget {
  const AddCreditPaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(builder: (controller) {
      return SizedBox(
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return PaymentCardWidget(
                index: index,
              );
            }),
      );
    });
  }
}

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCreditController>(builder: (controller) {
      var imagename = index.isEven ? 'images/atm.png' : 'images/easypaisa.png';
      var paymentname = index.isEven ? 'Debit Or Credit Card' : 'Easy Paisa';
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            controller.selectpaymentmethod(index);
          },
          child: Container(
            decoration: BoxDecoration(
                border: controller.selectedpaymentMethod.value == index
                    ? Border.all(color: const Color(0xff604BE8), width: 2)
                    : null,
                color: const Color(0xffF3F7FF),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(imagename),
                    )),
                Expanded(
                    flex: 3,
                    child: Text(
                      paymentname,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
