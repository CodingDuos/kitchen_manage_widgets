import 'package:get/get.dart';
import 'package:kitchen/app/layoutassigned/controller/mainlayout_controller.dart';

class MainLayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainLayoutController>(
      () => MainLayoutController(),
    );
  }
}
