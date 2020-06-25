import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  final String text;
  final Function function;

  const BottomButton({
    Key key,
    this.text,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
          text,
          style: kLabelTextStyle3,
        )),
      ),
    );
  }
}