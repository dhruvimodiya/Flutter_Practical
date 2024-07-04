import 'package:flutter/material.dart';
import 'package:loginregis/Splashscreen.dart';
import 'package:loginregis/home.dart';
import 'package:loginregis/login.dart';
import 'package:loginregis/scrollview.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/scrollview',
    routes: {
      '/':(context)=>Splashscreen(),
      '/login':(context)=>login(),
      '/scrollview':(context)=>scrollview(),
      '/home':(context)=>home(name: null, pass: null),
    },
  ));
}

