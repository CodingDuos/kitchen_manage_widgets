import 'package:get/get.dart';

class KitchenController extends GetxController {
  var count = 0.obs;
  Rx<bool> isDark = false.obs;

  void changecolor() => isDark.value = !isDark.value;
  void decrement() => count--;
  void increment() => count++;
}
