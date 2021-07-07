import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../catalog.dart';
import '../theme.dart';
import 'HomeExtended_Page.dart';

class modelLlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Model.product.length,
        itemBuilder: (context, index) {
          final catalog = Model.product[index];
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeExtend(catalog: catalog),
                    ),
                  ),
              child: catlogitem(catalog: catalog));
        });
  }
}

class catlogitem extends StatelessWidget {
  @override
  final item catalog;

  const catlogitem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Theme.of(context).canvasColor,
        elevation: 0,
        child: Row(
          children: [
            Hero(
                tag: Key(catalog.id),
                child: catalogimage(image: catalog.imageurl)),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  catalog.name,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                /*SizedBox(
                     height: 10 ,
                   ),*/
                //Padding(padding: EdgeInsets.only(top:   8.0),),
                Text(
                  catalog.dec,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 10,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    Text(
                      "RS: " + catalog.price.toString(),
                      style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).buttonColor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        ),
                      ),
                      child: Text("Buy"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class catalogimage extends StatelessWidget {
  final String image;

  const catalogimage({Key? key, required this.image})
      : assert(image != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: new Image.asset(image),
    );
  }
}
