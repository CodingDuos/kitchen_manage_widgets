import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/discounts/widgets/discounts_bottom.dart';
import 'package:kitchen/app/modules/discounts/widgets/discounts_header.dart';
import '../controllers/discounts_controller.dart';
import '../widgets/discounts_main_body.dart';

class DiscountsView extends GetView<DiscountsController> {
  const DiscountsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200, body: const DiscountsViewBody());
  }
}

class DiscountsViewBody extends StatelessWidget {
  const DiscountsViewBody({super.key});

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
            DiscountsHeaderWidget(),
            Expanded(child: DiscountsMainBody()),
            DiscountsBottomWidget(),
          ],
        ),
      ),
    );
  }
}
