// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:uangku/screen/signup_screen.dart';
import 'package:uangku/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 600),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    width: 335,
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      color: redColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Continue',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
