import 'package:flutter/material.dart';
import 'package:flutter_starter/infrastructure/navigation/navigation.dart';
import 'package:flutter_starter/infrastructure/navigation/routes.dart';
import 'package:flutter_starter/locales/strings_manager.dart';
import 'package:get/get.dart';

Future<void> main() async {

  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}


class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute,{super.key } );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('ar'),
      translations: Messages(),
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: Nav.routes,

    );
  }
}


