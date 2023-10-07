import 'package:flutter/material.dart';

import '../screen/screen1.dart';

class ButtonProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> task = [];

  void addTask(BuildContext context, String taskName, String location) {
    task.add({"taskName": taskName, "location": location});
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Screen1(task2: task)));
    notifyListeners();
  }
}
