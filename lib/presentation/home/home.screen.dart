import 'package:flutter/material.dart';
import 'package:flutter_starter/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(()=> controller.count != null ? Text(controller.count.toString()): CircularProgressIndicator()),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Go to Details'),
            ),
          ],
        )
      ),
    );
  }
}