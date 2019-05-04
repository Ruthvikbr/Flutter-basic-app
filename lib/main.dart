import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "jynx",
  home: Scaffold(
    drawer: Drawer(),//Drawer components should be added here
    appBar: AppBar(
      title: Text("Welcome to Flutter"),
      //Whatever text we want to add should be added here
    ),
    body:Center(child: Text("data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),

  ),//Scaffold
));

