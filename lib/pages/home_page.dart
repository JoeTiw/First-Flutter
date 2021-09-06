import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hello_world/widgets/draw.dart';

class  HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
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