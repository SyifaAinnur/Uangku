// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:uangku/screen/PinScreen.dart';
import 'package:uangku/theme.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            ListView(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image3.png',
                        width: 200,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Personal Information',
                          style: regularTextStyle.copyWith(fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Personal Information is used for\n registration and validating Uangku',
                        style: regularTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Full Name', hintText: "syifa A.M"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Address',
                                hintText: "Pati, Jawa tengah"),
                            keyboardType: TextInputType.text,
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText:'Date of Birth',
                                hintText: "21 / 04 / 2000",suffixIcon: Icon(Icons.calendar_today)
                                ),
                            keyboardType: TextInputType.text,
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Gender',
                                hintText: "Male",
                                suffixIcon: Icon(Icons.keyboard_arrow_down)
                                ),
                            keyboardType: TextInputType.text,
                          )
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 335,
                          height: 60,
                          child: RaisedButton(onPressed: () {
                            Navigator.push(context,MaterialPageRoute( builder: (context) => PinScreen()));
                          },
                          color: blueColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Text('Continue',style: regularwhiteTextStyle.copyWith(fontSize: 16),),
                          ),
                          ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
