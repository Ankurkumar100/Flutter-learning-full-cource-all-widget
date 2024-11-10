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
      appBar: AppBar(
        title: Text("Hello Developer"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 100,
          maxHeight: 100,
        ),
        child: Text(
          'hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello helllo',
          style: TextStyle(fontSize: 21),
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
