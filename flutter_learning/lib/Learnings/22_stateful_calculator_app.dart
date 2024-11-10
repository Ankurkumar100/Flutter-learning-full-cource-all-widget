import 'package:flutter/material.dart';

void main() {
  runApp(flutterApp());
}

class flutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
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
  var no1Controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: no1Controller,
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: no2controller,
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var sum = no1 + no2;
                          var result = 'the result is $no1 and $no2 = $sum';

                          setState(() {
                            print(result);
                          });
                        },
                        child: Text('Add')),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        var sub = no1 - no2;
                        var result = "$sub";
                        setState(() {
                          print(result);
                        });
                      },
                      child: Text('Sub'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var multi = no1 * no2;
                          var result =
                              "The Multiplication $no1 and $no2 is $multi";
                          setState(() {
                            print(result);
                          });
                        },
                        child: Text('multi')),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(21),
                child: Text(
                  result,
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
