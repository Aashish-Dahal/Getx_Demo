import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_demo/src/bindings/counter_binding.dart';
import 'package:getx_demo/src/bindings/todo_binding.dart';
import 'package:getx_demo/src/pages/add_todo_page.dart';
import 'package:getx_demo/src/pages/home.dart';
import 'package:getx_demo/src/pages/todo_page.dart';
import 'package:getx_demo/src/routes/app_routes.dart';

import '../pages/counter_page.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.Home,
      page: () => const HomePage(),
    ),
    GetPage(
        name: AppRoutes.CounterPage,
        page: () => const CounterPage(),
        binding: CounterBinding()),
    GetPage(
        name: AppRoutes.TodoPage,
        page: () => const TodoPage(),
        binding: TodoBinding()),
    GetPage(
        name: AppRoutes.AddTodoPage,
        page: () => const AddTodoPage(),
        binding: TodoBinding()),
  ];
}
