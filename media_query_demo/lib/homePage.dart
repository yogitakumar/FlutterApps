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
            ? Container(
                height: screenHeight * 0.5,
                color: Colors.red,
              )
            : Container(width: screenWidth * 0.5, color: Colors.green));
  }
}
