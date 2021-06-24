import 'package:atv2/GradientAppBar.dart';
import 'package:atv2/HomePageBody.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          //ToolBar
          new GradientAppBar("Planets"),
          new HomePageBody(),
        ],
      ),
    );
  }
}