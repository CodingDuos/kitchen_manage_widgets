import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_select_controller.dart';

class ThemeSelectView extends GetView<ThemeSelectController> {
  const ThemeSelectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ThemeSelectViewBody());
  }
}

class ThemeSelectViewBody extends StatelessWidget {
  const ThemeSelectViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GetBuilder<ThemeSelectController>(
        init: ThemeSelectController(),
        builder: (controller) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20),
              ),
              width: screenSize.width * 0.60,
              height: screenSize.height * 0.60,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                          'Connect Theme To Package',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'To Start Your Project Select The Following Theme',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                      Row(
                        children: businessTypeList.map((e) {
                          final textWidth = getTextWidth(
                              controller.selectedTab.value,
                              const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w400));
                          return Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.setSelectedTab(e);
                                  },
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                      color: controller.selectedTab.value == e
                                          ? Colors.black
                                          : Colors.grey,
                                      fontSize: 22,
                                      fontWeight:
                                          controller.selectedTab.value != e
                                              ? FontWeight.w400
                                              : FontWeight.w400,
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  width: controller.selectedTab.value != e
                                      ? 0
                                      : textWidth,
                                  child: Divider(
                                      thickness: 3,
                                      color: controller.selectedTab.value != e
                                          ? Colors.white
                                          : const Color(0xff52E8D2)),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: themeList.map((e) {
                          bool isSelected = controller.selectedTheme.value == e;
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: InkWell(
                              onTap: () {
                                controller.setSelectedTheme(e);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: !isSelected
                                          ? Colors.grey.shade300
                                          : const Color(0xff52E8D2)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                width: 300,
                                height: 300,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: SizedBox(
                                      child: Image.asset('images/logo.png'),
                                    )),
                                    Text(
                                      e,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: isSelected
                                              ? FontWeight.bold
                                              : FontWeight.w600,
                                          color: isSelected
                                              ? const Color(0xff52E8D2)
                                              : Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              child: Container(
                                width: 200,
                                height: 49,
                                decoration: BoxDecoration(
                                    color: const Color(0xff52E8D2),
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Center(
                                    child: Text(
                                  'Next',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

List<String> businessTypeList = [
  'Restaurant',
  'Retail',
  'TakeAway',
  'Cafe',
  'Mobile Repair',
  'Food Delivery',
  'Other'
];

List<String> themeList = [
  'Restaurant POS',
  'Retail Pro',
  'FoodHub',
];

double getTextWidth(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    textDirection: TextDirection.ltr,
  )..layout();
  return textPainter.width;
}
