// ignore_for_file: camel_case_types

import 'package:flutter/foundation.dart';

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone 12 Pro",
        desc: "apple iphone 12th generator",
        price: 999,
        color: "#35505a",
        image: "https://m.media-amazon.com/images/I/71umuN8XVeL.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
