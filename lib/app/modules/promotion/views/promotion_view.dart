import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/modules/promotion/widgets/dialog.dart';

import '../controllers/promotion_controller.dart';

class PromotionView extends GetView<PromotionController> {
  const PromotionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PromotionView'),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          AnimatedDialogClass.showCustomDialog(context);
        },
        child: const Text(
          'Show Promotion Dialog',
          style: TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}
