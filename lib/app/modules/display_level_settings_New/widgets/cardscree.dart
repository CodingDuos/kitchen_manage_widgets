import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/display_level_settings_New/controllers/websettingsv1_controller.dart';

class Cardwidget extends GetView<Websettingsv1Controller> {
  final Websettingsv1Controller kitchenController = Get.find();
  Cardwidget(
      {Key? key,
      required this.indexgame,
      required this.listitems,
      required this.colors})
      : super(key: key);
  final int indexgame;
  final Itemslist listitems;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colors),
        child: Padding(
          padding: const EdgeInsets.only(left: 6, right: 1, bottom: 1, top: 1),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: ListView(
                children: [
                  padding10,
                  ListTile(
                    trailing: Switch(
                      activeColor: colors,
                      value: true,
                      onChanged: (value) async {},
                    ),
                    title: Text('Moncy James${listitems.name}'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amber),
      width: 300,
      height: 50,
      child: const Center(
        child: Text('hello pakistan'),
      ),
    );
  }
}
