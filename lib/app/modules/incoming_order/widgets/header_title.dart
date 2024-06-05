import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.title, required this.trailing});
  final String title;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: ListTile(
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
        trailing: Text(trailing,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
      ),
    );
  }
}
