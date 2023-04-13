import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loginui/screens/homescreen/view/Shared.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController txtemail=TextEditingController();
  TextEditingController txtpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              left: -180,
              top: -60,
              child: Transform.rotate(
                angle: -pi / 5,
                child: Container(
                  height: 210,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color(0XFFE69023),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 247,bottom: 10,left: 10,right: 10),
              child: ListView(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                  Text(
                    'Back!',
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: txtemail,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Color(0XFFE69023),
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person,
                        color: Color(0XFFE69023),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color(0XFFE69023),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFFE69023),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFFE69023),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtpassword,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.vpn_key,
                        color: Colors.white,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FORGET PASSWORD?',
                        style: TextStyle(
                          color: Color(0XFFE69023),
                        ),
                      ),
                      FloatingActionButton.extended(
                        backgroundColor: Color(0XFFE69023),
                        onPressed: () {
                          var email=txtemail.text;
                          var password=txtpassword.text;
                          Shr shr=Shr();
                          shr.createShr(email, password,false);
                          Navigator.pop(context);
                        },
                        label: Text('Sign Up'),
                      ),
                    ],
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
