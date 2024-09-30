
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class BackScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    return Scaffold(
      appBar: AppBar(title: Text('BackCounter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Subtract it!: ${counter.value}'),
            ElevatedButton(
              onPressed: () => counter.value--,
              child: Text('👇🏻'),
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



