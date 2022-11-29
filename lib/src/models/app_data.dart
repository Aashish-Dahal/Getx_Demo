import 'package:flutter/material.dart' show Icon, Icons, Widget;

class AppData {
  String? title;
  Widget? icon;
  AppData({
    this.title,
    this.icon,
  });
}

final List<AppData> homeData = [
  AppData(title: "Counter App", icon: const Icon(Icons.add_circle))
];
