import 'package:flutter/material.dart';
class home extends StatelessWidget {
  // const home({super.key});
  var name,pass;
  home({required this.name,required this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home",style: TextStyle(fontSize: 15,color: Colors.black),),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome ${name}",style: TextStyle(fontSize: 34,color: Colors.white)),
              OutlinedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: Text("back",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ],
          ),
        ),
      )
    );
  }
}
