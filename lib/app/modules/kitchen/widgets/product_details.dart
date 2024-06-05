import 'package:flutter/material.dart';
import 'package:kitchen/app/commons/material_button.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/styles_manager.dart';

textfieldwidget(String title) {
  return Expanded(
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: title,
              hintText: 'Enter $title',
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w400),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400] as Color),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400] as Color),
              )),
        )
      ],
    ),
  );
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Product Information',
            style: getBoldStyle(color: const Color(0xff2CCF8E), fontSize: 8),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: SizedBox(height: 220, child: Image.asset('images/pngegg.png')),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            'HP Victus 15 FA1093DX Core i5 13th Generation 8GB RAM 512GB SSD 6GB RTX 3050 Windows 11  ( 14 in Stocks )',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Text(
            '\$2,799.00',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Text(
            'The latest HP Victus 15 FA1093DX Core i5 13th Generation 8GB RAM 512GB SSD 6GB RTX 3050 Windows 11 price in Pakistan is 249,999 - PKR which was recently updated on December 2023.',
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w200, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: SizedBox(
              height: 80,
              child: Image.asset(
                'images/bar.png',
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Edit Information:',
            style: getBoldStyle(color: const Color(0xff2CCF8E), fontSize: 8),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [textfieldwidget('Edit Name')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [textfieldwidget('Upload Barcode')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [textfieldwidget('Edit Group')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              textfieldwidget('Stock'),
              const SizedBox(
                width: 10,
              ),
              textfieldwidget('Cost Price'),
              const SizedBox(
                width: 10,
              ),
              textfieldwidget('Sell Price')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButtonWidgetCommon(
                calllback: () {},
                text: 'Save',
                color: Mycolors.primarycolor,
                icon: Icons.save,
                height: 50,
                width: 200,
              )
            ],
          ),
        )
      ],
    );
  }
}
