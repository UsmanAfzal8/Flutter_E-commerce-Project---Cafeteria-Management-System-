import 'package:flutter/material.dart';

import '../theme.dart';

class header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cafeteria",
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.w800,
            fontSize: 50,
          ),
        ),
        Text(
          "Products ",
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
