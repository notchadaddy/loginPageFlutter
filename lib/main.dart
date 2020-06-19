import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context) => Login(),
      // '/home':(context) => Home(),
    },
  ));
}