import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white38,
        title: const Center(
            child: Text(
          'ToDo - WishFlow',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        )),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff494F55)),
              child: const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: CircleAvatar(
                              backgroundColor: Colors.black12,
                              child: Icon(Icons.star)),
                        ),
                      ],
                    ),
                    Text('Go Premium',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Go beyond the limits',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'get exclusive featutres!',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                'Tasks',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            widget.task2 == null
                ? const Text('fcvb')
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.task2?.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(widget.task2);
                      return Container(
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff494F55)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              const Icon(Icons.shopping_cart,
                                  color: Colors.white),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.task2?[index]['taskName'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.task2?[index]['location'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
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
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        elevation: 8,
                                        shadowColor: Colors.white38,
                                        color: Colors.black87,
                                        child: Center(
                                          child: Text('2 Left',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                    width: 80,
                                    child: Card(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Center(child: Text('5 Done')),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 1.1 / 1.3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                  ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Screen2()));
          //context.read<ButtonProvider>().provider(context);
        },
      ),
    );
  }
}
