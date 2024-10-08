import 'package:flutter_starter/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}