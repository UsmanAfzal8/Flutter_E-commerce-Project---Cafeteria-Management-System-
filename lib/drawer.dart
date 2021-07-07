import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl="assets/usman.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
              accountName: Text("Usman Afzal"),
              accountEmail: Text("usmanafzal854@gmail.com"),
                //currentAccountPicture: Image.asset('assets/usman.jpg'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(imageurl),
                ) ,

            ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                color: Colors.white,
              ),

               title: Text("Home",
                 textScaleFactor: 1.5,
                 style: GoogleFonts.staatliches(
                 color: Colors.white,

               ),
               ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,
              ),

              title: Text("Profile",
                textScaleFactor: 1.5,
                style: GoogleFonts.staatliches(
                  color: Colors.white,

                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                color: Colors.white,
              ),

              title: Text("Mail",
                textScaleFactor: 1.5,
                style: GoogleFonts.staatliches(
                  color: Colors.white,

                ),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.power,
                color: Colors.white,
              ),
onTap: (){
                Navigator.popAndPushNamed(context, '/');
},
              title: Text("logout",
                textScaleFactor: 1.5,
                style: GoogleFonts.staatliches(
                  color: Colors.white,

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}