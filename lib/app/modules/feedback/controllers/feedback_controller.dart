import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedbackController extends GetxController {
  @override
  void onInit() {
    controllerText = TextEditingController();

    super.onInit();
  }

  Rx selectedmenu = 'Alphanumeric'.obs;
  TextEditingController? controllerText;
  RxBool isNumericMode = false.obs;

  setkeyboard(bool val) {
    isNumericMode.value = val;
  }

  GlobalKey globalKey = GlobalKey();
  setSelectedMenu(String value) {
    selectedmenu.value = value;

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
      items: ['Alphanumeric', 'Numeric']
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
          case 'Alphanumeric':
            setkeyboard(false);
            setSelectedMenu(value);
            break;
          case 'Numeric':
            setkeyboard(true);
            setSelectedMenu(value);
            break;
        }
        return value;
      } else {
        return null;
      }
    });
  }
}
