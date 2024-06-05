import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/display_level_settings_New/views/websettingsv1_view.dart';
import '../controllers/websettingsv1_controller.dart';

class AddProductsPageBackground extends GetView<Websettingsv1Controller> {
  const AddProductsPageBackground({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: Container(
                  color: Mycolors.primarycolor,
                )),
                Expanded(
                    child: Container(
                  color: Mycolors.whiteColor,
                )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100, right: 100, left: 100),
              child: SizedBox(
                child: AddProductPageView(),
              ),
            )
          ],
        ));
  }
}

class AddProductPageView extends StatefulWidget {
  const AddProductPageView({super.key});

  @override
  State<AddProductPageView> createState() => _AddProductPageViewState();
}

class _AddProductPageViewState extends State<AddProductPageView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Mycolors.white, borderRadius: BorderRadius.circular(30)),
          child: DragAndDropList(
            itemlenght: 4,
            colors: Colors.grey,
            text: 'Location Categories',
          ),
        )),
        padding20,
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Mycolors.white, borderRadius: BorderRadius.circular(30)),
          child: DragAndDropList(
            itemlenght: 6,
            colors: Colors.grey,
            text: 'Location Products',
          ),
        )),
        padding20,
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Mycolors.white, borderRadius: BorderRadius.circular(30)),
          child: DragAndDropList(
            itemlenght: 6,
            colors: Colors.grey,
            text: 'Selected Products',
          ),
        )),
      ],
    );
  }
}
