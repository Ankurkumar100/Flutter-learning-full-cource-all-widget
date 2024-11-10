import 'package:flutter/material.dart';

import '../Learnings/28_screen_switching.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.blue, fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomepages(),
                      ));
                },
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}
