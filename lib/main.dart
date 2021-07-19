import 'package:flutter/material.dart';
import 'package:project2/theme.dart';
import 'LoginPage.dart';
import 'cart/cartHome.dart';
import 'home/HomeExtended_Page.dart';
import 'home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.Darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page',
      routes: {
        '/': (context) => LoginPage(),
        '/home_page': (context) => HomePage(),
        '/cart': (context) => cartWedget(),
      },
    );
  }
}
