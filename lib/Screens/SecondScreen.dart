import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),//appbar
      body: Center(
        child: FlatButton(onPressed: (){}, child: Text("Screen 2")),
      ),
    );//Scaffold
  }
}
