import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "jynx",
  theme: ThemeData(
    primarySwatch: Colors.red,brightness: Brightness.light
  ),
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

          itemCount: 5
          ,itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text("$index")),
                trailing: Text("2:10"),
                title:Text("username"),
                subtitle: Text("subtitle"),
              ),//ListTile
            );//Card

              
         
      }
      ),

floatingActionButton: FloatingActionButton(
  onPressed: (){},
  child: Icon(Icons.add),
      ),//FAB
    ); //Scaffold
    //Stateless widget is something that doesn't need UI changes

  }}