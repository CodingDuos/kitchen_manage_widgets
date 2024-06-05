import 'package:get/get.dart';

import '../controllers/foodhub_controller.dart';

class FoodhubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodhubController>(
      () => FoodhubController(),
    );
  }
}
