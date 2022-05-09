import 'package:test_flutter/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;

  //selected cart items
  final List<int> _itemsIds = [];

  CatalogModel get catlog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items => _itemsIds.map((e) => _catalog.getById(e)).toList();

  num get totalPrice => items.fold(
      0, (previousValue, currentItem) => previousValue + currentItem.price);

  void add(Item item) {
    _itemsIds.add(item.id);
  }

  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}
