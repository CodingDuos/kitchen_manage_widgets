import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget(
      {super.key,
      required this.ontap,
      this.color = Colors.white,
      required this.text});
  final Function ontap;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          ontap();
        },
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(text),
          ),
        ));
  }
}
