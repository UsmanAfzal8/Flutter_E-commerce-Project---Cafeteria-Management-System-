class Model {
  static final CarModel = Model._init();
  Model._init();
  factory Model() => CarModel;
  static List<item> product = [];
  item getById(String id) =>
      product.firstWhere((element) => element.id == id, orElse: null);
  item getByPosition(int pos) => product[pos];
}

class item {
  final String id;
  final String name;
  final String dec;
  final num price;
  final String imageurl;

  item(
      {required this.id,
      required this.name,
      required this.dec,
      required this.price,
      required this.imageurl});
  factory item.fromMap(Map<String, dynamic> map) {
    return item(
      id: map["id"],
      name: map["name"],
      dec: map["dec"],
      price: map["price"],
      imageurl: map["imageurl"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "dec": dec,
        "price": price,
        "imageurl": imageurl,
      };
}
