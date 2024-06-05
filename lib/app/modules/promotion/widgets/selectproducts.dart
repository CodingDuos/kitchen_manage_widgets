import 'package:flutter/material.dart';

class SelectProductsWidget extends StatelessWidget {
  const SelectProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 2,
      ),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 150.0,
          height: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('Coca Cola',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.grey,
                      ))
                ],
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: Image.asset(
                  'images/bar.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
