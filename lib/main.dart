import 'package:flutter/material.dart';

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
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  // Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: selectedRadioTile,
            onChanged: (val) {setSelectedRadioTile(val);},
            selected: true,
            title: Text("Radio 1"),
            subtitle: Text("Radio 1 Subtitle"),
            activeColor: Colors.red,
            secondary: OutlineButton(
              child: Text("Say Hi"),
              onPressed: () {print("Say Hello");},),
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedRadioTile,
            title: Text("Radio 2"),
            subtitle: Text("Radio 2 Subtitle"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedRadioTile(val);
            },
            activeColor: Colors.red,
            secondary: OutlineButton(
              child: Text("Say Hi"),
              onPressed: () {
                print("Say Hello");
              },
            ),
            selected: false,),],),);
  }
}
