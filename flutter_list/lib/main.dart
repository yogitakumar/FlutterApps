import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageWhere(),
    );
  }
}

class ModelUser {
  final String nameModel;
  final String surnameModel;
  final String? imageModel;
  final String? mobileModel;
  final String? emailModel;
  final String? addressModel;
  final List<String?> joinedGroupsModel;

  const ModelUser({
    Key? key,
    required this.nameModel,
    required this.surnameModel,
    this.imageModel,
    this.mobileModel,
    this.emailModel,
    this.addressModel,
    this.joinedGroupsModel = const [],
  });
}

List<ModelUser> allUsers = [
  const ModelUser(
      nameModel: 'John',
      surnameModel: 'Newman',
      joinedGroupsModel: ['Swimmers', 'Runners', 'Footballers']),
  const ModelUser(nameModel: 'Barry', surnameModel: 'Newday'),
  const ModelUser(
      nameModel: 'Mike',
      surnameModel: 'Smith',
      joinedGroupsModel: ['Swimmers', 'Runners', 'Footballers']),
  const ModelUser(
      nameModel: 'Harry',
      surnameModel: 'Portland',
      joinedGroupsModel: ['Footballers']),
  const ModelUser(
      nameModel: 'Cathy',
      surnameModel: 'Portman',
      joinedGroupsModel: ['Swimmers', 'Runners', 'Footballers']),
  const ModelUser(
      nameModel: 'Jessie',
      surnameModel: 'Olert',
      joinedGroupsModel: ['Swimmers']),
];

class PageWhere extends StatelessWidget {
  static const String id = 'PageWhere';

  const PageWhere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final swimmers =
        allUsers.where((user) => user.joinedGroupsModel.contains('Swimmers'));
    final List<ModelUser> listOfSwimmers = swimmers.map((swimmer) {
      return swimmer;
    }).toList();
    print(listOfSwimmers.runtimeType);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Swimmers',style: TextStyle(fontSize: 30)),
            ...listOfSwimmers
                .map((value) => Text("${value.nameModel} ${value.surnameModel}",
                    style: TextStyle(fontSize: 20)))
                .toList(),
          ],
        ),
      ),
    );
  }
}
