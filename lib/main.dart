import "package:toilet_duck/routes/app_pages.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get_storage/get_storage.dart";

Future<void> main() async {
  await GetStorage.init();

  runApp(ToiletDuckApp());
}

class ToiletDuckApp extends StatelessWidget {
  const ToiletDuckApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        initialRoute: AppPages.init,
        unknownRoute: AppPages.notFound,
        getPages: AppPages.routes);
  }
}
