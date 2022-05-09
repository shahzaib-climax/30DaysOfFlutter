import 'package:test_flutter/models/cart.dart';
import 'package:test_flutter/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cartModel;

  MyStore() {
    catalog = CatalogModel();
    cartModel = CartModel();
    cartModel.catalog = catalog;
  }
}
