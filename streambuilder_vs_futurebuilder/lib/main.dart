import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder Vs FutureBuilder"),
      ),
      body: Center(
        child: FutureBuilder(
          future: getDataFromFuture("YOgita"),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Text(snapshot.data.toString());
            }
            else{
              return CircularProgressIndicator();
            }
          },
        ),
      )
    );
  }

  Future<String> getDataFromFuture(String name) async{
    await Future.delayed(Duration(seconds:5));
    return "Hello ";
}

Stream<int> getDataFromStream() async*{
    while(100 >= num) {
      await Future.delayed(Duration(seconds: 5));
    yield num++;
    }
}
}
