import 'package:flutter/material.dart';
import 'package:flutter_totorial/second_screen.dart';
import 'package:flutter_totorial/third_screen.dart';

void main() {
  /// main is the entry point of any programming language
  ///
  runApp(MaterialApp(
    home: MyApp(),
  ));

  /// run app is use for root screen of any flutter project first screen
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getButton(context, "simple Alert", 1),
          getButton(context, "two", 2),
          getButton(context, "three", 3),
        ],
      ),
    );
  }

  /// future is use for when any method take time in execution process
  /// async - simultaneous calling a method
  /// await - return value after some

  _simpleAlertDialog() {
    return SimpleDialog(
      title: const Text('Select assignment'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {},
          child: const Text('Treasury department'),
        ),
        SimpleDialogOption(
          onPressed: () {},
          child: const Text('State department'),
        ),
      ],
    );
  }

  Center getButton(BuildContext context, String name, int key) {
    return Center(
      child: InkWell(
        onTap: () {
          ///Navigator to open new activity

          if (key == 1) {
            _simpleAlertDialog();
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => FirstScreen()));
          } else if (key == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          } else if (key == 3) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ThirdScreen()));
          }
        },
        child: Container(
          height: 50,
          width: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

/// function and method are same and use for reuse the code
