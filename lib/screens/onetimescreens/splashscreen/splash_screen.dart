import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loginui/screens/homescreen/view/Shared.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    checklogin();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: FlutterLogo(size: 80),
        ),
      ),
    );
  }

  Future<void> checklogin() async {
    Shr shr = Shr();
    Map m1 = await shr.readShr();

    if (m1['isLogin'] == true) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, 'second'),
      );
    } else {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, 'skip'),
      );
    }
  }

}
