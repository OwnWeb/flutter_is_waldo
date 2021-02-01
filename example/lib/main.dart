import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_is_waldo/flutter_is_waldo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isWaldo = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() async {
      _isWaldo = await FlutterWaldo.isWaldo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Is Flutter running in Waldo?'),
        ),
        body: Center(
          child: Text(_isWaldo ? 'Running in Waldo! 🦙' : 'Not in Waldo!'),
        ),
      ),
    );
  }
}
