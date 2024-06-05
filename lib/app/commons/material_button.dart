import 'package:flutter/material.dart';

class MaterialButtonWidgetCommon extends StatelessWidget {
  const MaterialButtonWidgetCommon(
      {super.key,
      required this.text,
      required this.calllback,
      required this.color,
      required this.icon,
      required this.height,
      this.textcolor = Colors.white,
      required this.width});
  final double width;
  final String text;
  final Function calllback;
  final IconData icon;
  final Color color;
  final double height;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: calllback(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: textcolor, size: 30),
            Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textcolor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
