import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/display_level_settings_New/controllers/websettingsv1_controller.dart';
import 'package:kitchen/app/modules/display_level_settings_New/widgets/addproducts.dart';
import 'package:kitchen/app/modules/display_level_settings_New/widgets/cardscree.dart';

class ProductDragAndDropList extends GetView<Websettingsv1Controller> {
  final Websettingsv1Controller kitchenController = Get.find();
  ProductDragAndDropList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Text(
                'Products',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ],
          ),
        ),
        SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Cardwidget(
                indexgame: index,
                colors: Colors.green,
                listitems: kitchenController.itemlistqunatity[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MaterialButton(
          onPressed: () {
            Get.to(const AddProductsPageBackground());
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.green),
            height: 50,
            width: 200,
            child: const Center(
              child: Text(
                'Add Product',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
