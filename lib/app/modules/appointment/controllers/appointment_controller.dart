import 'package:get/get.dart';

class AppointmentController extends GetxController {
  final count = 0.obs;

  RxInt selectedDate = 0.obs;

  setselectedDate(int val) {
    selectedDate.value = val;
    update();
  }

  void increment() => count.value++;
}
