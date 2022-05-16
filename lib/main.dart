import 'package:flutter/material.dart';
import 'package:outrightadmin/src/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Outright Admin',
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
