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
    var arrayName = [
      'ram',
      'ankit',
      'raman',
      'aman',
      'rohit',
      'mohit',
      'shyam'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Developer"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('$index'),
            title: Text(arrayName[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add_circle),
          );
        },
        itemCount: arrayName.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 70,
            thickness: 1,
          );
        },
      ),
    );
  }
}
