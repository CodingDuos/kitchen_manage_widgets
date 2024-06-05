import 'package:flutter/material.dart';

class CustomerInformation extends StatelessWidget {
  const CustomerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(),
      title: Text('Maxhar Hse Developer', style: TextStyle(fontSize: 17)),
    );
  }
}
