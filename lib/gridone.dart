import 'package:flutter/material.dart';

class gridOne extends StatefulWidget {
  @override
  _gridOneState createState() => _gridOneState();
}

// ignore: camel_case_types
class _gridOneState extends State<gridOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 3,
            children: List.generate(5, (index) {
              return new Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(7.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$index",
                          style: TextStyle(fontSize: 24.0),
                        )),
                  ));
            })));
  }
}
