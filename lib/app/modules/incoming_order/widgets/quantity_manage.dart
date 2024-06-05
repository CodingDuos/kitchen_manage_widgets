import 'package:flutter/material.dart';

class ManageQuantityCommonWidget extends StatelessWidget {
  const ManageQuantityCommonWidget(
      {super.key,
      required this.qunatity,
      required this.onadd,
      required this.onremove});
  final String qunatity;
  final Function() onadd;
  final Function() onremove;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onremove,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xffFFF8ed),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Icon(Icons.remove, color: Colors.amber),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          qunatity,
          style: TextStyle(
              color: headingTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: onadd,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: primaryColor)),
            child: Center(
              child: Icon(Icons.add, color: whitecolor),
            ),
          ),
        ),
      ],
    );
  }
}

Color primarycolorBackground = const Color(0xff131313);
Color whitecolor = Colors.white;
Color primaryColor = const Color(0xffCC3333);
Color fOODColor = const Color(0xffFF9933);
Color secondaryColor = const Color(0xff271C09);
Color indexBackgroundColor = const Color(0xffFFFDF6);
Color headingTextColor = const Color(0xff2A435D);
