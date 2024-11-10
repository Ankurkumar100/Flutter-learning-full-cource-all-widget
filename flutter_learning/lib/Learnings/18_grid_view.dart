import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    var arrcolors = [
      Colors.brown,
      Colors.amber,
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.pink,
      Colors.purple,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Developer"),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: arrcolors[index],
          );
        },
        itemCount: arrcolors.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
        ),
      ),

      /*GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
        children: [
          Container(
            color: arrcolors[0],
          ),
          Container(
            color: arrcolors[1],
          ),
          Container(
            color: arrcolors[2],
          ),
          Container(
            color: arrcolors[3],
          ),
          Container(
            color: arrcolors[4],
          ),
          Container(
            color: arrcolors[5],
          ),
          Container(
            color: arrcolors[6],
          ),
          Container(
            color: arrcolors[0],
          ),
        ],
      ),*/

      /*GridView.count(crossAxisCount: 5,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
        children: [
          Container(
            color: arrcolors[0],
          ),
          Container(
            color: arrcolors[1],
          ),
          Container(
            color: arrcolors[2],
          ),
          Container(
            color: arrcolors[3],
          ),
          Container(
            color: arrcolors[4],
          ),
          Container(
            color: arrcolors[5],
          ),
          Container(
            color: arrcolors[6],
          ),
          Container(
            color: arrcolors[0],
          ),
        ],
      ),*/
    );
  }
}
