import 'package:flutter/material.dart'
    show
        AppBar,
        Border,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Colors,
        Column,
        Container,
        EdgeInsets,
        FontWeight,
        MainAxisAlignment,
        Row,
        Scaffold,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;
import 'package:get/get.dart' show Get, GetBuilder, Inst;
import 'package:getx_demo/src/controllers/counter_controller.dart'
    show CounterController;
import 'package:getx_demo/src/widgets/atoms/button.dart' show Button;

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            padding: const EdgeInsets.all(80),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade400, width: 2)),
            child: GetBuilder<CounterController>(
              builder: (counter) => Text(
                counter.count.toString(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                label: "Increment",
                onPressed: () {
                  controller.incrementCounter();
                },
              ),
              Button(
                label: "Decrement",
                onPressed: () {
                  controller.decrementCounter();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
