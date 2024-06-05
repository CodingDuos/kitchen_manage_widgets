import 'package:flutter/material.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/styles_manager.dart';

class ProductsScreens extends StatelessWidget {
  const ProductsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Products',
            style: getBoldStyle(color: const Color(0xffFBAD4C), fontSize: 8),
          ),
        ),
        SizedBox(
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 5,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Mycolors.grey.withOpacity(0.15),
                    ),
                    height: 100,
                    width: 100,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Image.asset('images/pngegg.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'Apple : 2021 Apple 16-inch Macbook Pro',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 15),
                          child: Text(
                            '\$2,799.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
