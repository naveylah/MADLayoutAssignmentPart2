import 'package:flutter/material.dart';

class gridTwo extends StatefulWidget {
  @override
  _gridTwoState createState() => _gridTwoState();
}

class _gridTwoState extends State<gridTwo> {
  String _status = 'off';
  changeText() {
    setState(() {
      _status = 'on';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GridView.count(crossAxisCount: 3, children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 10.0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.lightbulb_outline_rounded),
                        iconSize: 70.0,
                        onPressed: () => changeText()),
                    IconButton(
                        icon: Icon(Icons.power_settings_new_outlined),
                        iconSize: 20.0,
                        onPressed: () => changeText()),
                  ],
                ),
                Container(
                  child: Text(
                    "Light",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  child: Text(
                    "$_status",
                    style: TextStyle(fontSize: 7),
                  ),

                  //Text()
                )
              ]),
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 10.0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.wash_outlined),
                        iconSize: 70.0,
                        onPressed: () => changeText()),
                    IconButton(
                        icon: Icon(Icons.power_settings_new_outlined),
                        iconSize: 20.0,
                        onPressed: () => changeText()),
                  ],
                ),
                Container(
                  child: Text(
                    "Restroom",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  child: Text(
                    "$_status",
                    style: TextStyle(fontSize: 7),
                  ),

                  //Text()
                )
              ]),
        ),
      ),
    ])));
  }
}
