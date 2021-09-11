import 'package:flutter/material.dart';
import 'package:hello_world/models/catalogs.dart';
import 'package:hello_world/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class  HomeDetailsPage extends StatelessWidget {
  
final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog}) : assert (catalog != null),
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent),
      
      
      backgroundColor: Colors.white,
      bottomNavigationBar:  Container(
        color: MyTheme.creamColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl3.red700.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyTheme.darkBluishColor,
                        ),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Add to cart".text.xl.make(),
                  ).wh(125, 50)
                ],
              ).p32(),
              
      ),    
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),

              ) .h32(context),
              Expanded(
                child: VxArc(
                  height: 20.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                child: Container(
                  color: MyTheme.creamColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                       catalog.name.text.xl3.color(
                         MyTheme.darkBluishColor
                         ).bold.make(),
                      catalog.description.text.make(),
                       10.heightBox,
                       "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of lettersas opposed to using 'Content here, for your use."
                       .text.make()

                       .p16()
                  
                      ],
                    ).py64(),
                  ),
                ),
              ))
          ],
        ),
      ),
    );
  }
}