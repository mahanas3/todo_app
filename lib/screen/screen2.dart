import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                    prefixIcon: Icon(Icons.task, color: Colors.black87),
                    hintText: 'Task',
                    label: Text('Task'),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: placecontroller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),

                  prefixIcon: Icon(
                    Icons.description,
                    color: Colors.black87,
                  ),
                  hintText: 'Description',
                  label: Text('Description')),

            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                onPressed: () {
                  context.read<ButtonProvider>().addTask(
                      context, namecontroller.text, placecontroller.text);
                  print(namecontroller);
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}
