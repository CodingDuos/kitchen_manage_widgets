import 'package:get/get.dart';

import '../controllers/incoming_order_controller.dart';

class IncomingOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IncomingOrderController>(
      () => IncomingOrderController(),
    );
  }
}
