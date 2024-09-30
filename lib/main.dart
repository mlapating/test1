import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lib_management/BackCounter.dart';
import 'package:lib_management/counterscreen.dart';
import 'package:lib_management/inputscree.dart';
import 'package:lib_management/word.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Hooks',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CalcuXWord')),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => CounterScreen())),
            child: Text('Counter Screen'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => InputScreen())),
            child: Text('Input Screen'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                 context, MaterialPageRoute(builder: (_) => WordScreen())),
            child: Text('Word Screen'),
            
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                 context, MaterialPageRoute(builder: (_) => BackScreen())),
            child: Text('Back Screen'),
          )
        ])));
  }
}
