import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Container drawer(Color backcolor) {
      return Container(
        margin: const EdgeInsets.all(8),
        height: 200,
        width: MediaQuery.of(context).size.width / 2.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: backcolor,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 20,
              bottom: 20,
              child: Text(
                "Politics",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 5,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 248, 248),
                        ),
                        child: Text(
                          "🔺",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 35,
                      child: Row(
                        children: [
                          Container(
                            child: Text("🟥"),
                          ),
                          Container(
                            child: Text("🔴"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "<",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Categories",
                
                style: TextStyle(fontSize: 32),
              ),
              Wrap(children: [
                drawer(Colors.yellow.shade300),
                drawer(Colors.blue.shade300),
                SizedBox(
                  height: 4,
                ),
                drawer(Colors.orange.shade300),
                drawer(Colors.pink.shade300),
                SizedBox(
                  height: 4,
                ),
                drawer(Colors.purple.shade300),
                drawer(Colors.grey.shade300),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
