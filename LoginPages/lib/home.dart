import 'package:flutter/material.dart';
class home extends StatelessWidget {
  var name;
  home({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Container(
          color: Colors.blue.shade200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome ${name}",style: TextStyle(fontSize: 34,color: Colors.white)),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("Back")
                )
              ],
            ),
          )
      ),
    );
  }
}

