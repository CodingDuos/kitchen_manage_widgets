import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportController extends GetxController {
  RxInt selectedoption = 0.obs;
  setselectedoption(int val) {
    selectedoption.value = val;
    update();
  }

  List<String> optionsTitleslist = [
    'Summary',
    'Sale By Products',
    'Sale By Category',
    'Sale By Department',
    'Monthly Reports',
    'Others Reports'
  ];

  List<IconData> optionsTitleslistIcons = [
    Icons.summarize_outlined,
    Icons.production_quantity_limits_outlined,
    Icons.category_outlined,
    Icons.room_preferences_outlined,
    Icons.document_scanner_outlined,
    Icons.devices_other_outlined
  ];
}
