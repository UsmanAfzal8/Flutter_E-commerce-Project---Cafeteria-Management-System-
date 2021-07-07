import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/catalog.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:project2/home/header.dart';
import 'package:project2/theme.dart';

import 'modelList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson = await rootBundle.loadString("assets/cafe.json");
    final decode = jsonDecode(catalogjson);
    var productdata = decode["products"];
    Model.product = List.from(productdata)
        .map<item>((iteem) => item.fromMap(iteem))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/cart'),
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).buttonColor,
      ),
      backgroundColor: Theme.of(context).cardColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              SizedBox(
                height: 10,
              ),
              (Model.product != null && Model.product.isNotEmpty)
                  ? Expanded(child: modelLlist())
                  : Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
