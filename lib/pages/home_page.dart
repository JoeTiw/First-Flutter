import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hello_world/widgets/draw.dart';

class  HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhupin's App",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
       
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to my Homepage"),
          ),
        ),

        drawer: MyDraw(),
      );
      
  
  }
}