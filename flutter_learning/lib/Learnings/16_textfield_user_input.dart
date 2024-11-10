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
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Developer"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              prefixIcon: Icon(
                Icons.email,
              ),
            ),
          ),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: "Enter Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
