import 'package:flutter/material.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/modules/kitchen/widgets/product_details.dart';
import 'package:kitchen/app/modules/kitchen/widgets/products.dart';
import 'package:kitchen/app/modules/kitchen/widgets/stats_card.dart';

import '../../../commons/divider_widget.dart';

class KitchenBodyPage extends StatelessWidget {
  const KitchenBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: StatsCardPage(
          itemcount: 13,
          text: 'Category',
          textcolor: Mycolors.grey,
        )),
        CommonDividerWidget(),
        Expanded(child: ProductsScreens()),
        CommonDividerWidget(),
        Expanded(child: ProductDetailsPage()),
      ],
    );
  }
}
