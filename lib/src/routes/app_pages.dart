import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_demo/src/pages/home.dart';
import 'package:getx_demo/src/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(name: AppRoutes.Home, page: () => const HomePage())
  ];
}
