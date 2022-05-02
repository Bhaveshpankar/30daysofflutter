import 'package:flutter_application_1/models/catalog.dart';

mixin CartModel {
// catalog field
  CatalogModel? _catalog;

// collection of ids store ids of each item
  final List<int> _itemIds = [];

// get catalog
  CatalogModel? catalog() => _catalog;

  set Catalog(CartModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog as CatalogModel?;
  }

  // get items in the cart
  List<Item> get items => _itemIds.map((id) => 
  _catalog!.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => 
      total + current.price);

  // add item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
