import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/button_provider.dart';
import 'package:todo_app/screen/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key, this.task2});

  final List? task2;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: const Center(
              child: Text(
            'ToDo - WishFlow',
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          )),
          actions: const [Icon(Icons.more_vert)],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blueGrey,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star),
                        ],
                      ),
                      Text('Go Premium',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Go beyond the limits',
                          style: TextStyle(color: Colors.white)),
                      Text(
                        'get exclusive featutres!',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Tasks',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    child: Column(
                      children: [
                        const Icon(Icons.card_giftcard),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Work',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              height: 50,
                              child: InkWell(
                                onTap: () {},
                                child: const Card(
                                  color: Colors.black87,
                                  child: Center(
                                    child: Text('2 Left',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const SizedBox(
                              height: 50,
                              width: 80,
                              child: Card(
                                child: Center(child: Text('5 Done')),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Column(
                        children: [
                          Icon(Icons.shopping_cart),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Shopping',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 80,
                                child: Card(
                                  color: Colors.black87,
                                  child: Center(
                                      child: Text('0 Left',
                                          style:
                                              TextStyle(color: Colors.white))),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 50,
                                width: 80,
                                child: Card(
                                  child: Center(child: Text('3 Done')),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: widget.task2 == null
                  ? const Text('fcvb')
                  : Container(
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ListView.builder(
                        itemCount: widget.task2?.length,
                        itemBuilder: (BuildContext context, int index) {
                          print(widget.task2);
                          return ListTile(
                            title: Text(widget.task2?[index]['taskName']),
                            subtitle: Text(widget.task2?[index]['location']),
                          );
                        },
                      ),
                    ),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Screen2()));
                //context.read<ButtonProvider>().provider(context);
              },
            )
          ],
        ));
  }
}
