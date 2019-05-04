import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "jynx",
  theme: ThemeData(
    primarySwatch: Colors.red,brightness: Brightness.light
  ),
  home: HomeWidget()

));




class HomeWidget extends StatefulWidget{
  @override
  _HomeWidgetState createState()=>_HomeWidgetState();

}
class _HomeWidgetState extends State<HomeWidget>{
  bool color=true;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: color ? Colors.blue:Colors.red,
        child: Text(color.toString(),style: TextStyle(fontSize:22 )),//text

      ),//container
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(color);

            setState(() {
              color=!color;
            });
   },
        child: Icon(Icons.add),
      ),//FAB
    );//Scaffold
  }

}


//class homeWidget extends StatelessWidget{
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      drawer: Drawer(),
//      //Drawer components should be added here
//
//      appBar: AppBar(
//        title: Text("Welcome to Flutter"),
//        //Whatever text we want to add should be added here
//      )

      
      



//    ); //Scaffold
//    //Stateless widget is something that doesn't need UI changes
//
//  }}