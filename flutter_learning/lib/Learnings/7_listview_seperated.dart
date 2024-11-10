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
    var arrName = [
      'ram',
      'ramunujan',
      'ramesh',
      'rajan',
      'abhay',
      'rahul',
      'karan',
      'ankit',
      'mahesh',
      'aman',
      'mohan'
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Listview Widget'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    arrName[index],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
                  ),
                ),
                Text(
                  arrName[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
          itemCount: arrName.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 100,
              thickness: 2,
            );
          },
        ));
  }
}
