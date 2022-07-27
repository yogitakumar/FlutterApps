import 'package:flutter/material.dart';
import 'package:statemngtproviderdemo/Providers/count_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Managemnet : Provider"),
      ),
      body:Center(
        child: Text("You have pushed button this many times : "),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {  },),

          SizedBox(width: 3),

          FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {  },),

          SizedBox(width: 3),

          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<Counter>().add();
            },),
        ],
      ),
    );
  }
}
