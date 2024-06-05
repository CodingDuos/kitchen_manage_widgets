import 'package:flutter/widgets.dart';

class HeadingTextWidgets extends StatelessWidget {
  const HeadingTextWidgets(
      {super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color),
    );
  }
}
