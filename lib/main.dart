import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  // Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
            value: 1,
            groupValue: selectedRadio,
            activeColor: Colors.green,
            onChanged: (val) {
              print("Radio $val");
              setSelectedRadio(val);
            },
          ),
          Radio(
            value: 2,
            groupValue: selectedRadio,
            activeColor: Colors.blue,
            onChanged: (val) {
              print("Radio $val");
              setSelectedRadio(val);
            },
          ),
          Radio(
            value: 3,
            groupValue: selectedRadio,
            activeColor: Colors.blue,
            onChanged: (val) {
              print("Radio $val");
              setSelectedRadio(val);
            },
          ),
        ],
      ),
    );
  }
}
