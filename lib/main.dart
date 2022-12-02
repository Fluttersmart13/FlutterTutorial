import 'package:flutter/material.dart';

void main() {
  /// main is the entry point of any programming language
  ///
  runApp(MyApp());

  /// run app is use for root screen of any flutter project first screen
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Container(
            color: Colors.red,
            width: 300,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.green,
                  width: 60,
                  height: 60,
                  child: Text("t"),
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.pink,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.yellow,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
