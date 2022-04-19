import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceInfo = MediaQuery.of(context);
    late var h = deviceInfo.size.height;
    late var w = deviceInfo.size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive App - MediaQuery"),
        ),
        body: deviceInfo.orientation == Orientation.portrait
            ? SizedBox(
              width:30.w,
              height: 20.h,
              child: Container(
                child: Center(child: Text("HELLO", style: TextStyle(fontSize: 20.sp),)),
                color: Colors.green,
              ),
            )
            : SizedBox(
              width:30.w,
              height: 20.h,
              child: Container(
                child: Center(child: Text("World!", style: TextStyle(fontSize: 20.sp),)),
                color: Colors.red,
              ),
            )
    );
  }
}