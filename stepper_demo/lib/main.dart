
import 'dart:convert';
import 'dart:io';

void main() {
  print('1 + 1 = ...');
  var line = stdin.readLineSync(encoding: utf8);
  print(line?.trim() == '2' ? 'Yup!' : 'Nope :(');
}


//import 'package:flutter/material.dart';
//import 'package:stepperdemo/stepper_demo.dart';
//
//void main() {
//  runApp(const MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home:  StepperDemo(),
//    );
//  }
//}