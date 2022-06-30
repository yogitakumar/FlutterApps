import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: StoreBinding(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Demo(),
    );
  }
}

class GetXDemo extends StatefulWidget {
  @override
  _GetXDemoState createState() => _GetXDemoState();
}

class _GetXDemoState extends State<GetXDemo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  var total = 0;
  @override
  void onInit() {
    // Get called when controller is created
    super.onInit();
  }

  @override
  void onReady() {
    // Get called after widget is rendered on the screen
    super.onReady();
  }

  @override
  void onClose() {
    //Get called when controller is removed from memory
    super.onClose();
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return DemoGetx();
  }
}

class DemoGetx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<MyController>(
        init: MyController(),
        builder: (myController) =>
            Text("Total Count = ${myController.count.value}"));
  }
}

class DemoObx extends GetView<MyController> {
  const DemoObx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text("Total Count = ${controller.count.value}"));
  }
}

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    modify();
  }

  void modify() {}
}

class DemoGetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyController>(
        init: MyController(),
        builder: (controller) {
          return Text("Total = ${controller.total}");
        });
  }
}



