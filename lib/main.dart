import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/bbb.dart';
import 'aaa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switch = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LifeCycle',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lifecycle'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.change_circle_outlined),
              onPressed: () {
                _switch = !_switch;
                setState(() {});
              },
            ),
            SizedBox(width: 40),
          ],
        ),
        body: _switch ? const AAA() : const BBB(),
      ),
    );
  }
}
