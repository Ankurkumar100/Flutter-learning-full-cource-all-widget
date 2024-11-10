import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(flutterApp());
}

class flutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My flutter app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.brown,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
