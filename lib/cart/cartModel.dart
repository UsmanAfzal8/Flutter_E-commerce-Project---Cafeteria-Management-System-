import 'package:project2/catalog.dart';

class cartModel {
  late Model _catalogmodel;
  final List<int> _itemIds = [];
  Model get catalogmodel => _catalogmodel;
  set catalogmodel(Model newmodel) {
    assert(newmodel != null);
    _catalogmodel = newmodel;
  }

  List<item> get items =>
      _itemIds.map((id) => _catalogmodel.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(item items) {
    _itemIds.add(items.id as int);
  }

  //remove item
  void remove(item items) {
    _itemIds.remove(items.id as int);
  }
}
