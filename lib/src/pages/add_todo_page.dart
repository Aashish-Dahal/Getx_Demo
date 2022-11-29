import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Column,
        EdgeInsets,
        Form,
        FormState,
        GlobalKey,
        Padding,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextEditingController,
        Widget;
import 'package:get/get.dart' show Get, GetNavigation;
import 'package:getx_demo/src/constants/constant.dart' show Validator;
import 'package:getx_demo/src/controllers/todo_controller.dart'
    show TodoController;
import 'package:getx_demo/src/models/todo_list.dart' show TodoList;
import 'package:getx_demo/src/widgets/atoms/button.dart' show Button;
import 'package:getx_demo/src/widgets/atoms/input_field.dart' show InputField;

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController title = TextEditingController();
    final TextEditingController subTitle = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              InputField(
                validator: Validator.validateTitle,
                controller: title,
                labelText: "Title",
              ),
              const SizedBox(
                height: 10,
              ),
              InputField(
                validator: Validator.validateSubtitle,
                controller: subTitle,
                labelText: "Subtitle",
              ),
              const SizedBox(
                height: 20,
              ),
              Button(
                minWidth: 200,
                label: "Add Todo",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    TodoController.to.addTodo(TodoList(
                        title: title.text.trim(),
                        subtitle: subTitle.text.trim()));
                    Get.back();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
