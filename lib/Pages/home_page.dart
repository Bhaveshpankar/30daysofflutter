// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable
// ignore_for_file: unused_import, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import 'package:flutter_application_1/widgets/theme.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
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
                    CatalogHeader(),
                    if (CatalogModel.items != null &&
                        CatalogModel.items!.isNotEmpty)
                      CatalogList().py32().expand()
                    else
                     CircularProgressIndicator().centered().py16().expand(),
                      
                  ],
                ))));
  }
}





