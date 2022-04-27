import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBlueColor),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(),
                ),
              ),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).p16(),
            ).h32(context),
            VxArc(
              height: 30.0,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(MyTheme.darkBlueColor)
                        .bold
                        .make(),
                    catalog.desc.text.caption(context).xl.make(),
                  ],
                ).py64(),
              ),
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
            ).expand()
          ],
        ),
      ),
    );
  }
}
