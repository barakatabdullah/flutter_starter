import 'package:flutter_starter/infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
import 'package:flutter_starter/presentation/home/home.screen.dart';
import 'package:get/get.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),

  ];
}