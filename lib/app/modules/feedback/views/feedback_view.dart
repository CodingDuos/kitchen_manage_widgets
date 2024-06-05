import 'package:flutter/material.dart';
import 'package:kitchen/app/constants/padding.dart';
import 'package:kitchen/app/modules/feedback/widgets/feedback_header.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';

import 'package:get/get.dart';

import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  const FeedbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Holds the text that user typed.
  String text = '';
  // CustomLayoutKeys _customLayoutKeys;
  // True if shift enabled.
  bool shiftEnabled = false;

  // is true will show the numeric keyboard.
  bool isNumericMode = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FeedbackController>(
        init: FeedbackController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: <Widget>[
                      const FeedbackHeaderWidget(),
                      padding10,
                      Expanded(
                        child: SizedBox(
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            spacing: 20.0,
                            runSpacing: 10.0,
                            children: List.generate(10,
                                    (index) => 'Well Done Doock Awesome $index')
                                .toList()
                                .map((e) => GestureDetector(
                                      onTap: () {
                                        controller.controllerText!.text = e;
                                        controller.update();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xffF3F7FF),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        height: 60,
                                        width: 500,
                                        child: Center(
                                          child: Text(e),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200,
                          ),
                          height: 100,
                          child: Center(
                            child: TextField(
                              controller: controller.controllerText,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        controller.controllerText!.text = '';
                                        controller.update();
                                      },
                                      icon: const Icon(
                                        Icons.cancel,
                                        size: 30,
                                      )),
                                  border: InputBorder.none,
                                  fillColor: Colors.grey.shade200,
                                  filled: true,
                                  hintText: 'Write Your Message Here'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color(0xffF3F7FF),
                        child: VirtualKeyboard(
                            height: 500,
                            textColor: Colors.grey,
                            fontSize: 22,
                            textController: controller.controllerText,
                            defaultLayouts: const [
                              VirtualKeyboardDefaultLayouts.English
                            ],
                            type: controller.isNumericMode.value
                                ? VirtualKeyboardType.Numeric
                                : VirtualKeyboardType.Alphanumeric,
                            onKeyPress: _onKeyPress),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  /// Fired when the virtual keyboard key is pressed.
  _onKeyPress(VirtualKeyboardKey key) {
    if (key.keyType == VirtualKeyboardKeyType.String) {
      text = text + (shiftEnabled ? key.capsText! : key.text!);
    } else if (key.keyType == VirtualKeyboardKeyType.Action) {
      switch (key.action) {
        case VirtualKeyboardKeyAction.Backspace:
          if (text.isEmpty) return;
          text = text.substring(0, text.length - 1);
          break;
        case VirtualKeyboardKeyAction.Return:
          text = '$text\n';
          break;
        case VirtualKeyboardKeyAction.Space:
          text = text + key.text!;
          break;
        case VirtualKeyboardKeyAction.Shift:
          shiftEnabled = !shiftEnabled;
          break;
        default:
      }
    }
    // Update the screen
    setState(() {});
  }
}
