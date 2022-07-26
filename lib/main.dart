// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Magic Balls'),
          ),
          body: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ball = Random().nextInt(5) + 1;
                  });
                },
                child: Image(image: AssetImage('images/ball$ball.png'))),
          )),
    );
  }
}
