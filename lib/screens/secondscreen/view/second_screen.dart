import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loginui/screens/homescreen/view/Shared.dart';

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
              top: 320,
              child: Column(
                children: [
                  Text(
                    "You'r Welcome!!",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  FloatingActionButton.extended(
                    backgroundColor: Color(0XFFE69023),
                    onPressed: () {
                      Shr shr=Shr();
                      shr.clearshr();
                      Navigator.pushReplacementNamed(context, 'home');
                    },
                    label: Text('Log Out'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
