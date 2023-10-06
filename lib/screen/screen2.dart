import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screen/screen1.dart';

import '../provider/button_provider.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final namecontroller = TextEditingController();

  final placecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.contact_page, color: Colors.black87),
                    label: Text('Name'),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: placecontroller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  prefixIcon: Icon(
                    Icons.place,
                    color: Colors.black87,
                  ),
                  label: Text('Location')),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                onPressed: () {
                  context.read<ButtonProvider>().addTask(
                      context, namecontroller.text,placecontroller.text);
                  print(namecontroller);
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}
