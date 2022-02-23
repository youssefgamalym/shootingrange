import 'package:flutter/material.dart';
import 'package:shootingrange/shooting.dart';

import 'home.dart';
import 'settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String SHOOTING = 'shooting';
  static const String settings = 'settings';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
      routes: {
        SHOOTING: ((context) => shootingRange()),
        settings: ((context) => Settings()),

      },
    );
  }
}
