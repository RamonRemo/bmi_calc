import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final CalculatorBrain bmi;

  const ResultsPage({Key key, this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.bottomLeft,
                child: Text("YOUR RESULT", style: kLabelTextStyle2)),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      bmi.getResult().toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle4,
                    ),
                    Text(
                      bmi.calculateBMI(),
                      style: kLabelTextStyle5,
                    ),
                    Text(
                      bmi.getDescription().toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              text: "RE-CALCULATE",
              function: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
