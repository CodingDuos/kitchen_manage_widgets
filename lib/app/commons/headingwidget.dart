import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  const HeadingTextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.fontsize,
      required this.fontWeight});

  final String text;

  final double fontsize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Aeric',
      ),
    );
  }
}
