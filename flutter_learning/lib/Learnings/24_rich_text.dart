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
      body: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.green),
          children: <TextSpan>[
            TextSpan(text: 'Hello'),
            TextSpan(
                text: 'wellcome',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            TextSpan(text: ' To My'),
            TextSpan(
                text: "Flutter",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 34,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
