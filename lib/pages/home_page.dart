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
          child: (CatalogsModel.products!= null && CatalogsModel.products!.isNotEmpty)
          ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 17,
              crossAxisSpacing: 16
              ), 
            itemBuilder: (context, index){
              final Item = CatalogsModel.products![index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: GridTile(
                  header: Container(
                    child: Text(
                      Item.name,
                      style: TextStyle(color: Colors.white),
    
                      ),
                     
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    ),
                 
                  child: Image.network(
                    Item.image,
                    
                    
                    ),
                    footer: Container(
                    child: Text(
                      Item.price.toString(),
                      style: TextStyle(color: Colors.white),
    
                      ),
                     
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                    ),
                    ),
                    
                    )
                    );
            } ,
            itemCount: CatalogsModel.products!.length ,
          
          
          
          )
           
      
            : Center(
              child: CircularProgressIndicator(),

            ),

        ),

        drawer: MyDraw(),
    );
      
  
  }
}