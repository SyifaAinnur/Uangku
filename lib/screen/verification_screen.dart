// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:uangku/theme.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image2.png',
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Verification',
                  style: regularTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Verify the handphone number by\nentering the verification code',
                  style: regulersoftTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _textFieldOTP(first: true, last: false),
                            SizedBox(width: 10),
                            _textFieldOTP(first: false, last: false),
                            SizedBox(width: 10),
                            _textFieldOTP(first: false, last: false),
                            SizedBox(width: 10),
                            _textFieldOTP(first: false, last: true),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Didn’t recive verification code?',
                  style: regulersoftTextStyle.copyWith(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => PersonalScreen()));
                  },
                  child: Text(
                    'Resend Code',
                    style: blueTextStyle.copyWith(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 75,
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
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(20)),
                
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.lightBlue),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
