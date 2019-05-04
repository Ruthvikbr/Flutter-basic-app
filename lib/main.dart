import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "jynx",
  home: HomeWidget()

));

class HomeWidget extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      //Drawer components should be added here

      appBar: AppBar(
        title: Text("Welcome to Flutter"),
        //Whatever text we want to add should be added here
      ),
      body: ListView.builder(

          itemCount: 30
          ,itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
           Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("$index"),
                ),
                //CircleAvatar
                Text("User Name"),
              ],//Widget
            ),//Row
                Padding(
        padding: const EdgeInsets.all(18.0),
                  child: Text("2:10"),
        ),

              ],
            );
      }
      ),

floatingActionButton: FloatingActionButton(
  onPressed: (){},
  child: Icon(Icons.add),
      ),//FAB
    ); //Scaffold
    //Stateless widget is something that doesn't need UI changes

  }}