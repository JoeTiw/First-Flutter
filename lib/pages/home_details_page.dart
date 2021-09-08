import 'package:flutter/material.dart';
import 'package:hello_world/models/catalogs.dart';
import 'package:velocity_x/velocity_x.dart';


class  HomeDetailsPage extends StatelessWidget {
  
final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog}) : assert (catalog != null),
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(catalog.image),
        ],
      ),
    );
  }
}