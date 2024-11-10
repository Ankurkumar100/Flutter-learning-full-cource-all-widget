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

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomepage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count : $count'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Text('Encreament Counter'))
          ],
        ),
      ),
    );
  }
}

/*class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomepage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('count: $count'),
            ElevatedButton(
                onPressed: () {
                  //count++;
                  //count = count + 1;
                  //count += 1;
                  setState(() {
                    count++;
                  });
                },
                child: Text('Encreament counter'))
          ],
        ),
      ),
    );
  }
}*/
