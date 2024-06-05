import 'package:flutter/material.dart';
import 'package:kitchen/app/commons/icon_button_widget.dart';
import 'package:kitchen/app/commons/material_button.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/constants/styles_manager.dart';

class HeaderPageScreen extends StatelessWidget {
  const HeaderPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return ListView(
      children: [
        padding20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(
              iconData: Icons.menu,
              calllback: () {},
              size: 30,
              color: Mycolors.whiteColor,
            ),
            Row(
              children: [
                IconButtonWidget(
                    color: Mycolors.whiteColor,
                    iconData: Icons.add_circle_outline,
                    calllback: () {},
                    size: 20),
                IconButtonWidget(
                    color: Mycolors.whiteColor,
                    iconData: Icons.how_to_reg_sharp,
                    calllback: () {},
                    size: 20),
                IconButtonWidget(
                    color: Mycolors.whiteColor,
                    iconData: Icons.notifications_active,
                    calllback: () {},
                    size: 20),
                MaterialButtonWidgetCommon(
                    textcolor: Mycolors.primarycolor,
                    icon: Icons.arrow_drop_down_circle_outlined,
                    text: 'English',
                    calllback: () {},
                    color: Mycolors.whiteColor,
                    height: screensize.height * 0.04,
                    width: screensize.width * 0.06),
              ],
            ),
          ],
        ),
        padding40,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Product List Display',
              style: getMediumStyle(color: Mycolors.whiteColor, fontSize: 8),
            ),
            MaterialButtonWidgetCommon(
                textcolor: Mycolors.primarycolor,
                icon: Icons.add,
                text: 'Add Category',
                calllback: () {},
                color: Mycolors.whiteColor,
                height: screensize.height * 0.05,
                width: screensize.width * 0.12),
          ],
        )
      ],
    );
  }
}
