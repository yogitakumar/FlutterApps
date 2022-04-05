import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
body:SingleChildScrollView(
  child: Form(
    key: formkey1,
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  hintText: 'Enter your first name'),
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  hintText: 'Enter your last name'),

          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            onPressed: () {
//              if (formkey.currentState!.validate()) {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (_) => HomePage()));
//                print("Validated");
//              } else {
//                print("Not Validated");
//              }
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),

      ],
    ),
  ),
)
//      body: Center(
//        child: Container(
//          height: 80,
//          width: 150,
//          decoration: BoxDecoration(
//              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
//          child: FlatButton(
//            onPressed: () {
//              Navigator.pop(context);
//            },
//            child: Text(
//              'Welcome',
//              style: TextStyle(color: Colors.white, fontSize: 25),
//            ),
//          ),
//        ),
//      ),
    );
  }
}
