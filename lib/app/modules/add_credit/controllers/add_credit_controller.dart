import 'package:get/get.dart';

class AddCreditController extends GetxController {
  RxInt payedamount = 0.obs;
  RxInt selectedpaymentMethod = (-1).obs;

  List<bool> hoverlistOfPayButton =
      List.generate(18, (index) => false).toList();

  setallHoverFalse() {
    hoverlistOfPayButton = List.filled(18, false).toList();
    update();
  }

  selectpaymentmethod(int val) {
    selectedpaymentMethod.value = val;
    update();
  }

  sethover(int index, bool hovering) {
    hoverlistOfPayButton[index] = hovering;
    update();
  }

  setpayedamount(int val) {
    payedamount.value = val;
    update();
  }
}
