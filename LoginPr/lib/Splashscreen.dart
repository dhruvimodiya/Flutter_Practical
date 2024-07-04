import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';
class Splashscreen extends StatefulWidget {
  // const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("Loading...", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),

          )
        ),
      ),
    ) ;
  }
}
