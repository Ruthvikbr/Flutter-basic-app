import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "jynx",
  home: Scaffold(
    drawer: Drawer(),
    appBar: AppBar(
      title: Text("Welcome to Flutter"),
    ),
    body:Center(child: Text("data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
  ),//Scaffold
));

