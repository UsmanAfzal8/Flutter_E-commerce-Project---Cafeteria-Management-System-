import 'package:flutter/material.dart';

import 'cartModel.dart';

class cartWedget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Expanded(
            child: _cartItem(),
          ),
          Divider(),
          _cartTotal(),
        ],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = cartModel();
    return SizedBox(
        height: 150,
        child: Column(
          children: [
            Text(
              "Total",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  _cart.totalPrice.toString(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      (SnackBar(
                        content: Text("Buying not support yet!"),
                      )),
                    );
                  },
                  child: Text("BUY"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).buttonColor),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class _cartItem extends StatefulWidget {
  @override
  __cartItemState createState() => __cartItemState();
}

class __cartItemState extends State<_cartItem> {
  @override
  Widget build(BuildContext context) {
    final _cart = cartModel();
    return ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
              title: Text(_cart.items[index].name),
            ));
  }
}
