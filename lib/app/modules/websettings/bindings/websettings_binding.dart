import 'package:get/get.dart';

import '../controllers/websettings_controller.dart';

class WebsettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebsettingsController>(
      () => WebsettingsController(),
    );
  }
}
