import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("First Screen"),
      automaticallyImplyLeading: false,
      ),//appbar
      body: Center(
        child: FlatButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("Screen 1")),
      ),
    );//Scaffold
  }
}
