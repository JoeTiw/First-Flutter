import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/models/catalogs.dart';
import 'package:hello_world/widgets/draw.dart';
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
                child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
      
         
      
    );
  }
}

class  CatalogsHeader extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Bhupin's Shop".text.xl3.bold.color(MyTheme.darkBluishColor).make(),
              "Products for You".text.xl2.make(),
              
            ],
          );
      
 
  }
}

class CatalogsList  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogsModel.products!.length ,
      itemBuilder: (context, index){
        final catalog = CatalogsModel.products![index];
        return CatalogItem( catalog : catalog);
      }
      
    );
  }
}

class CatalogItem extends StatelessWidget {
 
 final Item catalog;

  const CatalogItem ({ Key? key, required this.catalog }) 
  : assert(catalog != null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogsImage(
            image: catalog.image,
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
                catalog.description.text.make(),

                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero ,

              
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyTheme.darkBluishColor,
                          ),
                          shape: MaterialStateProperty.all(StadiumBorder(),
                          )
                      ),
                      child: "Buy".text.make(),
                    )
                  ],
                ).pOnly(right: 8.0)
              ],
            ))
        ],
      )
    ).white.roundedLg.square(150).make().py16();
    
    
  }
}
class CatalogsImage extends StatelessWidget {
  final String image;

  const CatalogsImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
          ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
      
    
  }
}