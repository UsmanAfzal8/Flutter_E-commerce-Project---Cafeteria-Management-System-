import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart/cartModel.dart';
import 'catalog.dart';

class cartList extends StatefulWidget {
  final item catalog;
  const cartList({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  _cartListState createState() => _cartListState();
}

class _cartListState extends State<cartList> {
  @override
  final _cartCatalog = cartModel();
  Widget build(BuildContext context) {
    bool change = _cartCatalog.items.contains(widget.catalog) ? true : false;
    return ElevatedButton(
      onPressed: () {
        if (!change) {
          change = !change;
          final _modelcatalog = Model();
          _cartCatalog.catalogmodel = _modelcatalog;
          _cartCatalog.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).buttonColor),
        shape: MaterialStateProperty.all(
          StadiumBorder(),
        ),
      ),
      child: change ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
