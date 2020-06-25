import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  final text;
  final icon;

  const ColumnWidget({this.text,this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80,),
        SizedBox(height: 15),
        Text(
          text,
          style: kLabelTextStyle,
        ),
        
      ],
    );
  }
}