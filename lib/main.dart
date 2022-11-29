import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        Colors,
        StatelessWidget,
        ThemeData,
        Widget,
        runApp;
import 'package:get/get.dart' show GetMaterialApp;
import 'package:getx_demo/src/routes/app_pages.dart' show AppPages;
import 'package:getx_demo/src/routes/app_routes.dart' show AppRoutes;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Getx Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xffeff0f5)),
        initialRoute: AppRoutes.Home,
        getPages: AppPages.routes);
  }
}
