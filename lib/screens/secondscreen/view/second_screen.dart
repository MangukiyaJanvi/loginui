import 'dart:math';

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              left: -150,
              top: -180,
              child: Container(
                height: 450,
                width: 450,
                decoration: BoxDecoration(
                    color: Color(0XFFE69023), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 100,
              top: 450,
              child: Container(
                height: 450,
                width: 450,
                decoration: BoxDecoration(
                    color: Color(0XFFE69023), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 345,
              child: Transform.rotate(
                angle: -pi/5,
                child: Text(
                  "You'r Welcome!!!!",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
            Positioned(
              top: 449,
              left: 57,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0XFFE69023), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 222,
              top: 330,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0XFFE69023), shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
