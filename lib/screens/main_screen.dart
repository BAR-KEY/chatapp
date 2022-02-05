import 'package:chatapp/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.only(top: 90, left: 20),
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('image/red.jpg'),
                          fit: BoxFit.fill)),
                  child: SizedBox(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(
                              text: 'Welcome',
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white),
                              children: [
                            TextSpan(
                              text: ' to Yummy chat!',
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ])),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        'Signup continue',
                        style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
                )),
            Positioned(
              top: 180,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 280,
                width: MediaQuery.of(context).size.width - 40,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5)
                    ]),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Palette.textColor1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.orange,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'SIGNUP',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Palette.textColor1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.orange,
                          )
                        ],
                      )
                    ],
                  )
                ]),
              ),
            )
          ],
        ));
  }
}
