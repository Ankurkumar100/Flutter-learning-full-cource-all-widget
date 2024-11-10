import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // background color
            border: Border.all(width: 2, color: Colors.grey), // border
            borderRadius: BorderRadius.circular(20), // rounded corners
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
          width: 300,
          height: 200,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
