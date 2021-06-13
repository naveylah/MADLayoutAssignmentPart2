import 'package:flutter/material.dart';

class gridTwo extends StatefulWidget {
  @override
  _gridTwoState createState() => _gridTwoState();
}

final formKey = GlobalKey<FormState>();
bool _status = false;
bool _isSwitched = false;

class _gridTwoState extends State<gridTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GridView.count(crossAxisCount: 3, children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: Card(
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 5.0),
                IconButton(
                    icon: Icon(Icons.analytics_outlined),
                    iconSize: 70.0,
                    onPressed: () {
                      setState(() {
                        _status = true;
                      });
                    }),
                Text(
                  "Fan",
                  style: TextStyle(fontSize: 20),
                ),
                Text("status: $_status")
              ]),
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        child: Card(
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 5.0),
                IconButton(
                    icon: Icon(Icons.analytics_outlined),
                    onPressed: () {
                      setState(() {
                        _status = true;
                      });
                    }),
                Text("status: $_status")
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
                SizedBox(height: 5.0),
                IconButton(
                    icon: Icon(Icons.analytics_outlined),
                    onPressed: () {
                      setState(() {
                        _status = true;
                      });

                      formKey.currentState.reset();
                    }),
                Text("status: $_status")
              ]),
        ),
      ),
    ])));
  }
}
