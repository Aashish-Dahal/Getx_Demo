import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Column,
        EdgeInsets,
        Scaffold,
        SingleChildScrollView,
        StatelessWidget,
        Text,
        Widget;
import 'package:get/get.dart' show Get, GetNavigation;
import 'package:getx_demo/src/models/app_data.dart' show homeData;
import 'package:getx_demo/src/widgets/atoms/custom_tile.dart'
    show CustomListTile;
import '../routes/app_routes.dart' show AppRoutes;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Getx Demo"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              ...List.generate(
                  homeData.length,
                  (index) => CustomListTile(
                        onTab: () {
                          Get.toNamed(AppRoutes.CounterPage);
                        },
                        title: homeData[index].title,
                        leading: homeData[index].icon,
                      ))
            ],
          ),
        ));
  }
}
