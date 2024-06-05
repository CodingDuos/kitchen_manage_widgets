import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/incoming_order_dialog.dart';

import '../controllers/incoming_order_controller.dart';

class IncomingOrderView extends GetView<IncomingOrderController> {
  const IncomingOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IncomingOrderView'),
          centerTitle: true,
        ),
        body: const IncomingOrderViewBody());
  }
}

class IncomingOrderViewBody extends StatefulWidget {
  const IncomingOrderViewBody({super.key});

  @override
  State<IncomingOrderViewBody> createState() => _IncomingOrderViewBodyState();
}

class _IncomingOrderViewBodyState extends State<IncomingOrderViewBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
          child: TextButton(
              onPressed: () {
                showAnimatedDialogModifers(context);
              },
              child: const Text('Open Order Dialog'))),
    );
  }
}

void showAnimatedDialogModifers(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const IncomingOrderDialog();
    },
  ).then((value) {});
}
