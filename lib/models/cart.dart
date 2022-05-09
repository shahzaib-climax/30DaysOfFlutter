import 'package:test_flutter/core/store.dart';
import 'package:test_flutter/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cartModel._itemsIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store?.cartModel._itemsIds.remove(item.id);
  }
}
