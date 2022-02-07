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
                          text: TextSpan(
                              text: 'Welcome',
                              style: const TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white),
                              children: [
                            TextSpan(
                              text:
                                  isSignupScreen ? ' to Yummy chat!' : ' back',
                              style: const TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ])),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        isSignupScreen
                            ? 'Signup continue'
                            : 'Sigin to continue',
                        style: const TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
                )),
            //배경
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: 180,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                padding: const EdgeInsets.all(20),
                height: isSignupScreen ? 280 : 240,
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
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  if (isSignupScreen == false)
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Form(
                          child: Column(
                        children: [
                          Textfrom(
                            hintText: 'email',
                            icon: Icons.mail,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Textfrom(
                            hintText: 'password',
                            icon: Icons.lock,
                          ),
                        ],
                      )),
                    ),
                  if (isSignupScreen == true)
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Form(
                          child: Column(
                        children: [
                          Textfrom(
                            hintText: 'User name',
                            icon: Icons.account_circle,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Textfrom(
                            hintText: 'email',
                            icon: Icons.mail,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Textfrom(
                            hintText: 'password',
                            icon: Icons.lock,
                          ),
                        ],
                      )),
                    )
                ]),
              ),
            ),
            //텍스트 폼 필드
            AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                top: isSignupScreen ? 430 : 390,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.orange, Colors.red],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 1))
                          ]),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                )),
            // 전송버튼
            Positioned(
                top: MediaQuery.of(context).size.height - 125,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Text(isSignupScreen ? 'or Signup with' : 'or Siginin with'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: const Size(155, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Palette.googleColor),
                        icon: const Icon(Icons.add),
                        label: const Text('Google'))
                  ],
                ))
            //구글 로그인
          ],
        ));
  }
}

// ignore: must_be_immutable
class Textfrom extends StatelessWidget {
  Textfrom({Key? key, this.hintText, this.icon}) : super(key: key);
  dynamic hintText, icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.textColor1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(35))),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: Palette.textColor1),
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.textColor1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(35)))),
    );
  }
}
