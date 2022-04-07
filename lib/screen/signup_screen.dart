// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uangku/screen/verification_screen.dart';
import 'package:uangku/theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xff45B8F0),
                  Color(0xff2E36A3),
                ])),
            child: Image.asset(
              'assets/image1.png',
              width: MediaQuery.of(context).size.width,
              height: 450,
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: whiteColor),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Sign Up',
                      style: regularTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Choose your country code and\nenter your phone number',
                      style: regulersoftTextStyle.copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: IntlPhoneField(
                        decoration: InputDecoration(labelText: 'Phone Number'),
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        onCountryChanged: (country) {
                          print('Country code changed to: ' + country.name);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 335,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerificationScreen()));
                        },
                        color: blueColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Text('Send Verification Code',
                            style:
                                regularwhiteTextStyle.copyWith(fontSize: 16)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
