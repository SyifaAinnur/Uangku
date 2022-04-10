import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String imgurl;
  const CardItem({ required this.imgurl  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('$imgurl') ,
    );
  }
}