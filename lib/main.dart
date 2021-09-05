import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

void main () {
  runApp(MyFirstApp());
}
class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: HomePage(),  
    );
  }
}