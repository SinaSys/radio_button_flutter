import 'package:flutter/material.dart';

import 'model/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User selectedUser;
  List<User> users;


  @override
  void initState() {
    super.initState();
    users = User.getUsers();
  }

  setSelectedUser(User user) {
    setState(() {
      selectedUser = user;
    });
  }

  List<Widget> createRadioListUsers() {
    List<Widget> widgets = [];
    for (User user in users) {
      widgets.add(
        RadioListTile(
          value: user,
          groupValue: selectedUser,
          title: Text(user.firstName),
          subtitle: Text(user.lastName),
          onChanged: (currentUser) {
            print("Current User ${currentUser.firstName}");
            setSelectedUser(currentUser);
          },
          selected: selectedUser == user,
          activeColor: Colors.green,
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: createRadioListUsers(),
      ),
    );
  }
}
