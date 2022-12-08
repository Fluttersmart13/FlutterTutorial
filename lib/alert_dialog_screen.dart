import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Simple Alert"))
          ],
        ),
      )),
    );
  }
}
