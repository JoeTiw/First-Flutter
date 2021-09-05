import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class  HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhupin App"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to my Homepage"),
          ),
        ),

        drawer: Drawer(),
      );
      
  
  }
}