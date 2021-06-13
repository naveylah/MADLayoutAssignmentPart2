import 'package:flutter/material.dart';
import 'gridone.dart' as gridone;
import 'gridtwo.dart' as gridtwo;
import 'gridthree.dart' as gridthree;

// ignore: camel_case_types
class gridLayout extends StatefulWidget {
  @override
  _gridState createState() => _gridState();
}

class _gridState extends State<gridLayout> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAD Assignment"),
        backgroundColor: Colors.lime[800],
        bottom: TabBar(
          controller: controller,
          indicatorWeight: 5.0,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.lime[50],
          tabs: <Widget>[
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(
              icon: Icon(Icons.ac_unit),
            ),
            Tab(icon: Icon(Icons.ac_unit)),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          gridone.gridOne(),
          gridtwo.gridTwo(),
          gridthree.gridThree(),
        ],
      ),
    );
  }
}
