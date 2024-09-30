
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class CounterScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Add it!: ${counter.value}'),
            ElevatedButton(
              onPressed: () => counter.value++,
              child: Text('☝🏻'),
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



