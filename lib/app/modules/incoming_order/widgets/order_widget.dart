import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kitchen/app/modules/incoming_order/widgets/quantity_manage.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(20),
          dashPattern: const [10, 10],
          color: Colors.grey,
          strokeWidth: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ListTile(
              leading: Image.asset('images/hair.png'),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Maxhar Hse Developer',
                      style: TextStyle(fontSize: 15)),
                  Row(
                    children: [
                      Text(
                        '5',
                        style: TextStyle(color: headingTextColor, fontSize: 35),
                      ),
                      Text(
                        ' x £62.90',
                        style: TextStyle(color: headingTextColor, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
