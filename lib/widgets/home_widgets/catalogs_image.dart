import 'package:flutter/cupertino.dart';
import 'package:hello_world/widgets/themes.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';

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