import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceInfo = MediaQuery.of(context);
    final screenHeight = deviceInfo.size.height;
    final screenWidth = deviceInfo.size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive App - MediaQuery"),
        ),
        body: deviceInfo.orientation == Orientation.portrait
           ? Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.5,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Screen Orientation : ${deviceInfo.orientation}"),
                      Text("Screen Height : ${screenHeight.toStringAsFixed(2)}"),
                      Text("Screen Width : ${screenWidth.toStringAsFixed(2)}"),
                      Text("Screen pixel ratio : ${deviceInfo.devicePixelRatio}"),
                      Text("Screen brightness : ${deviceInfo.platformBrightness}"),
                      Text("Text Scale Factor : ${deviceInfo.textScaleFactor}"),
                      Text("Is this device use 24 hour format? : ${deviceInfo.alwaysUse24HourFormat}")
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.5,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Screen Orientation : ${deviceInfo.orientation}"),
                      Text("Screen Height : ${screenHeight.toStringAsFixed(2)}"),
                      Text("Screen Width : ${screenWidth.toStringAsFixed(2)}"),
                      Text("Screen pixel ratio : ${deviceInfo.devicePixelRatio}"),
                      Text("Screen brightness : ${deviceInfo.platformBrightness}"),
                      Text("Text Scale Factor : ${deviceInfo.textScaleFactor}"),
                      Text("Is this device use 24 hour format? : ${deviceInfo.alwaysUse24HourFormat}")
                    ],
                  ),
                ],
              )
    );
  }
}