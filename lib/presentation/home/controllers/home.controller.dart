import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeController extends GetxController with WidgetsBindingObserver {
  var count = 0.obs;
  void increment() {
    count.value++;
    update();
  }
}