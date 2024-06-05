import 'package:flutter/material.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';

import 'package:kitchen/app/modules/promotion/widgets/buttonwidget.dart';
import 'package:kitchen/app/modules/promotion/widgets/heading_text.dart';
import 'package:kitchen/app/modules/promotion/widgets/selectproducts.dart';

class AnimatedDialogClass {
  static Future showCustomDialog(BuildContext context) async {
    double widthofdialog = MediaQuery.of(context).size.width / 1.5;
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Center(
            child: Material(
              color: Colors.transparent,
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(seconds: 1),
                builder: (BuildContext context, double value, Widget? child) {
                  double dialogHeight =
                      MediaQuery.of(context).size.height * 0.90;
                  final double translateY = value * -30;
                  return Transform.translate(
                    offset: Offset(0, translateY),
                    child: Opacity(
                      opacity: value,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: widthofdialog,
                          height: dialogHeight,
                          child: const Form(
                            child: SingleChildScrollView(child: FormWidget()),
                          )),
                    ),
                  );
                },
              ),
            ),
          );
        });
      },
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    const Color dialogmaincolor = Color.fromARGB(255, 2, 66, 60);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          children: [
            HeadingTextWidgets(
              text: 'Mix & Match Promotion',
              color: dialogmaincolor,
            )
          ],
        ),
        padding20,
        Row(
          children: [
            textfieldwidget('Promotion Name', 7),
            padding40,
            dropdowntextfield(3, 'Promotion Type')
          ],
        ),
        padding20,
        const Row(
          children: [
            HeadingTextWidgets(
              text: 'Promotion Details',
              color: dialogmaincolor,
            )
          ],
        ),
        padding10,
        Container(
          height: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, top: 20),
            child: Row(
              children: [
                padding10,
                textfieldwidget('Product Qunatity', 3),
                padding10,
                const Text(
                  'For',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                padding10,
                textfieldwidget('Vat Add Price', 2),
                padding10,
                textfieldwidget('Valid Till', 3),
              ],
            ),
          ),
        ),
        padding10,
        const Row(
          children: [
            HeadingTextWidgets(
              text: 'Rules & Exception',
              color: dialogmaincolor,
            )
          ],
        ),
        padding10,
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    padding20,
                    const Text(
                        'Valid For All customers of HSE Techno and 6 others'),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    padding20,
                    const Text('Prime Time Only'),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            dropdowntextfield(3, 'Service Type')
          ],
        ),
        padding10,
        Container(
          height: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, top: 20),
            child: Row(
              children: [
                dropdowntextfield(5, 'Specific Days'),
                padding10,
                textfieldwidget('minuim Amount', 2),
                padding10,
                textfieldwidget('Started Date', 3),
                padding10,
                textfieldwidget('Select Sites', 2),
                padding10,
                textfieldwidget('Promo Code', 3),
              ],
            ),
          ),
        ),
        padding20,
        const Row(
          children: [
            HeadingTextWidgets(
              text: 'Select Products',
              color: dialogmaincolor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                width: 400, child: dropdowntextfield(10, 'Select Products'))
          ],
        ),
        padding10,
        const SelectProductsWidget(),
        padding10,
        const Divider(),
        padding10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButtonWidget(
              ontap: () {},
              text: 'Cancel',
            ),
            MaterialButtonWidget(
              ontap: () {},
              text: 'Save',
              color: Mycolors.primarycolor,
            ),
          ],
        ),
      ],
    );
  }
}

textfieldwidget(String title, int flex) {
  return Expanded(
    flex: flex,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Enter $title',
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w400),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              )),
        )
      ],
    ),
  );
}

dropdowntextfield(int flex, hinttext) {
  return Expanded(
    flex: flex,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Type',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: 58,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                padding20,
                Text(hinttext,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17)),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
