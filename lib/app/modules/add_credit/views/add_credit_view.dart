import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/add_credit/widgets/add_credit_bottom.dart';
import 'package:kitchen/app/modules/add_credit/widgets/add_credit_header.dart';

import '../controllers/add_credit_controller.dart';
import '../widgets/add_credit_main_body.dart';

class AddCreditView extends GetView<AddCreditController> {
  const AddCreditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200, body: const AddCreditViewBody());
  }
}

class AddCreditViewBody extends StatelessWidget {
  const AddCreditViewBody({super.key});

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
            AddCreditHeaderWidget(),
            Expanded(child: AddCreditMainBody()),
            AddCreditBottomWidget(),
          ],
        ),
      ),
    );
  }
}
