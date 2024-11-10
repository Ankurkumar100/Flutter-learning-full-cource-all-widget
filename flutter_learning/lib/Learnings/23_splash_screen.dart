import 'package:flutter/material.dart';
import 'package:flutter_learning/Widget/splash.dart';

void main() {
  runApp(flutterApp());
}

class flutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => DashboardState();
}

class DashboardState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dash Board Screen'),
      ),
      body: Container(
        color: Colors.blue,
        child: const Text(
          "classic",
          style: TextStyle(color: Colors.greenAccent, fontSize: 31),
        ),
      ),
    );
  }
}
