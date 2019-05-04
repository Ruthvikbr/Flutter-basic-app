import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'as convert;

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

  List apiData;

  @override
  void initState(){
    super.initState();
    print("Working");
    fetchdata();
  }

  void fetchdata()async{
    var url = "http://dummy.restapiexample.com/api/v1/employees";
    print("before");

    var response = await http.get(url);
    print("response ${response}");
    print("after");

    if(response.statusCode==200){
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      setState(() {
        apiData=jsonResponse;
        print(apiData.length);
      });
    }
    else{
      print("Request failed :  ${response.statusCode}");
    }

  }




  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("API DATA FLOW"),
      ),//appbar
      body: Container(
        alignment: Alignment.center,

        child: apiData==null?CircularProgressIndicator():ListView.builder(
        itemCount: apiData.length
        ,itemBuilder: (context,index){
    return ListTile(
        leading: CircleAvatar(
          child: Text("$index"),
        ),//Circle avatar
      title: Text("${apiData[index]["employee_name"]}"),
      subtitle: Text("${apiData[index]["employee_salary"]}"),


    );//listtile
    }),//listview

      ),//container
      floatingActionButton: FloatingActionButton(
          onPressed: (){

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