import 'package:get/get.dart';

import '../controllers/custom_delivery_charges_controller.dart';

class CustomDeliveryChargesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomDeliveryChargesController>(
      () => CustomDeliveryChargesController(),
    );
  }
}
