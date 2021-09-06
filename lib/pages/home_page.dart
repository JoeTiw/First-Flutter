import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hello_world/models/catalogs.dart';
import 'package:hello_world/widgets/draw.dart';
import 'package:hello_world/widgets/products_widget.dart';

class  HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogsModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhupin's App",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
       
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
           itemCount: dummyList.length ,
           itemBuilder: (context, index){
             return ProductsWidget(
               item: dummyList[index],
               );
           },
           
           ),
        ),

        drawer: MyDraw(),
      );
      
  
  }
}