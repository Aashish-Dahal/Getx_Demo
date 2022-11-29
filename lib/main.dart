import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/src/routes/app_pages.dart';
import 'package:getx_demo/src/routes/app_routes.dart';

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
        ),
        initialRoute: AppRoutes.Home,
        getPages: AppPages.routes);
  }
}
