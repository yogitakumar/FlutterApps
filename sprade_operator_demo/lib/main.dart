import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

List<Widget> myWidgets = [
  Container(height: 100, color: Colors.red, child: Center(child: Text("Mary"))),
  Container(
      height: 100, color: Colors.blue, child: Center(child: Text("Rani"))),
  Container(
      height: 100, color: Colors.green, child: Center(child: Text("Jhon"))),
  Container(
      height: 100, color: Colors.yellow, child: Center(child: Text("Poly"))),
];

class Student {
  String name;
  int rollnumber;
  Student(this.name, this.rollnumber);
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Student> StudentA = [Student("Roza", 10), Student("Zara", 11)];

  List<Student> StudentB = [Student("Mary", 12)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sprade Operator"),
        ),

        // myWidgets List
        /*   body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [...myWidgets],
        ) */

        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: StudentA.length,
                  itemBuilder: (context, index) {
                    return Container(height:50,child: Center(child: Text(StudentA[index].name)));
                  }),
            ),
            ElevatedButton(
              child: Text("add more students"),
              onPressed: () {
                StudentA = [...StudentA, ...StudentB];
                setState(() {});
              },
            )
          ],
        ));
  }
}
