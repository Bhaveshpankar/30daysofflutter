import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  static var items;

  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}