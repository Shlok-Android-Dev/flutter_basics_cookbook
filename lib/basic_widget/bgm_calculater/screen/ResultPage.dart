import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/basic_widget/bgm_calculater/component/reusable_card.dart';
import '../component/ButtomButton.dart';
import '../BmiCalculater.dart';
import '../constants.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({
    required this.bmiResult,
    required this.resultText,
    required this.interperetration,
  });

  final String bmiResult;
  final String resultText;
  final String interperetration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
            child: ResuableCard(
              colorbg: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kResultTextStyle),
                  Text(
                    bmiResult.toUpperCase(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    interperetration,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: BottomButtom(
                onTap: () {
                  Navigator.pop(context);
                },
                buttomTitle: 'RE-CALCULATE'),
          )
        ],
      ),
    );
  }
}
