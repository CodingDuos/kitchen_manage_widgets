import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDeliveryChargesController extends GetxController {
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

  showPopupMenu(BuildContext context) async {
    final RenderBox renderBox =
        globalKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    return await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          position.dx, position.dy, position.dx, position.dy),
      items: ['Fixed Amount', 'Percantage']
          .map(
            (e) => PopupMenuItem(
              height: 120,
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
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
