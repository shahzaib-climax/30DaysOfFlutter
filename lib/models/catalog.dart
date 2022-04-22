class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

class CatalogModel {
  static final items = [
    Item(id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image : "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MHL83?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1601149134000"
    )
  ];
}
