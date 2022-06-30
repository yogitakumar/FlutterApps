import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {}
void modify() {}

class AnotherController extends GetxController {
  var count1 = 0.obs;
  int count2 = 0;

  void incrementcount1() {
    count1.value++;
  }

  void incrementcount2() {
    count2++;
    modify();
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Page2')),
        body: Container(
            child: MixinBuilder<AnotherController>(
                init: AnotherController(),
                builder: (controller) => Column(children: [
                      Text("Count 1 : ${controller.count1.value}"),
                      Text("Count 2 : ${controller.count2}")
                    ]))));
  }
}

// ignore: non_constant_identifier_names
