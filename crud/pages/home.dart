import 'package:crud/pages/employee.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Employee()));
      },child: Icon(Icons.add),),
      appBar: AppBar(title:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Flutter",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 24.0),),
        Text("Firebased",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 24.0),),
      ],),),
      body: Container(
        child: Column(children: [

        ],),
      ),
    );
  }
}
