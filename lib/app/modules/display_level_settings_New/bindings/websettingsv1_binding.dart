import 'package:get/get.dart';

import '../controllers/websettingsv1_controller.dart';

class Websettingsv1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Websettingsv1Controller>(
      () => Websettingsv1Controller(),
    );
  }
}
