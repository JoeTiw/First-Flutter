import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/models/catalogs.dart';
import 'package:hello_world/widgets/draw.dart';
import 'package:hello_world/widgets/products_widget.dart';

class  HomePage extends StatefulWidget {
  
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()  async {
    await Future.delayed(Duration(seconds: 2));
    final catalogsJson = await rootBundle.loadString("assests/files/catalogs.json");
    final decodedData = jsonDecode(catalogsJson);
    var productsData = decodedData["products"];
    CatalogsModel.products = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  
    
  }
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogsModel.products!= null && CatalogsModel.products.isNotEmpty)? ListView.builder(
           itemCount: CatalogsModel.products.length ,
           itemBuilder: (context, index){
             return ProductsWidget(
               item: CatalogsModel.products[index],
               );
           },
           
           )
            : Center(
              child: CircularProgressIndicator(),

            ),

        ),

        drawer: MyDraw(),
    );
      
  
  }
}