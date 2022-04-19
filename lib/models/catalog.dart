// ignore_for_file: camel_case_types

class item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image}) {
    throw UnimplementedError();
  }

  final product = [
    item(
        id: "codepur001",
        name: "iphone 12 Pro",
        desc: "apple iphone 12th generator",
        price: 999,
        color: "#35505a",
        image: "https://m.media-amazon.com/images/I/71umuN8XVeL.jpg")
  ];
}
