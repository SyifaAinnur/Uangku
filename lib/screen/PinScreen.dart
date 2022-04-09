// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:uangku/screen/home_screen.dart';
import 'package:uangku/theme.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff45B8F0),
                    Color(0xff2E36A3),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset('assets/img_logo.png', width: 120),
                        SizedBox(height: 30),
                        Text(
                          'Enter your PIN',
                          style: whiteTextStyle.copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: edge),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _textFieldOTP(first: true, last: false),
                                    SizedBox(width: 5),
                                    _textFieldOTP(first: false, last: false),
                                    SizedBox(width: 5),
                                    _textFieldOTP(first: false, last: false),
                                    SizedBox(width: 5),
                                    _textFieldOTP(first: false, last: false),
                                    SizedBox(width: 5),
                                    _textFieldOTP(first: false, last: false),
                                    SizedBox(width: 5),
                                    _textFieldOTP(first: false, last: false),
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: 60,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                          },
                          child: Text('Forgot you PIN?',
                              style: whiteTextStyle.copyWith(fontSize: 14),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  )
                ],
              )
      )
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 70,
      width: 50,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
