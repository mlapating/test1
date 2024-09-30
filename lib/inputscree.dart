
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';




class InputScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Input Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: textController, decoration: InputDecoration(hintText: 'Enter text')),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(content: Text(textController.text)),
              ),
              child: Text('Show Text'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}