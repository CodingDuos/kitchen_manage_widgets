import 'package:get/get.dart';

class Websettingsv1Controller extends GetxController {
  Rx<bool> isexpanded = false.obs;

  List<Itemslist> itemlistqunatity = List.generate(
          10,
          (index) =>
              Itemslist(name: 'category $index', products: [], subcategory: []))
      .toList()
      .obs;

  void changecolor() => isexpanded.value = !isexpanded.value;

  void additrm(int index, Itemslist data) {
    itemlistqunatity[index].subcategory.add(data);
    itemlistqunatity.remove(data);
    update();
  }
}

class Itemslist {
  String name;
  List products;
  List subcategory;

  Itemslist(
      {required this.name, required this.products, required this.subcategory});
}
