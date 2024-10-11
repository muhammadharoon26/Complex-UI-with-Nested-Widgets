import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Tree for a Simple UI',
      home: ComplexUI(),
    );
  }
}
class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Hi'),
            backgroundColor: Colors.teal[200],
          ),
          Container(
            child: Row(
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    print('Button Pressed!');
                  },
                  icon: const Icon(Icons.android_sharp),
                  label: const Text('Android Is The Best!'),
                )
              ]
            ),
          )
        ],
      )
    );
  }
}