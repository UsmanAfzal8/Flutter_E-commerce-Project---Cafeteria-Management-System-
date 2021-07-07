import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class animated extends StatefulWidget {
  @override
  _animatedState createState() => _animatedState();
}

class _animatedState extends State<animated> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: TextLiquidFill(
        text: 'WELCOME',
        waveColor: Colors.blueAccent,
        //boxBackgroundColor: Colors.redAccent,
        textStyle: TextStyle(
          fontSize: 80.0,
          fontWeight: FontWeight.bold,
        ),
        boxHeight: 300.0,
      ),
    );
  }
}