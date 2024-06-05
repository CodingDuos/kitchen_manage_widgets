import 'package:get/get.dart';

import '../controllers/theme_select_controller.dart';

class ThemeSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeSelectController>(
      () => ThemeSelectController(),
    );
  }
}
