// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison, prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: "Add to cart".text.make(),
              ).wh(130, 50),
            ],
          ).p32()
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h20(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.theme.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text
                        .textStyle(context.captionStyle!)
                        .xl
                        .make(),
                    10.heightBox,
                    "Eos ut elitr sit sit dolore sadipscing amet elitr justo. Diam aliquyam lorem ea invidunt. Lorem sea eirmod et sit amet ea eos. Et justo dolor justo sit kasd lorem.."
                        .text
                        .textStyle(context.captionStyle!)
                        .make()
                        .p2()
                  ],
                ).py24(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
