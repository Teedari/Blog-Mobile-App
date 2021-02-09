import 'dart:async';

import 'package:blog_app/widgets/button_primary_outline.dart';

import '../widgets/button_primary.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String intro = 'Publish Your '
      '\nPassion in Own Way \n'
      'It\'s '
      'Free';

  String text = "";

  textAppend() {
    int i = 0;
    Timer.periodic(
      Duration(milliseconds: 200),
      (t) => {
        if (i >= intro.length)
          {
            t.cancel(),
            // i = 0,
            // text = ""
          }
        else
          {
            setState(() {
              text += intro[i];
            }),
            print(intro[i]),
            i++
          }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    textAppend();
  }

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Text('TEE BLOG',
                    style: TextStyle(
                        fontFamily: 'Hanalei',
                        fontSize: 50,
                        letterSpacing: 5,
                        decoration: TextDecoration.underline)),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                    Text(
                      // 'Publish Your \nPassion in Own Way \nIt\'s Free',
                      text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        ButtonPrimary(
                          onPressed: null,
                          label: 'Register',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ButtonPrimaryOutline(
                          onPressed: null,
                          label: 'Login',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(),
                          ),
                          child: Icon(Icons.call),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Continue with ',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: 'Phone No.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ]),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
