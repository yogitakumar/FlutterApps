import 'package:flutter/material.dart';
import 'package:mediaquerydemo/homePage.dart';
import 'package:mediaquerydemo/sizer_demo.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: SizerDemo(),
          );
        }
    );
  }
}