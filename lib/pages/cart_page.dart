import 'package:flutter/material.dart';
import 'package:hello_world/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      title: "Cart".text.xl3.make(),
      titleTextStyle: TextStyle(color: Colors.black),     //cart header textStyle
    
    
      ),
      
    );
  }
}