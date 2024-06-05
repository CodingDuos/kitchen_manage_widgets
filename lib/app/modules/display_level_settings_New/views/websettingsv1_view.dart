import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/display_level_settings_New/widgets/cardscree.dart';
import 'package:kitchen/app/modules/display_level_settings_New/widgets/productcard.dart';

import '../controllers/websettingsv1_controller.dart';

class Websettingsv1View extends GetView<Websettingsv1Controller> {
  const Websettingsv1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Expanded(
                child: Container(
              color: Mycolors.primarycolor,
            )),
            Expanded(
                child: Container(
              color: Mycolors.whiteColor,
            )),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 100, right: 100, left: 100),
          child: SizedBox(
            child: WebsettingsVersion1(),
          ),
        )
      ],
    ));
  }
}

class WebsettingsVersion1 extends StatefulWidget {
  const WebsettingsVersion1({super.key});

  @override
  State<WebsettingsVersion1> createState() => _WebsettingsVersion1State();
}

class _WebsettingsVersion1State extends State<WebsettingsVersion1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: Row(
                        children: [
                          Text(
                            'Display Level Settings',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: index == 4
                                            ? const Color(0xff4F74A3)
                                            : Colors.grey[300] as Color)),
                                child: ListTile(
                                  trailing: Switch(
                                    focusColor: const Color(0xff4F74A3),
                                    value: index.isEven ? false : true,
                                    onChanged: (value) {},
                                  ),
                                  subtitle: const Text('New Settings'),
                                  title: Text(
                                    'Display Level Settings',
                                    style: TextStyle(
                                        fontWeight: index == 4
                                            ? FontWeight.bold
                                            : FontWeight.w400,
                                        color: index == 4
                                            ? const Color(0xff4F74A3)
                                            : Colors.grey),
                                  ),
                                ),
                              ));
                        }),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Color(0xff4F74A3),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Add Display Level Settings',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4F74A3)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        padding20,
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Mycolors.white, borderRadius: BorderRadius.circular(30)),
          child: DragAndDropList(
            itemlenght: 4,
            colors: Colors.grey,
            text: 'Location Categories',
          ),
        )),
        padding20,
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Mycolors.white, borderRadius: BorderRadius.circular(30)),
          child: DragAndDropList(
            itemlenght: 6,
            colors: Colors.grey,
            text: 'Selected Categories',
          ),
        )),
        padding20,
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Mycolors.white, borderRadius: BorderRadius.circular(30)),
          child: ProductDragAndDropList(),
        )),
      ],
    );
  }
}

class DragAndDropList extends GetView<Websettingsv1Controller> {
  final Websettingsv1Controller kitchenController = Get.find();
  DragAndDropList(
      {Key? key,
      required this.text,
      required this.colors,
      required this.itemlenght})
      : super(key: key);
  final String text;
  final Color colors;
  final int itemlenght;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: colors, fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ],
          ),
        ),
        SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: itemlenght,
            itemBuilder: (context, index) {
              return Cardwidget(
                indexgame: index,
                colors: colors,
                listitems: kitchenController.itemlistqunatity[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
