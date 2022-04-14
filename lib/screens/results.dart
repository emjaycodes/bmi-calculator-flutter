import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/component/buttton_button.dart';

class ResultsPage extends StatelessWidget {
  // const ResultsPage({Key? key}) : super(key: key);

  ResultsPage({@ required this.bmiResult, @required this.interpretation, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

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
              alignment: Alignment.bottomLeft,
              child: Text('YOUR RESULT',
                style: kTitleTextStyle,
              ),

              padding: EdgeInsets.only(left: 50),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusabaleCard(
                  colour: kcardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: KBMITextStyle,
                    ),
                    Text(interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',
            onTap: (){
            Navigator.pop(context);
            },
          )
        ],
      ),

    );
  }
}
