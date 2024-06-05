import 'package:get/get.dart';

import '../controllers/add_credit_controller.dart';

class AddCreditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCreditController>(
      () => AddCreditController(),
    );
  }
}
