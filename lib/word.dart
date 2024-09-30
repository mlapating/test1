
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WordScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Home'),
      ),
      body: Center(
        child: Text(
          'Navigator Up! 🫵🏻',          
          style: TextStyle(
          color: Colors.black,
            fontSize: 50,
          ),
          ),
      ),
    );
  }
}

