import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name = '';
  bool pres = false;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        pres = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, '/home_page');
      setState(() {
        pres = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/login.png',
                height: 100.0,
                width: 100.0,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter User Name',
                        labelText: 'User Name',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter User Name";
                        } else if (value.toUpperCase() != 'USMAN')
                          return "User name not correct";
                        else
                          return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter password Name";
                        } else if (value.length < 6)
                          return "Enter password longer then 6 digit";
                        else
                          return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => movetohome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 30,
                  width: (pres ? 50 : 100),
                  decoration: BoxDecoration(
                    color:
                        (pres ? Colors.green : Theme.of(context).buttonColor),
                    borderRadius: BorderRadius.circular((pres ? 50 : 5)),
                  ),
                  alignment: Alignment.center,
                  child: pres
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Login',
                          style: GoogleFonts.aladin(
                            textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                ),
              ),

              /*ElevatedButton(
             onPressed: (){
               Navigator.pushNamed(context,'/home_page');
             },
             child: Text('login',style: TextStyle(
               fontSize: 25,
             ),),
             style: TextButton.styleFrom(minimumSize: Size(100, 30)),
           ),*/
            ],
          ),
        ),
      ),
    );
  }
}
