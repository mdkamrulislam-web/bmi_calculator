import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.resultFeedback});

  final String? bmiResult;
  final String? resultText;
  final String? resultFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your BMI Result',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toString().toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult.toString(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      resultFeedback.toString(),
                      textAlign: TextAlign.center,
                      style: kBMIFeedback,
                    ),
                  ],
                ),
              ),
            ),
            CalculateButton(
              buttonName: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
