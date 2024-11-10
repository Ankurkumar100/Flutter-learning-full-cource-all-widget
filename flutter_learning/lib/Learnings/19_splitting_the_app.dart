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
      title: "My Flutter App",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My home Page'),
        ),
        body: Container(
          child: Column(
            children: [statusicon(), contact(), subcastitem()],
          ),
        ));
  }
}

class subcastitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.orange,
            ),
          ),
        ),
        itemCount: 12,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          color: Colors.blue,
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(235, 175, 112, 76),
              ),
              title: Text('Name'),
              subtitle: Text('Mob no.'),
              trailing: Icon(Icons.delete),
            ),
            scrollDirection: Axis.vertical,
            itemCount: 12,
          ),
        ),
      ],
    );
  }
}

class statusicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: [
          Container(
            height: 87,
            color: Color.fromARGB(255, 241, 219, 213),
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              itemCount: 20,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
