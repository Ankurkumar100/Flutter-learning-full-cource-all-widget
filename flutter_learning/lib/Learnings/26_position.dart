import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.shade300,
          child: Stack(
            children: [
              Positioned(
                left: 145,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 204, 135, 7),
                ),
              )
            ],
          ),
        ));
  }
}
