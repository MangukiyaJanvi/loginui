import 'package:flutter/material.dart';
import 'package:loginui/screens/homescreen/view/Shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              left: -100,
              top: -250,
              child: Container(
                height: 450,
                width: 450,
                decoration: BoxDecoration(
                    color: Color(0XFFE69023), shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 240, right: 10, left: 10, bottom: 10),
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
                    style: TextStyle(color: Color(0XFFE69023)),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.person,
                          color: Color(0XFFE69023),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Color(0XFFE69023)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFFE69023),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFFE69023),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtpassword,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.vpn_key,
                          color: Colors.white,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'signup');
                        },
                        child: Text(
                          'Already Have a Account ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      FloatingActionButton.extended(
                        backgroundColor: Color(0XFFE69023),
                        onPressed: () async {
                          String userEmail = txtemail.text;
                          String userPassword = txtpassword.text;

                          Shr shr = Shr();
                          Map m1 = await shr.readShr();

                          if (userEmail == m1['e'] && userPassword == m1['p']) {
                            Navigator.pushNamed(context, 'second');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Invalid Input'),
                              ),
                            );
                          }
                        },
                        label: Text('Log In'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
