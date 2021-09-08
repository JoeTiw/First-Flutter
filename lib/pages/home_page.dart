import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/models/catalogs.dart';
import 'package:hello_world/widgets/draw.dart';
import 'package:hello_world/widgets/home_widgets/catalogs_header.dart';
import 'package:hello_world/widgets/home_widgets/catalogs_list.dart';
import 'package:hello_world/widgets/products_widget.dart';
import 'package:hello_world/widgets/themes.dart';
import "package:velocity_x/velocity_x.dart";



class HomePage extends StatefulWidget {
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

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogsJson =
        await rootBundle.loadString("assests/files/catalogs.json");
    final decodedData = jsonDecode(catalogsJson);
    var productsData = decodedData["products"];
    CatalogsModel.products = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogsHeader(),
              if(CatalogsModel.products != null && CatalogsModel.products!.isNotEmpty )
              CatalogsList().expand()
              else 
              Center(
                child: CircularProgressIndicator().centered().py16(),
                )
            ],
          ),
        ),
      ),
      
         
      
    );
  }
}