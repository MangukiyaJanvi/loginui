import 'package:flutter/material.dart';

class SkipScreen extends StatefulWidget {
  const SkipScreen({Key? key}) : super(key: key);

  @override
  State<SkipScreen> createState() => _SkipScreenState();
}

class _SkipScreenState extends State<SkipScreen> {
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
              left: 100,
              child: Column(
                children: [
                  Text('Hello welcome to the app !!',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  FloatingActionButton.extended(
                    backgroundColor: Color(0XFFE69023),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'home');
                    },
                    label: Text('Skip'),
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
