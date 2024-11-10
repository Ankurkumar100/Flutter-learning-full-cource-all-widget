import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter text button'),
        ),
        body: Container(
            width: 350,
            height: 350,
            color: Colors.tealAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'A1',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    Text(
                      'A2',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    Text(
                      'A3',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                  ],
                ),
                const Text(
                  'a',
                  style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                ),
                const Text(
                  'b',
                  style: TextStyle(fontSize: 30),
                ),
                const Text(
                  'c',
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Click Here'))
              ],
            )));
  }
}
