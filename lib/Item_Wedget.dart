import 'package:flutter/material.dart';
import 'package:project2/catalog.dart';

class itemWedget extends StatelessWidget {
  @override
  final item Item;

  const itemWedget({Key? key, required this.Item})
      : assert(Item != null),
        super(key: key);
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(Item.imageurl),
        title: Text(Item.name),
        subtitle: Text(Item.dec),
        trailing: Text("\$" + Item.price.toString()),
      ),
    );
  }
}
