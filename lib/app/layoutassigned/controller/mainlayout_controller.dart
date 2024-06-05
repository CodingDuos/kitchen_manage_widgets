import 'package:get/get.dart';
import 'package:kitchen/app/routes/app_pages.dart';

class MainLayoutController extends GetxController {
  RxInt selectedMainInitialPage = (AppPages.routes.length - 1).obs;

  setMainselectedPage(int val) {
    selectedMainInitialPage.value = val;
    update();
  }
}
