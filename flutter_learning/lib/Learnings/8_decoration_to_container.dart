import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade300,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
                boxShadow: const [
                  BoxShadow(blurRadius: 11, color: Colors.black),
                ]),
          ),
        ),
      ),
    );
  }
}
