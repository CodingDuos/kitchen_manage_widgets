import 'package:flutter/material.dart';

class ActionButtonOrder extends StatelessWidget {
  const ActionButtonOrder(
      {super.key,
      required this.name,
      required this.colors,
      required this.width,
      required this.textColors});
  final String name;
  final Color colors;
  final Color textColors;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colors),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: textColors, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
