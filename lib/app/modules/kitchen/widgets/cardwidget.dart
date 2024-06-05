import 'package:flutter/material.dart';
import 'package:kitchen/app/commons/icon_button_widget.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';

class Cardwidget extends StatefulWidget {
  final String text;
  final Color textcolor;
  final int itemcount;
  final int index;
  const Cardwidget(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.index,
      required this.itemcount});

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  bool isexpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: isexpanded == false ? 75 : 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.textcolor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 6, right: 1, bottom: 1, top: 1),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Mycolors.whiteColor,
              ),
              child: ListView(
                children: [
                  ListTile(
                    trailing: Column(
                      children: [
                        Text('104',
                            style: TextStyle(
                                fontSize: 18, color: widget.textcolor)),
                        Text('Products',
                            style: TextStyle(
                                fontSize: 14, color: widget.textcolor))
                      ],
                    ),
                    subtitle: Text('Created At : 22 May 2023',
                        style:
                            TextStyle(fontSize: 18, color: widget.textcolor)),
                    title: Text('Moncy James ${widget.text}',
                        style:
                            TextStyle(fontSize: 18, color: widget.textcolor)),
                    leading: widget.index.isEven
                        ? null
                        : IconButtonWidget(
                            color: Mycolors.grey,
                            iconData: isexpanded == false
                                ? Icons.arrow_drop_down
                                : Icons.arrow_drop_up,
                            calllback: () {
                              setState(() {
                                isexpanded = !isexpanded;
                              });
                            },
                            size: 30),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Sub Category ${index + 1}',
                              style: TextStyle(
                                  fontSize: 18, color: widget.textcolor)),
                          leading: Icon(
                            Icons.circle_outlined,
                            color: widget.textcolor,
                          ),
                        );
                      })
                ],
              )),
        ),
      ),
    );
  }
}
