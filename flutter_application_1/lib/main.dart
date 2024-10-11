import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complex UI with Nested Widgets',
      home: ComplexUI(),
    );
  }
}

class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complex UI with Nested Widgets"),
        backgroundColor: Colors.teal[200],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                // TextField added here
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'You can enter anything',
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Space between TextField and Button
                ElevatedButton.icon(
                  onPressed: () {
                    print('Button Pressed!');
                  },
                  icon: const Icon(Icons.android_sharp),
                  label: const Text('Android Is The Best!'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 101, 255, 147),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
