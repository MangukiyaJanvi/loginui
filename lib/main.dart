import 'package:flutter/material.dart';
import 'package:loginui/screens/homescreen/provider/home_provider.dart';
import 'package:loginui/screens/homescreen/view/home_screen.dart';
import 'package:loginui/screens/homescreen/view/signup_screen.dart';
import 'package:loginui/screens/onetimescreens/skipscreen/view/skip_screen.dart';
import 'package:loginui/screens/secondscreen/view/second_screen.dart';
import 'package:provider/provider.dart';

import 'screens/onetimescreens/splashscreen/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          'skip': (context) => SkipScreen(),
          'home': (context) => HomeScreen(),
          'signup': (context) => SignupScreen(),
          'second': (context) => SecondScreen(),
        },
      ),
    ),
  );
}
