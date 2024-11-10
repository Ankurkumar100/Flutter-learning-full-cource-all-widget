import 'package:flutter/material.dart';
import 'package:flutter_learning/ui_helper/util.dart';


void main() {
  runApp(myFlutterApp());
}

class myFlutterApp extends StatelessWidget {
  const myFlutterApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 21, fontWeight: FontWeight.bold, color: Colors.blue),
          titleSmall: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrange),
        ),
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
          title: const Text("Hello Developer"),
        ),
        body: Column(
          children: [
            Text(
              'text1',
              style: myStyle1(),
            ),
            Text(
              'text2',
              style: myStyle2(),
            ),
            Text(
              'text3',
              style: myStyle1(),
            ),
            Text(
              'text4',
              style: myStyle2(),
            ),
             Column(
          children: [
            Text(
              'text1',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'text2',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              'text3',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'text4',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        )
            
          ],
        )

       
        );
  }
}
