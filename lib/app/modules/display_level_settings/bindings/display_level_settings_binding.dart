import 'package:get/get.dart';

import '../controllers/display_level_settings_controller.dart';

class DisplayLevelSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisplayLevelSettingsController>(
      () => DisplayLevelSettingsController(),
    );
  }
}
