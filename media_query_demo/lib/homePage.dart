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
      body:deviceInfo.orientation == Orientation.portrait
        ?Row(
          children: [
            SizedBox(
              width: screenWidth/4,
              child: Container(
                color: Colors.green,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Screen Orientation : ${deviceInfo.orientation}"),
                Text("Screen Height : ${screenHeight.toStringAsFixed(2)}"),
                Text("Screen Width : ${screenWidth.toStringAsFixed(2)}")
              ],
            ),

          ],
        )
          :Column(
        children: [
          SizedBox(
            height: screenHeight/3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Screen Orientation : ${deviceInfo.orientation}"),
              Text("Screen Height : ${screenHeight.toStringAsFixed(2)}"),
              Text("Screen Width : ${screenWidth.toStringAsFixed(2)}")
            ],
          ),
        ],
      )
    );
  }
}
