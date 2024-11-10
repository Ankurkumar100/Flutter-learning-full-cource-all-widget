import 'package:flutter/material.dart';
import 'package:flutter_learning/Learnings/buttons.dart';

void main() {
  runApp(myFlutterApp());
}

class myFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Developer"),
      ),
      body: Container(
        width: 100,
        height: 30,
        child: buttons(
          btnName: 'play',
          bgColor: Colors.black,
          icon: Icon(Icons.play_arrow),
          textStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
