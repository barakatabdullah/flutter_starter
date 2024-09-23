import 'package:flutter/material.dart';
import 'package:flutter_starter/infrastructure/navigation/routes.dart';
import 'package:flutter_starter/presentation/home/controllers/home.controller.dart';
import 'package:flutter_starter/locales/translation_keys.dart' as translation;
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(translation.title.tr),
              onTap: () {
                Get.toNamed(Routes.Home);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(translation.goodMorning.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=> controller.count != null ? Text(controller.count.toString()): CircularProgressIndicator()),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Go to Details'),
            ),

            ElevatedButton(onPressed: (){
              Get.updateLocale(Get.locale == Locale('en') ? Locale('ar') : Locale('en'));

            }, child: Text(translation.changeLang.tr)),
          ],
        )
      ),
    );
  }
}