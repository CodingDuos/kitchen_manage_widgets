import 'package:flutter/material.dart';
import 'package:kitchen/app/constants/styles_manager.dart';
import 'package:kitchen/app/modules/kitchen/widgets/cardwidget.dart';

class StatsCardPage extends StatelessWidget {
  final String text;
  final Color textcolor;
  final int itemcount;
  const StatsCardPage(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.itemcount});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            text,
            style: getBoldStyle(color: textcolor, fontSize: 8),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: itemcount,
            itemBuilder: (context, index) {
              return Cardwidget(
                  index: index,
                  text: text,
                  textcolor: textcolor,
                  itemcount: itemcount);
            })
      ],
    );
  }
}
