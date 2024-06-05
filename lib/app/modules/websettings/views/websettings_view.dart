import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';

import '../controllers/websettings_controller.dart';

class WebsettingsView extends GetView<WebsettingsController> {
  const WebsettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WebsettingsView'),
          centerTitle: true,
        ),
        body: const WebsettingsPage());
  }
}

class WebsettingsPage extends StatefulWidget {
  const WebsettingsPage({super.key});

  @override
  State<WebsettingsPage> createState() => _WebsettingsPageState();
}

class _WebsettingsPageState extends State<WebsettingsPage> {
  List ishovering = List.generate(3, (index) => false).toList();
  static const double minItemWidth = 316.0;

  int crossAxisCount = 3;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int newCrossAxisCount = (screenWidth / minItemWidth).floor();

    if (newCrossAxisCount != crossAxisCount) {
      setState(() {
        crossAxisCount = newCrossAxisCount;
      });
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Busy Mode',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Text(
              'If Store is busy You can switch off Online orders',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[500]),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                  ),
                  itemCount: ishovering.length + 1,
                  itemBuilder: (context, index) {
                    Color hovercolor = Colors.white;
                    if (index < 3) {
                      hovercolor = ishovering[index] == true
                          ? Colors.white
                          : const Color(0xff313943);
                    }
                    return index == 3
                        ? GestureDetector(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xffE1E5EC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Switch(
                                    focusColor: hovercolor,
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                  const Text(
                                    'Switch off all channels',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff313943),
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          )
                        : GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: InkWell(
                                onTap: () {},
                                onHover: (hovering) {
                                  setState(() {
                                    ishovering[index] = hovering;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: ishovering[index] == true
                                          ? Mycolors.primarycolor
                                          : const Color(0xffE1E5EC),
                                      borderRadius: BorderRadius.circular(0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Center(
                                          child: Opacity(
                                            opacity: 0.20,
                                            child: Icon(
                                              iconslist[index],
                                              size: 120,
                                              opticalSize: 50,
                                              color: hovercolor,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  devicesnames[index],
                                                  style: GoogleFonts.aBeeZee(
                                                      color: hovercolor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Switch(
                                                  focusColor: hovercolor,
                                                  value: index.isEven
                                                      ? false
                                                      : true,
                                                  onChanged: (value) {},
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<IconData> iconslist = [
  Icons.web,
  Icons.mobile_friendly,
  Icons.add_shopping_cart_rounded,
];

final List devicesnames = [
  'Website',
  'App',
  'Food Panda',
];
