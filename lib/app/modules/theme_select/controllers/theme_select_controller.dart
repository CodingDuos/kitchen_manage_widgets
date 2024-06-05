import 'package:get/get.dart';

class ThemeSelectController extends GetxController {
  RxString selectedTab = 'Restaurant'.obs;

  RxString selectedTheme = ''.obs;

  setSelectedTab(String val) {
    selectedTab.value = val;
    update();
  }

  setSelectedTheme(String val) {
    selectedTheme.value = val;
    update();
  }
}
