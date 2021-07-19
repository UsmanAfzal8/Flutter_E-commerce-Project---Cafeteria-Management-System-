import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/catalog.dart';
import 'package:project2/clipping/clip.dart';
import '../cartadded.dart';

class HomeExtend extends StatelessWidget {
  final item catalog;

  const HomeExtend({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cafeteria",
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        backgroundColor: Theme.of(context).canvasColor,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.all(32.0),
        children: [
          Text(
            "RS: " + catalog.price.toString(),
            style: GoogleFonts.bebasNeue(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 50),
            child: cartList(catalog: catalog),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            ClipPath(
              clipper: ClippingClass(),
              child: Container(
                color: Theme.of(context).canvasColor,
                child: Hero(
                    tag: Key(catalog.id), child: Image.asset(catalog.imageurl)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).cardColor,
                child: Column(textBaseline: TextBaseline.alphabetic, children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Padding(padding: EdgeInsets.only(top:   8.0),),
                  Text(
                    catalog.dec,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "Fast food is food from a restaurant (sit-down, take-out, or delivery) that is quick, convenient, and usually cheap. Fast food is usually higher in fat, calories, cholesterol, and sodium in comparison to homemade meals."),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
