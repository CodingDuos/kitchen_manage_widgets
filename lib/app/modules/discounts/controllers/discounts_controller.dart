import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscountsController extends GetxController {
  Rx userInput = ''.obs;
  Rx selectedDiscountValue = ''.obs;
  Rx selectedmenu = 'Fixed Amount'.obs;
  GlobalKey globalKey = GlobalKey();
  RxInt selectedDiscount = 1.obs;

  setSelectedMenu(String value) {
    selectedmenu.value = value;
    update();
  }

  setdiscountVoucher(String value) {
    selectedDiscountValue.value = value;
    update();
  }

  setuserinput(String? buttonText) {
    userInput.value += buttonText!;
    update();
  }

  clearuserinput() {
    userInput.value = '';
    update();
  }

  setselectedDiscount(int? discount) {
    selectedDiscount.value = discount!;
    update();
  }

  showPopupMenu(BuildContext context) {
    final RenderBox renderBox =
        globalKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          position.dx, position.dy, position.dx, position.dy),
      items: <PopupMenuEntry>[
        const PopupMenuItem(
          height: 120,
          value: 'Fixed Amount',
          child: Text('Fixed Amount'),
        ),
        const PopupMenuItem(
          height: 120,
          value: 'Percantage',
          child: Text('Percantage'),
        ),
      ],
    ).then((value) async {
      if (value != null) {
        switch (value) {
          case 'Fixed Amount':
            setSelectedMenu(value);
            break;
          case 'Percantage':
            setSelectedMenu(value);
            break;
        }
        return value;
      } else {
        return null;
      }
    });
  }

  final count = 0.obs;

  void increment() => count.value++;
}
