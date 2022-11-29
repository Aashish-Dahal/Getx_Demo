import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/src/controllers/todo_controller.dart';
import 'package:getx_demo/src/widgets/atoms/custom_tile.dart';

import '../routes/app_routes.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Todo")),
      body: Obx(() => ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            itemCount: TodoController.to.todoList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: CustomListTile(
                onTab: () {},
                subTitle: Text(
                  TodoController.to.todoList[index].subtitle.toString(),
                ),
                title: TodoController.to.todoList[index].title,
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.AddTodoPage);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
