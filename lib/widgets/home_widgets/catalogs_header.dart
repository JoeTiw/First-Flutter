import 'package:flutter/cupertino.dart';
import 'package:hello_world/widgets/themes.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

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