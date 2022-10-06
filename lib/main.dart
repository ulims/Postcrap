import 'package:flutter/material.dart';
import 'package:postcrap/screens/wrapper.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social App',
      home: Wrapper(),
    );
  }
}

