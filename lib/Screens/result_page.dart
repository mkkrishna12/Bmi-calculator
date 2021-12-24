import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/icon_details.dart';
import '../components/Bottom_Button.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  // Calculator calculator = Calculator({this.calculator});
  ResultsPage({this.result, this.interpretation, this.BMI});
  // final Calculator calculator;
  final String result;
  final String interpretation;
  final String BMI;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResusableWidgett(
              colors: kActiveColor,
              Child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "$result",
                      style: resultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      BMI,
                      style: kBmiTextStyle,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: "Re-Calculate"),
        ],
      ),
    );
  }
}
