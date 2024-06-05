import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/foodhub_controller.dart';

class FoodhubView extends GetView<FoodhubController> {
  const FoodhubView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodhubView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FoodhubView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
