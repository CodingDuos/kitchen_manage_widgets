import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/constants/styles_manager.dart';
import 'package:kitchen/app/modules/kitchen/widgets/header.dart';

import '../controllers/kitchen_controller.dart';
import '../widgets/body.dart';

class HomePageKitchen extends StatelessWidget {
  const HomePageKitchen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
            flex: 8,
            child: Column(
              children: [
                SizedBox(
                  height: screensize.height * 0.2,
                  child: const HeaderPageScreen(),
                ),
                Expanded(
                    child: Container(
                  decoration: containerdecoration,
                  child: const KitchenBodyPage(),
                ))
              ],
            )),
      ],
    );
  }
}

class KitchenView extends GetView<KitchenController> {
  final KitchenController kitchenController = Get.find();
  KitchenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: primareyColorScreenFlex,
                  child: Container(color: Mycolors.primarycolor)),
              Expanded(flex: whiteScreemFlex, child: Container()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(mainpadding),
            child: SizedBox(
              height: screensize.height,
              width: screensize.width,
              child: const HomePageKitchen(),
            ),
          )
        ],
      ),
    );
  }
}
