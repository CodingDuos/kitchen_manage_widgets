import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/display_level_settings_controller.dart';

class DisplayLevelSettingsView extends GetView<DisplayLevelSettingsController> {
  const DisplayLevelSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayLevelSettingsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DisplayLevelSettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
