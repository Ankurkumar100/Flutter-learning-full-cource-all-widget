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
          title: Text('Flutter Scrollview'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 11),
                          width: 100,
                          height: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11),
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11),
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11),
                          width: 100,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11),
                          width: 100,
                          height: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 11),
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ));
  }
}
