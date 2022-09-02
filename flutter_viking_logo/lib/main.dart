import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterVikingsContainer(),
    );
  }
}

const Color primaryColor = Color(0xFF055799);
const Color secondaryColor = Color(0xFF07c6f9);
const Color shadowStartColor = Color(0xFF103866);

class VikingsLogo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final primaryPaint = Paint()
      ..color = primaryColor;
    final secondaryPaint = Paint()
      ..color = secondaryColor;
    final shadowPaint = Paint()
      ..shader = ui.Gradient.linear(Offset(0, 0), Offset(251, 270), [
        Colors.black,
        Colors.black,
        primaryColor,
      ], [
        0.0,
        0.5,
        1.0
      ]);

    Path leftHornPath = createHornPath();
    Path rightHornPath = createHornPath(startingX: size.width);

    Path leftHornBase = createHornBase();
    Path rightHornBase = createHornBase(startingX: size.width);

    Path leftArrow = createLeftArrow();
    Path rightArrow = createRightArrow(size);

    Path shadowPath = Path()
      ..moveTo(142, 205)
      ..lineTo(210, 340)..lineTo(250, 310)
      ..close();

    canvas.drawPath(rightHornPath, secondaryPaint);
    canvas.drawPath(leftHornPath, primaryPaint);

    canvas.drawPath(rightHornBase, primaryPaint);
    canvas.drawPath(leftHornBase, secondaryPaint);

    canvas.drawPath(leftArrow, primaryPaint);
    canvas.drawPath(rightArrow, secondaryPaint);

    canvas.drawPath(shadowPath, shadowPaint);
  }

  Path createLeftArrow() {
    Path leftArrow = Path()
      ..moveTo(250, 310)
      ..lineTo(95, 465)
      ..cubicTo(62, 490, 62, 450, 62, 430)
      ..lineTo(62, 300)
      ..quadraticBezierTo(62, 288, 70, 275)
      ..lineTo(142, 204)..lineTo(250, 310)
      ..close();
    return leftArrow;
  }

  Path createRightArrow(Size size) {
    Path rightArrow = Path()
      ..moveTo(142, 204)
      ..lineTo(size.width - 95, 465)
      ..cubicTo(
        size.width - 62,
        490,
        size.width - 62,
        450,
        size.width - 62,
        430,
      )
      ..lineTo(size.width - 62, 300)
      ..quadraticBezierTo(size.width - 62, 288, size.width - 70, 275)
      ..lineTo(265, 110)
      ..arcToPoint(
        Offset(235, 110),
        radius: Radius.circular(20),
        clockwise: false,
      )
      ..close();
    return rightArrow;
  }

  Path createHornBase({double startingX = 0}) {
    Path leftHornBase = Path()
      ..moveTo((startingX - 173).abs(), 164)
      ..quadraticBezierTo(
        (startingX - 150).abs(),
        150,
        (startingX - 145).abs(),
        149,
      )..quadraticBezierTo(
        (startingX - 120).abs(),
        160,
        (startingX - 100).abs(),
        185,
      )
      ..cubicTo(
        (startingX - 80).abs(),
        210,
        (startingX - 80).abs(),
        215,
        (startingX - 85).abs(),
        220,
      )..cubicTo(
        (startingX - 80).abs(),
        200,
        (startingX - 80).abs(),
        230,
        (startingX - 98).abs(),
        240,
      )
      ..quadraticBezierTo(
        (startingX - 120).abs(),
        200,
        (startingX - 173).abs(),
        165,
      )
      ..close();
    return leftHornBase;
  }

  Path createHornPath({double startingX = 0}) {
    return Path()
      ..moveTo((startingX - 130).abs(), 25)
      ..arcToPoint(
        Offset((startingX - 80).abs(), 205),
        radius: Radius.circular(135),
        clockwise: startingX != 0,
      )..arcToPoint(
        Offset((startingX - 135).abs(), 150),
        radius: Radius.circular(120),
        clockwise: startingX == 0,
      )..arcToPoint(
        Offset((startingX - 130).abs(), 25),
        radius: Radius.circular(130),
        clockwise: startingX == 0,
      )
      ..close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(249, 296);
    path_0.quadraticBezierTo(138.75, 405.5, 102, 442);
    path_0.cubicTo(79.65, 452.86, 75.42, 436.51, 73, 430);
    path_0.cubicTo(73, 392.25, 73, 316.75, 73, 279);
    path_0.quadraticBezierTo(72.05, 268.16, 81.16, 259.44);
    path_0.lineTo(148, 194);
    path_0.lineTo(249, 296);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class FlutterVikingsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: SizedBox(
                width: 500,
                height: 500,
                child: CustomPaint(
                  size: Size(500, 500),
                  painter: VikingsLogo(),
                )
              // ],
              //),
            ),
          ),
        ],
      ),
    );
  }
}