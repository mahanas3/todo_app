import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/button_provider.dart';
import 'package:todo_app/screen/screen1.dart';

void main() {
  runApp(ChangeNotifierProvider<ButtonProvider>(
      create: (context) => ButtonProvider(), child: const Main()));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
