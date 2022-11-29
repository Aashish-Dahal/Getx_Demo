import 'package:get/get.dart';
import 'package:getx_demo/src/models/todo_list.dart';

class TodoController extends GetxController {
  final _todoList = <TodoList>[].obs;
  List<TodoList> get todoList => _todoList;
  static TodoController get to => Get.find();
  void addTodo(TodoList todo) {
    _todoList.add(todo);
  }
}
